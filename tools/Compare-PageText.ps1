<#
.SYNOPSIS
    Compares ONLY the textual content of a course page (.md) with a version you provide.
.DESCRIPTION
    Workflow per entry of Modules.md (run from the 'course' folder):

        # copy your version to the clipboard first:
        ..\tools\Compare-PageText.ps1 -Page '.\Pages\Teachers Overview.md' -Clipboard
        # or point at a file containing your version:
        ..\tools\Compare-PageText.ps1 -Page '.\Pages\Teachers Overview.md' -ContentFile 'C:\tmp\paste.txt'
        # or pass literal text:
        ..\tools\Compare-PageText.ps1 -Page '.\Pages\Teachers Overview.md' -ContentText 'This page ...'

    Only TEXT matters. Before comparing, BOTH sides are stripped of:
        frontmatter, Markdown markup (headings/lists/quotes/emphasis/code),
        [[links]] and [label](url) (the visible label is kept),
        HTML tags, line wrapping, indentation, multiple spaces,
        non-breaking spaces, zero-width characters, soft hyphens,
        typographic quotes, en/em dashes and the ellipsis.
    Letter case and punctuation glued to a word are ignored as well, so
    'word.' and 'Word' are treated as the same word.

    The two texts are compared as a WORD TOKEN SEQUENCE, so how the text is
    wrapped over lines never influences the outcome. The report lists only the
    real textual differences (with surrounding context).

    The script does NOT call 'exit', so running it from a console never closes
    the window. For automation, test whether the output contains
    'TEXTUAL CONTENT MATCHES'.
.PARAMETER Page
    Path to the course page (.md) to check.
.PARAMETER ContentFile
    Path to a file containing YOUR version of the page.
.PARAMETER ContentText
    YOUR version of the page as literal text.
.PARAMETER Clipboard
    Read YOUR version from the clipboard.
.PARAMETER Context
    Number of unchanged words shown around each difference (default 5).
.PARAMETER MaxWords
    Maximum number of words printed per difference block (default 20).
    Use -ShowAll to see the complete normalised text of both sides.
.PARAMETER IgnoreCase
    Ignore letter case (default true). Use -IgnoreCase:$false for a strict check.
.PARAMETER ShowAll
    Also print the normalised plain text of both sides.
.EXAMPLE
    ..\tools\Compare-PageText.ps1 -Page '.\Pages\Teachers Overview.md' -Clipboard
#>
[CmdletBinding(DefaultParameterSetName = 'File')]
param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$Page,

    [Parameter(ParameterSetName = 'File', Position = 1)]
    [string]$ContentFile,

    [Parameter(ParameterSetName = 'Text', Mandatory = $true)]
    [string]$ContentText,

    [Parameter(ParameterSetName = 'Clip', Mandatory = $true)]
    [switch]$Clipboard,

    [int]$Context = 5,
    [int]$MaxWords = 20,
    [bool]$IgnoreCase = $true,
    [switch]$ShowAll
)

$ErrorActionPreference = 'Stop'

# ------------------------------------------------------------- reading ----
# Course pages are UTF-8 (usually without BOM). Get-Content would fall back to
# the ANSI codepage and mangle non-breaking spaces, dashes and quotes, so read
# the bytes ourselves and honour a BOM when one is present.
function Read-TextFile {
    param([string]$Path)
    $full = (Resolve-Path -LiteralPath $Path).Path
    $bytes = [System.IO.File]::ReadAllBytes($full)
    if ($bytes.Length -ge 3 -and $bytes[0] -eq 0xEF -and $bytes[1] -eq 0xBB -and $bytes[2] -eq 0xBF) {
        return [System.Text.Encoding]::UTF8.GetString($bytes, 3, $bytes.Length - 3)
    }
    if ($bytes.Length -ge 2 -and $bytes[0] -eq 0xFF -and $bytes[1] -eq 0xFE) {
        return [System.Text.Encoding]::Unicode.GetString($bytes, 2, $bytes.Length - 2)
    }
    if ($bytes.Length -ge 2 -and $bytes[0] -eq 0xFE -and $bytes[1] -eq 0xFF) {
        return [System.Text.Encoding]::BigEndianUnicode.GetString($bytes, 2, $bytes.Length - 2)
    }
    return [System.Text.Encoding]::UTF8.GetString($bytes)
}

# ---------------------------------------------------------------- input ----
$provided = switch ($PSCmdlet.ParameterSetName) {
    'Text'  { $ContentText }
    'Clip'  { Get-Clipboard -Raw }
    default {
        if ($ContentFile) { Read-TextFile $ContentFile }
        else { throw 'Provide your version with -Clipboard, -ContentFile or -ContentText.' }
    }
}
if ([string]::IsNullOrWhiteSpace($provided)) { throw 'The provided content is empty.' }

$pagePath = (Resolve-Path -LiteralPath $Page).Path
$pageRaw = Read-TextFile $pagePath

# ------------------------------------------------------------ normalise ----
function ConvertTo-PlainText {
    param([string]$Text)
    $t = $Text

    # invisible characters
    $t = $t -replace '\uFEFF', ''
    $t = $t -replace '[\u200B-\u200D\u2060\u00AD]', ''
    $t = $t -replace ([char]0x00A0), ' '

    # YAML frontmatter (only at the very start)
    $t = $t -replace '(?s)\A\s*---\s*\r?\n.*?\r?\n---\s*\r?\n', ''

    # links -> visible label only
    $t = $t -replace '!?\[\[([^\]\|]+)\|([^\]]+)\]\]', '$2'
    $t = $t -replace '!?\[\[([^\]]+)\]\]', '$1'
    $t = $t -replace '!?\[([^\]]*)\]\([^)]*\)', '$1'

    # HTML tags
    $t = $t -replace '<[^>]+>', ' '

    # table separator rows / horizontal rules
    $t = $t -replace '(?m)^[ \t]*[|:\-]+[ \t]*$', ''

    # block-level Markdown markers
    $t = $t -replace '(?m)^[ \t]{0,3}>+[ \t]?', ''
    $t = $t -replace '(?m)^[ \t]{0,3}#{1,6}[ \t]*', ''
    $t = $t -replace '(?m)^[ \t]*([-*+]|\d+[.)])[ \t]+', ''
    $t = $t -replace '(?m)^[ \t]*\|[ \t]?', ''

    # inline emphasis / code markers
    $t = $t -replace '[*_~`]', ''

    # typography -> plain ASCII
    $t = $t -replace '[\u2018\u2019\u201A\u201B\u2032]', "'"
    $t = $t -replace '[\u201C\u201D\u201E\u201F\u2033]', '"'
    $t = $t -replace '[\u2010-\u2015\u2212]', '-'
    $t = $t -replace '\u2026', '...'

    # collapse ALL whitespace (removes line wrapping and indentation)
    ($t -replace '\s+', ' ').Trim()
}

# --------------------------------------------------------------- tokens ----
function Get-WordTokens {
    param([string]$Text)
    $i = 0
    foreach ($w in ($Text -split ' ')) {
        if ($w -eq '') { continue }
        $i++
        $key = $w -replace '^[^\p{L}\p{N}]+', '' -replace '[^\p{L}\p{N}]+$', ''
        if ($IgnoreCase) { $key = $key.ToLowerInvariant() }
        [pscustomobject]@{ N = $i; Text = $w; Key = $key }
    }
}

$pageText = ConvertTo-PlainText $pageRaw
$giveText = ConvertTo-PlainText $provided

$pageWords = @(Get-WordTokens $pageText)
$giveWords = @(Get-WordTokens $giveText)
$pageKeys  = [string[]]($pageWords | ForEach-Object { $_.Key })
$giveKeys  = [string[]]($giveWords | ForEach-Object { $_.Key })
$pCount    = $pageWords.Count
$gCount    = $giveWords.Count

# ---------------------------------------------------------------- diff ----
function Get-TextChanges {
    param([string[]]$A, [string[]]$B)

    $n = $A.Count; $m = $B.Count

    # fast path: trim the common prefix and suffix
    $pre = 0
    while ($pre -lt $n -and $pre -lt $m -and $A[$pre] -eq $B[$pre]) { $pre++ }
    $suf = 0
    while ($suf -lt ($n - $pre) -and $suf -lt ($m - $pre) -and $A[$n-1-$suf] -eq $B[$m-1-$suf]) { $suf++ }

    $ca = $n - $pre - $suf
    $cb = $m - $pre - $suf
    if ($ca -le 0 -and $cb -le 0) { return @() }

    $midA = if ($ca -gt 0) { $A[$pre..($pre + $ca - 1)] } else { @() }
    $midB = if ($cb -gt 0) { $B[$pre..($pre + $cb - 1)] } else { @() }

    # guard against a huge DP table (i.e. the whole document was rewritten)
    if ([long]$ca * [long]$cb -gt 250000) {
        return , ([pscustomobject]@{
                PageIdx = @()
                GiveIdx = @()
                Coarse  = $true
                Remove  = $ca
                Add     = $cb
                Pre     = $pre
            })
    }

    # longest common subsequence length table
    $lcs = New-Object 'int[,]' ($ca + 1), ($cb + 1)
    for ($i = $ca - 1; $i -ge 0; $i--) {
        for ($j = $cb - 1; $j -ge 0; $j--) {
            if ($midA[$i] -eq $midB[$j]) {
                $upleft = $lcs[($i + 1), ($j + 1)]
                $lcs[$i, $j] = $upleft + 1
            }
            else {
                $up = $lcs[($i + 1), $j]
                $left = $lcs[$i, ($j + 1)]
                if ($up -ge $left) { $lcs[$i, $j] = $up } else { $lcs[$i, $j] = $left }
            }
        }
    }

    # walk the table back into an operation list
    $ops = New-Object System.Collections.Generic.List[object]
    $i = 0
    $j = 0
    while ($i -lt $ca -and $j -lt $cb) {
        if ($midA[$i] -eq $midB[$j]) {
            $ops.Add([pscustomobject]@{ Op = '='; P = $i; G = $j })
            $i++
            $j++
        }
        else {
            $up = $lcs[($i + 1), $j]
            $left = $lcs[$i, ($j + 1)]
            if ($up -ge $left) {
                $ops.Add([pscustomobject]@{ Op = '-'; P = $i; G = -1 })
                $i++
            }
            else {
                $ops.Add([pscustomobject]@{ Op = '+'; P = -1; G = $j })
                $j++
            }
        }
    }
    while ($i -lt $ca) { $ops.Add([pscustomobject]@{ Op = '-'; P = $i; G = -1 }); $i++ }
    while ($j -lt $cb) { $ops.Add([pscustomobject]@{ Op = '+'; P = -1; G = $j }); $j++ }

    # group consecutive -/+ operations into single changes (indices made absolute)
    $changes = New-Object System.Collections.Generic.List[object]
    $curP    = New-Object System.Collections.Generic.List[int]
    $curG    = New-Object System.Collections.Generic.List[int]

    $flush = {
        if ($curP.Count -gt 0 -or $curG.Count -gt 0) {
            $changes.Add([pscustomobject]@{ PageIdx = @($curP); GiveIdx = @($curG); Coarse = $false })
            $curP.Clear(); $curG.Clear()
        }
    }

    foreach ($o in $ops) {
        if     ($o.Op -eq '=') { & $flush }
        elseif ($o.Op -eq '-') { $curP.Add($o.P + $pre) }
        else                   { $curG.Add($o.G + $pre) }
    }
    & $flush
    $changes.ToArray()
}

$changes = @(Get-TextChanges -A $pageKeys -B $giveKeys)

# -------------------------------------------------------------- report ----
function Get-WordRange {
    param($Words, [int]$First, [int]$Last, [int]$Max = 0)
    if ($Words.Count -eq 0) { return '' }
    $First = [Math]::Max(0, $First)
    $Last = [Math]::Min($Words.Count - 1, $Last)
    if ($First -gt $Last) { return '' }

    $count = $Last - $First + 1
    if ($Max -gt 0 -and $count -gt $Max) {
        $shown = (($First..($First + $Max - 1)) | ForEach-Object { $Words[$_].Text }) -join ' '
        return ($shown + (' ... (+{0} more word(s))' -f ($count - $Max)))
    }
    (($First..$Last) | ForEach-Object { $Words[$_].Text }) -join ' '
}

Write-Host ''
Write-Host ("Page     : {0}" -f $pagePath)
Write-Host ("Words    : page {0}  |  provided {1}" -f $pCount, $gCount)

if ($changes.Count -eq 0) {
    Write-Host "Verdict  : TEXTUAL CONTENT MATCHES" -ForegroundColor Green
    Write-Host "           (any remaining differences are markup / whitespace only)"
}
else {
    $removed = ($changes | ForEach-Object {
            if ($_.Coarse) { $_.Remove } else { @($_.PageIdx).Count }
        } | Measure-Object -Sum).Sum
    $added = ($changes | ForEach-Object {
            if ($_.Coarse) { $_.Add } else { @($_.GiveIdx).Count }
        } | Measure-Object -Sum).Sum

    Write-Host "Verdict  : TEXTUAL CONTENT DIFFERS" -ForegroundColor Yellow
    Write-Host ("           {0} difference(s): {1} word(s) only in page (-), {2} word(s) only in your version (+)" -f $changes.Count, $removed, $added)
    Write-Host ''

    $k = 0
    foreach ($c in $changes) {
        $k++
        Write-Host ("--- difference {0} ---" -f $k) -ForegroundColor Yellow

        if ($c.Coarse) {
            Write-Host ("  large rewrite: {0} page word(s) replaced by {1} provided word(s)" -f $c.Remove, $c.Add)
            Write-Host ("  from page word {0} / provided word {1}" -f ($c.Pre + 1), ($c.Pre + 1))

            $pBefore = Get-WordRange $pageWords ($c.Pre - $Context) ($c.Pre - 1)
            $pHead = Get-WordRange $pageWords $c.Pre ($c.Pre + $MaxWords - 1)
            $pAfter = Get-WordRange $pageWords ($c.Pre + $c.Remove) ($c.Pre + $c.Remove + $Context - 1)
            $gBefore = Get-WordRange $giveWords ($c.Pre - $Context) ($c.Pre - 1)
            $gHead = Get-WordRange $giveWords $c.Pre ($c.Pre + $MaxWords - 1)
            $gAfter = Get-WordRange $giveWords ($c.Pre + $c.Add) ($c.Pre + $c.Add + $Context - 1)

            Write-Host ("  page     : ...{0} [ {1} ... ] {2}..." -f $pBefore, $pHead, $pAfter)
            Write-Host ("  provided : ...{0} [ {1} ... ] {2}..." -f $gBefore, $gHead, $gAfter)
            Write-Host ''
            continue
        }

        $pIdx = @($c.PageIdx); $gIdx = @($c.GiveIdx)
        $pFirst = if ($pIdx.Count) { $pIdx[0] } else { 0 }
        $pLast = if ($pIdx.Count) { $pIdx[-1] } else { $pFirst - 1 }
        $gFirst = if ($gIdx.Count) { $gIdx[0] } else { 0 }
        $gLast = if ($gIdx.Count) { $gIdx[-1] } else { $gFirst - 1 }

        Write-Host ("  at page word {0} / provided word {1}" -f ($pFirst + 1), ($gFirst + 1))

        $pBlock = if ($pIdx.Count) { '- ' + (Get-WordRange $pageWords $pFirst $pLast $MaxWords) + ' -' } else { '(nothing in page)' }
        $gBlock = if ($gIdx.Count) { '+ ' + (Get-WordRange $giveWords $gFirst $gLast $MaxWords) + ' +' } else { '(nothing in your version)' }
        $pBefore = Get-WordRange $pageWords ($pFirst - $Context) ($pFirst - 1)
        $pAfter = Get-WordRange $pageWords ($pLast + 1) ($pLast + $Context)
        $gBefore = Get-WordRange $giveWords ($gFirst - $Context) ($gFirst - 1)
        $gAfter = Get-WordRange $giveWords ($gLast + 1) ($gLast + $Context)

        Write-Host ("  page     : ...{0} [ {1} ] {2}..." -f $pBefore, $pBlock, $pAfter)
        Write-Host ("  provided : ...{0} [ {1} ] {2}..." -f $gBefore, $gBlock, $gAfter)
        Write-Host ''
    }
}

if ($ShowAll) {
    Write-Host ''
    Write-Host '--- normalised page text ---' -ForegroundColor Cyan
    Write-Host $pageText
    Write-Host '--- normalised provided text ---' -ForegroundColor Cyan
    Write-Host $giveText
    Write-Host ''
}

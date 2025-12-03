---
tags:
  - a/Note
---
## Tables

### Basic Table

| Name  | Description |
| ----- | ----------- |
| Hello | Hi! #ix/foo |
| World | Hi!         |

### Table with Alignment

| A   |        B        |   C |
| :-- | :-------------: | --: |
| 10  | 20 #ix/foo/bar  |  30 |
| ABC | DEF #ix/bla/bla | GHI |
## Diagrams

TODO

### Markup

This is **bold**, _italic_ and *this* too!
We can ~~strikethrough~~ text
Or ==highlight== it. #ix/bla

## Links

### Wikilinks

- [[GI - Feedback and FeedPulse]] 
- [[GI - Feedback and FeedPulse|Label]] 
- [[GI - Feedback and FeedPulse#What to do with received feedback?|Label]]
- [[GI - Feedback and FeedPulse#What to do with received feedback?|Label]]
- [[GI - Feedback and FeedPulse#What to do with received feedback?|Label and ID section target]]
- [[GI - Group Challenges#^25ce58]] a link to a generated id
- [[feedpulse-logo.png]] link to media file
- [[feedpulse-logo.png|a logo]] link to media file with label


Versus regular links

- [GI - Group Challenges](Pages/GI - Group Challenges.md)

#### Includes

![[GI - Feedback and FeedPulse#What do we expect from you?]]

## Images


![[feedpulse-logo.png]] bare

![[feedpulse-logo.png|200]] size hint

## Footnotes

This is a footnote reference [^abc].

This is a line without a footnote.

[^abc]: This is the **footnote** itself.

## Lists


- foobar
  bla bla
	- sublist
		1. numbered 1.1
		2. numbered 1.2
			- bullet 1.2.1
			- bullet 1.2.2
	- other subitem
- foobar

### Task lists

Parser will return `<input type="checkbox" disabled/>` on which Saxon will barf.

- [ ] task item 1
- [ ] task item 2
- [ ] task item 3
	- [ ] nested task item 3.1
	- [x] nested task item 3.2 (completed)

## Rules

---

## Code

```
foo bar
baz
bla
```

```txt
foo bar
baz
bla
```

## Math

> Could use `LaTeX2MathMLExtension` to convert to MathML.
> Currently using `pymdownx.arithmatex`
> 

A formula: $E = mc^2$

$$ 
E = mc^2
$$

Inline

$p(x|y) = \frac{p(y|x)p(x)}{p(y)}$, \(p(x|y) = \frac{p(y|x)p(x)}{p(y)}\).

Block


$$
E(\mathbf{v}, \mathbf{h}) = -\sum_{i,j}w_{ij}v_i h_j - \sum_i b_i v_i - \sum_j c_j h_j
$$

Math blocks are not support

```math
E(\mathbf{v}, \mathbf{h}) = -\sum_{i,j}w_{ij}v_i h_j - \sum_i b_i v_i - \sum_j c_j h_j
```


## Tags

We use #a/b/c tags with separators (`/`) to indicate nested hierarchy (e.g. for index)

## Callouts

> [!note] title
> textline
> textline
> 
> -- attribution


> [!note]- title
> collapsed textline
> collapsed textline
> 
> bla bla

> [!note]
> this is callout text
> > this is nested callout text

## Python Markdown parser extensions

### Extra - Abbrev

> Not recognized in Obsidian


The HTML specification
is maintained by the W3C.

*[HTML]: Hyper Text Markup Language
*[W3C]:  World Wide Web Consortium

### Extra - Attribute Lists

> Not recognized in Obsidian


{: #someid .someclass somekey='some value' }

This is a paragraph.
{: #an_id .a_class }

### Extra - Definition Lists

> Not recognized in Obsidian


Apple
:   Pomaceous fruit of plants of the genus Malus in
    the family Rosaceae.

Orange
:   The fruit of an evergreen tree of the genus Citrus.

### Extra - Fenced Code Blocks

> OK

A paragraph before the code block.

```
a one-line code block
```

A paragraph after the code block.

~~~
a one-line code block
~~~

Attributes on fenced code blocks

``` { attributes go here }
a code block with attributes
```

Language

``` html
<p>HTML Document</p>
```

``` { .html }
<p>HTML Document</p>
```

Classes

``` { .html .foo .bar }
<p>HTML Document</p>
```

ID

``` { #example }
A linkable code block
```

``` { #example .lang .foo .bar }
A linkable code block
```

Key/Value Pairs

``` { .lang #example style="color: #333; background: #f8f8f8;" }
A code block with inline styles. Fancy!
```

Syntax Highlighting

``` { .lang linenos=true linenostart=42 hl_lines="43-44 50" title="An Example Code Block" }
A truncated code block...
```


### Extra - Footnotes

Footnotes have a name, a reference[^1], and a definition[^word].

[^1]: This is a footnote definition.
[^word]: A footnote with the name "word".


This is another (multi block reference[^2])


[^2]:
    The first paragraph of the definition.

    Paragraph two of the definition.

    > A blockquote with
    > multiple lines.

        a code block

    A final paragraph.


### Extra - Markdown in HTML

> Not very well supported in Obsidian


<div markdown="1">
This is a *Markdown* Paragraph.
</div>

<p markdown="1">
This is not a *Markdown* Paragraph.
</p>

<section markdown="block">
# A header.

A *Markdown* paragraph.

* A list item.
* A second list item.

</section>

<div markdown="span">
# *Not* a header
</div>

Nesting

<article id="my-article" markdown="1">
# Article Title

A Markdown paragraph.

<section id="section-1" markdown="1">
## Section 1 Title

<p>Custom raw **HTML** which gets ignored.</p>

</section>

<section id="section-2" markdown="1">
## Section 2 Title

<p markdown="1">**Markdown** content.</p>

</section>

</article>

### Legacy Attributes

> Not supported in Obsidian

A paragraph with the attribute defined {@class=foo}anywhere within.


### Sane lists

> Seems okay in Obsidian

A Paragraph.
- Not a list item.

1. Ordered list item.
* Not a separate list item.


1. Ordered item 1
2. Ordered item 2

* Unordered item 1
* Unordered item 2

4. Apples
5. Oranges
6. Pears

### Wiklinks

[[Bracketed]]


### Admonition

## Third party extensions

### MagicLink

#### Auto-Linking

> OK


Just paste links directly in the document like this: https://google.com.
- Or even an email address: fake.email@email.com.

### PyMdown

#### Tasklist

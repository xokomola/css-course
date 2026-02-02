---
source: Quality Assurance.docx
status: TODO
source-loc: 7. Core Skills - Complex Software Engineering
source-date: 2025-12-18T00:00:00
publish: true
exclude: false
section: Software Quality
type: Informational
---

### Why Software Security is an engineering job

Just like functional software quality, security cannot be "tested in" your application. In modern applications it is good to have some basic knowledge on how security can be focussed on during the software lifecycle.

It is not sufficient to limit your development to only security practices like, for example: _static code analysis, encrypting your data,_ or _pen testing._ Uncovering security issues should be part of your daily work. Finding it late in your development process will probably come with high maintenance costs. 
## How

A common method used is the security-by-design principle. It recommends that each phase of software development will take into account security related activities. The '[Security Engineering Portal Links to an external site.](https://www.microsoft.com/en-us/securityengineering)' of microsoft also recommend many activities that could be undertaken. Also, organizations like the Dutch '[_center of information security & privacy protection_ Links to an external site.](https://www.cip-overheid.nl/en/category/products/secure-software/)' (CIP) and [OWASP Links to an external site.](https://owasp.org/) provide numerous sources describing examples of activities, guidelines and best practices, that help you to set up your software development lifecycle with security in min.

All these sources that help with security-by-design have in common that they agree that software security is not only about technology, but also about the (development) processes you follow and people. Only paying attention to your code and tools will not lead to secure software applications.

Another commonality that they share in their approach during software development is:

1. 1. Perform security risk- and impact analysis
    2. Have, for each phase of your software development process, clearly defined which security related activities are obligatory.
    3. Have knowledge on most common mistakes and do not make them in your application. An example of this is reviewing your code for issues listed in the OWASP vulnerability top 10 (what you once did in semester 3).

**  
Agile Development**

It is good practice to make security requirements and checks part of your agile sprint lifecycle. Obligatory checks could for example be integrated into your definition-of-done or definition-for-release.

**Automation**

As with many other activities in your software lifecycle, like for example building and testing, try to automate as much as possible. This is also possible for security related activities.

### Security and Generative AI

Generative AI is growing rapidly and many companies are exploring how this new technology can have added value to their customers.  
As with any new technology, new possibilities also introduce new potential security risks. 

We are still learning what generative AI will practically mean on large scale, but there is already good awareness on potential security risks. Like the well known OWASP top 10 for web development, OWASP has also release a top 10 of risks for Generative AI.  
If you are exploring this new technology, it is good to be aware of common security culprits, like e.g. _prompt injection_.

[OWASP Top 10 for LLM & Generative AI Security Links to an external site.](https://genai.owasp.org/llm-top-10-2023-24/)

### Additional resources  (![ReferenceSource-icon.png](https://fhict.instructure.com/courses/15591/files/2525393/preview) reference sources)

- Book ["Security Monitoring", by Fry en Nystrom Links to an external site.](https://www.oreilly.com/library/view/security-monitoring/9780596157944/) (not obligatory, but very interesting)
- Book "[Practice of Network Security Monitoring, Understanding Incident Detection and Response Links to an external site.](https://nostarch.com/nsm)", by Richard Bejtlich, July 2013, 376 pp., ISBN-13: 978-1-59327-509-9 ![](data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz48IURPQ1RZUEUgc3ZnIFBVQkxJQyAiLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4iICJodHRwOi8vd3d3LnczLm9yZy9HcmFwaGljcy9TVkcvMS4xL0RURC9zdmcxMS5kdGQiPjxzdmcgdmVyc2lvbj0iMS4xIiBpZD0iRWJlbmVfMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgeD0iMHB4IiB5PSIwcHgiIHdpZHRoPSIxNnB4IiBoZWlnaHQ9IjE2cHgiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZW5hYmxlLWJhY2tncm91bmQ9Im5ldyAwIDAgMTYgMTYiIHhtbDpzcGFjZT0icHJlc2VydmUiPjxnPjxnPjxwYXRoIGZpbGw9IiNGRkZGRkYiIGQ9Ik04LjAwMSwxNS41QzMuODY0LDE1LjUsMC41LDEyLjEzNiwwLjUsOGMwLTQuMTM1LDMuMzY1LTcuNSw3LjUwMS03LjVTMTUuNSwzLjg2NCwxNS41LDhTMTIuMTM3LDE1LjUsOC4wMDEsMTUuNXoiLz48cGF0aCBmaWxsPSIjRDUyQjFFIiBkPSJNOC4wMDEsMUMxMS44NiwxLDE1LDQuMTQxLDE1LDhzLTMuMTM5LDctNi45OTksN0M0LjE0LDE1LDEsMTEuODU5LDEsOFM0LjE0LDEsOC4wMDEsMSBNOC4wMDEsMEMzLjU4MiwwLDAsMy41ODIsMCw4czMuNTgyLDgsOC4wMDEsOEMxMi40MTgsMTYsMTYsMTIuNDE4LDE2LDhTMTIuNDE4LDAsOC4wMDEsMEw4LjAwMSwweiIvPjwvZz48cGF0aCBmaWxsPSIjRDUyQjFFIiBkPSJNNi43NDUsMTIuNTg5Yy0wLjIyNywwLjEyMi0wLjQ5NywwLjI0Ny0wLjY4NCwwLjI0N2MtMC4zMTgsMC0wLjUwMS0wLjE2NC0wLjUwMS0wLjQ1MmMwLTAuMjA3LDAuMTQtMC4zNzUsMC41OTUtMC42MjJjMS41NDktMC45MDQsMi41OTQtMi4yNzIsMi41OTQtMy43MjFjMC0wLjgyNS0wLjIyNy0xLjExOS0wLjY4MS0xLjExOWMtMC4xMzUsMC0wLjMyLDAuMjE5LTAuNjM2LDAuMjE5SDcuMTU3QzYuMTAyLDcuMTQzLDUuMzMzLDYuMjY0LDUuMzMzLDUuMjNjMC0xLjE1MiwwLjk1OC0yLjAwNiwyLjI4LTIuMDA2YzEuNzc3LDAsMy4wNTMsMS4zNzMsMy4wNTMsMy40M0MxMC42NjYsOS4yMTUsOS4yMDMsMTEuMjcsNi43NDUsMTIuNTg5Ii8+PC9nPjwvc3ZnPg "Add to Citavi project by ISBN") (not obligatory, but very interesting)
- The Microsoft Secure Development Lifecycle (MS-SDL): [https://www.microsoft.com/en-us/SDL/ Links to an external site.](https://www.microsoft.com/en-us/SDL/) 
- Misuse case example with different types of attackers and examples of misuse: [Use+Misuse Case Diagram Links to an external site.](https://raw.githubusercontent.com/jhautry/echo-dot/master/Echo%20Dot%20Use%2BMisuse%20Case%20Diagram%20v2.png)

###   
References

Knobloch, Martin (2021): [Developing Secure Applications with OWASP Links to an external site.](https://owasp.org/www-pdf-archive/Developing_Secure_Applications_with_OWASP.pdf). OWASP.

McGraw, Gary (2006): Software Security. Building security in: Addison-Wesley Professional.[](https://owasp.org/www-pdf-archive/Developing_Secure_Applications_with_OWASP.pdf)
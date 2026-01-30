---
status: TODO
source: Software Maintenance.docx
source-loc: 7. Core Skills - Complex Software Engineering
source-date: 2025-12-18T00:00:00
publish: true
exclude: false
section: Software Maintenance
type: Informational
---

In modern software engineering, DevOps is often introduced as a solution to software delivery problems. However it is more valuable to treat DevOps as an umbrella term: a collection of principles, practices, and cultural choices that aim to address recurring problems in software delivery. 

By framing DevOps in this way, space is left for other interpretations, implementations, and alternatives that pursue the same underlying goals. 

## What – what do we mean by DevOps? 

DevOps is not a tool and not a fixed methodology. 

At its core, DevOps is a set of principles and practices that seek to improve how software is: 

- built 
- tested 
- released 
- operated 
- improved over time 

Traditionally, software development and operations were treated as separate disciplines: 

- developers focused on creating new features 
- operations focused on stability, reliability, and infrastructure 

DevOps challenges this separation by emphasizing: 

- shared responsibility 
- continuous feedback 
- automation where possible 
- fast but controlled change 

## DevOps as an opener concept 

DevOps is an approach that improves the flow from software ideas to reliable delivery in production by reducing manual work, handovers, and late feedback. 

This definition intentionally allows space for: 

- **platform engineering** a dedicated team provides shared platforms and tools so product teams can focus on building features 
- **site reliability engineering (SRE)** reliability is treated as an engineering problem and managed using software and measurable targets 
- **continuous delivery without a formal “DevOps team”** teams automate testing and deployment while keeping existing team structures 
- **domain-oriented team structures** teams are organised around business domains and own the full lifecycle of their domain, from development to operation 
- **alternative organizational or technical solutions** other approaches may address the same delivery and operational problems in different ways 

in other words, DevOps is one possible answer to software delivery and operational challenges, not the only one. 

## Why – what problems is DevOps trying to solve? 

To understand DevOps, it is necessary to first understand the problems it responds to. 

### slow and risky software delivery 

Traditional delivery models often result in: 

- long release cycles f
- stressful “big bang” deployments 
- high risk when changes finally go live 

DevOps -inspired approaches aim to make change: 

- smaller 
- more frequent 
- more predictable 

### misaligned motivations 

When teams are separated: 

- developers are rewarded for speed and feature delivery 
- operations are rewarded for stability and uptime 

This creates tension rather than collaboration. 

DevOps reframes success as a shared outcome, where both fast delivery and stable operation are required. 

## lack of feedback 

Without fast feedback: 

- bugs are discovered late 
- performance issues reach users 
- teams repeat the same mistakes 

DevOps emphasizes: 

- monitoring 
- logging 
- user feedback 
- learning from production behaviour 

### Manual, error-prone processes 

Manual steps in testing, deployment, and configuration: 

- slow teams down 
- increase human error 
- limit scalability 

The goal is **reliable and repeatable outcomes**, not automation for its own sake. 

## How – how are these problems commonly addressed? 

DevOps does not prescribe one fixed implementation. Instead, it is commonly expressed through a combination of technical, process, and cultural choices. 

## Technical practices 

Common examples include: 

- continuous integration 
- continuous delivery or deployment 
- infrastructure as code 
- automated testing 
- observability through metrics, logs, and tracing 

These practices aim to: 

- reduce uncertainty 
- make systems more predictable 
- enable fast recovery when problems occur 

## Process and workflow choices 

Teams may adopt: 

- **trunk-based development**: developers regularly merge small changes into a shared main branch instead of working on long-lived separate branches 
- **feature toggles**: features are turned on or off using configuration so code can be deployed without immediately exposing it to users 
- **small batch sizes**: work is delivered in small, incremental changes to reduce risk and make problems easier to detect and fix 
- **post-incident reviews focused on learning**: teams review incidents after they happen to understand causes and improve systems, focusing on learning rather than blame 

These practices should be understood as patterns, not rules. The same goals can be achieved in different ways depending on context. 

## Cultural and organizational aspects 

DevOps strongly emphasizes: 

- collaboration over silos 
- trust over control 
- learning over blame 

This includes: 

- shared ownership of production systems 
- psychological safety 
- continuous improvement 

Without cultural alignment, technical DevOps practices often fail or remain superficial. 

## Where does devops fit (and where not)? 

## DevOps in different contexts 

DevOps -inspired ideas appear in many environments: 

- **startups requiring fast experimentation**. Examples include startups releasing new features weekly, testing ideas with users, and changing direction quickly based on feedback 
- **enterprises modernizing legacy systems**: Examples include large organizations improving old systems by adding automated tests, deployment pipelines, and gradual updates instead of big releases 
- **cloud-native platforms**: Examples include systems built on cloud infrastructure where deployments, scaling, and infrastructure changes are automated 
- **sectors with legal requirements, where software delivery is automated but still controlled**. Examples include healthcare systems with automated security checks, banking software with audit logs in deployment pipelines, or government systems with controlled but automated releases. 

The expression of DevOps differs between contexts, but the underlying intent remains consistent. 

## DevOps is not always the answer 

It is important to understand that: 

- DevOps is not mandatory 
- DevOps is not binary 
- DevOps can be misapplied 

In some contexts, DevOps practices must be limited or adapted because the **risks**, rules, or **system characteristics** require more control than standard DevOps practices provide: 

- strong separation of duties is legally required (rules) for example, laws may require that development and production access are handled by different roles 
- change frequency is intentionally low (risk) for example, in safety-critical systems where changes must be rare and carefully reviewed 
- alternative reliability or operational models are more appropriate (system characteristics) for example, systems that rely on strict procedures, redundancy, or specialized reliability teams 

The key question is not: “are we doing DevOps?”,  

but rather: “how do we responsibly deliver change that creates value?” 

## DevOps as direction, not prescription 

For this course, DevOps should be understood as: 

- a lens to analyse software delivery problems 
- a source of inspiration for possible solutions 
- a conversation starter rather than an endpoint 

Students should be encouraged to: 

- question assumptions 
- adapt practices to their context 
- compare DevOps with alternative approaches 
- justify why a specific setup fits a given situation 

## Key takeaway 

DevOps is not the way to build and operate software. It is one response to recurring challenges in modern software engineering. 

## References

- Humble, J., Farley, D. Continuous Delivery [https://continuousdelivery.com/](https://continuousdelivery.com/) 
- [https://www.manageengine.com/products/service-desk/itsm/what-is-devops-for-beginners.html](https://www.manageengine.com/products/service-desk/itsm/what-is-devops-for-beginners.html) 
- Kim, G., Humble, J., Debois, P., Willis, J. The DevOps Handbook [https://itrevolution.com/product/the-devops-handbook/](https://itrevolution.com/product/the-devops-handbook/) 
- DORA research program [https://www.devops-research.com/research.html](https://www.devops-research.com/research.html) 
- Google site reliability engineering (free online book) [https://sre.google/sre-book/table-of-contents/](https://sre.google/sre-book/table-of-contents/) 
- platform engineering community [https://platformengineering.org/](https://platformengineering.org/)
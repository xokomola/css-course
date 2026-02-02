---
status: REVIEW
section: Software Maintenance
---
## Why

> You apply, in various contexts, a **maintainable** software delivery process, which is compatible with the current stakeholder's IT organization, and continuously aim for **improving the software development process** itself by applying best practices.


In practice, most software development is not a greenfield development. ‌ Software which fits the purpose of an organisation is actually being used, and lives longer than most people think. But also the world changes, so changes to this existing software need to take place, while the current behavior remains.

## What

- Organizations already have existing software development processes in place, with people with existing skills and experience, working on already existing software code, technologies and architectures. In a process like this, new changes need to be applied. ‌ Sometimes, a choice for a greenfield project is made, but the outcome of such a choice depends on other aspects then you might [imagine](https://stepaheadsoftware.blogspot.com/2012/09/greenfield-or-refactor-legacy-code-base.html). In practice, the majority of software changes are made in brownfield projects.
- Skills
- Also, in uncertain environments, we want to apply best practices which helps us in doing this. As we know, software engineering practices are a good way to handle uncertainty.
- Existing code means existing architecture. Software skills to work with existing architecture are needed, or need to be developed (especially refactoring and testing).

Currently running software certainly needs to keep on working as intended while it's being changed, so monitoring of the behavior is necessary.

- Process
- Possible future change requests need to be collected and assessed on priority and impact. Also keeping track of what changes are caused by which change are necessary by law or for legal reasons. ‌ DEVOPS is a meanstream process which is specifically aimed at seeing software delivery, and maintaining it while it's running as a whole. Teams having a shared responsibility both in maintaining existing software, and enhancing it with new developments. Automation of activities is key to be able to create predictable outcomes. Since 2014, the [DORA team](https://dora.dev/research/) at google investigates what separates well performing (and happy!) software teams from worse performing teams. 

Their findings (The Accelarate book) led to key metrics, which are used to measure and improve the performance of software development teams.
    
## How

This means choosing a software development methodology (Agile, XP etc.) to enable engineering practices, setting up an as-automated-as-possible way of delivering software to customers. Measuring the quality of both the products which are delivered, but also measuring the process of software delivery itself, so you can continuously improve it.

## References

- Forsgren, N., Humble, J., Kim G. _Accelerate, the science of lean software and devops_
- [Greenfield or refactor legacy codebase](https://stepaheadsoftware.blogspot.com/2012/09/greenfield-or-refactor-legacy-code-base.html)
- [The DORA team](https://dora.dev)

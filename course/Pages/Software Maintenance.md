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

- Understanding of the process in both development and the business.
- Possible future change requests need to be collected and assessed on priority and impact. Also keeping track of what changes are caused by which change are necessary by law or for legal reasons. ‌ *DEVOPS* is a mainstream process which is specifically aimed at seeing software delivery, and maintaining it while it's running as a whole. Teams having a shared responsibility both in maintaining existing software, and enhancing it with new developments. Automation of activities is key to be able to create predictable outcomes. Since 2014, the [DORA team](https://dora.dev/research/) at google investigates what separates well performing (and happy!) software teams from worse performing teams. 

Their findings (The Accelarate book) led to key metrics, which are used to measure and improve the performance of software development teams.
    
## How
Concepts to demonstrate by the end of the semester:

Understanding of ongoing processes in buiseness and development
- Clearly demonstrating a software development methodology (for example Agile, XP) that fits your project
- Automation of as much as possible of your development process delivering quality to your customers
- Your solutions fits with existing processes in the organisation

How to be able to set-up a development process aimed at *maintainability*:
- Measuring the quality of both the products which are delivered, but also measuring the process of software delivery itself, so you can continuously improve it.
- Know techniques for monitoring & logging can contribute to gain insight and improve the behavior of your running systems
- Meet the expectations of your stakeholder in delivering the right quality and products to transfer work for future teams.
  
The page on [[DevOps]] and [[Monitoring & Logging]] gives you some starting point to investigate these. Also have a look at insights of the [DORA team](https://dora.dev/research/).

## References

- Forsgren, N., Humble, J., Kim G. _Accelerate, the science of lean software and devops_
- [Greenfield or refactor legacy codebase](https://stepaheadsoftware.blogspot.com/2012/09/greenfield-or-refactor-legacy-code-base.html)
- [The DORA team](https://dora.dev)

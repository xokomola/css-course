---
status: REVIEW
source: Software Maintenance.docx
source-loc: 7. Core Skills - Complex Software Engineering
source-date: 2025-12-18T00:00:00
publish: true
exclude: false
section: Software Maintenance
---
## Why

As a member of a DevOps team, you should have a firm understanding of the system you are maintaining and enhancing. This means you will need to test the functionalities and monitor that the system operates as specified. What you (as a member of a DevOps team) are responsible for is: 

- Enhance an existing system according to all new specifications;
- Keep the system running within agreed specifications, before and after adding enhancements.

This page focuses on the last responsibility: _keep the system running within agreed specifications_. This means that you make sure that the system in the **production environment** is running in such a way that it meets the specified (non-)functional requirements, and therefore is actually adding business value to your client. It should should be supportable using the current software development process which is used.

## What

- With a complex system, consisting of multiple individually running parts, an important non-functional requirement to take into account is [observability](https://tribulant.com/blog/business/what-is-software-observability): knowing at every moment the state of your system and its performing metrics. Since only then you can answer the question: is there something wrong with my system? And if so: What is wrong and why?

### The Three Pillars of Observability

Observability is supported by the 3 pillars of observability. These pillars focus on monitoring the network, systems, and applications.

![](https://images.contentstack.io/v3/assets/bltefdd0b53724fa2ce/bltf85be52d51892228/5c98d45f8e3cc6505f19f678/three-pillars-of-observability-logs-metrics-tracs-apm.png)
#### Logs

Collecting information (both textual and/or binary) that is logged by devices and applications. Considerations here are granularity (loglevel), formatting, and how logs are being collected and stored. Time-stamping is an essential tool to be able to relate log entries to each other. - 

#### Metrics

Metrics are numerical data, collected over time intervals by systems. Data volume and distributed aggregation are key issues that need to be addressed. Labelling the metrics is essential for being able to relate them to each other in any analysis. - 

#### Traces

Tracing keeps track of related events throughout the system. Multiple related events are generated within one business process (e.g. creating an order). 

The use of tracing has a major impact on the design of the system: for all related parts in a trace, you need to gather all parts of the information flow. The more similar all system parts are, the easier it is to implement tracing.

For a more in-depth overview of the three pillars, read this chapter of the [O'Reilly book Distributed Systems Observability](https://www.oreilly.com/library/view/distributed-systems-observability/9781492033431/ch04.html) and watch this talk [Adding Observability to Distributed Systems - David Ostrovsky](https://www.youtube.com/watch?v=FdgTVXQQtpw&list=PL03Lrmd9CiGe9QtFC8LRRqknzpKgcrWpe&index=21)

## How

- To be able to measure and evaluate the overall performance of your application, you cannot just measure everything: you may find yourself surrounded by hundreds of available metrics. Your job is to find the Key Performance Indicators (KPI's) which shows meaningful data of your running system.
- This is where observability comes into play! Observability is a way to know the internal state of the system. Only by knowing the internal state, you know if it is deviating from its desired internal state. This desired state is often expressed via a set of *key performance indicators *(KPIs). The most important KPIs that are often being used in web applications are:
- Application Response Time
- Peak Response Time
- Error Rate
- Concurrent Users
- Requests per Second
- Application Availability Ratio

For your specific application, you need to determine which (other) KPI's are relevant to the application maintainers, company and stakeholders. The should be decided when defining acceptance criteria for features. This way, they act as a validation that your application is working as intended.

This far, the KPI's mentioned talked about indicators for the product you are maintaining. But also your development process of this product determines how fast and well you can deliver value to the customer. This means, you own development process also has KPI's which should be monitored. This way, you can identify bottlenecks in your development process, and improve on them.

- Use _Event Storming_ outcomes and tools to find KPI's and measure them.
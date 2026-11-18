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

This page focuses on the last responsibility: _keep the system running within agreed specifications_. This means that you make sure that the system in the **production environment** is running in such a way that it meets the specified (non-)functional requirements, and therefore is actually adding business value to your client. It should should be supportable using the current software development process which is use

## **What**

### Monitoring: The "Health Guardian" (Symptoms & SLAs)

Monitoring is the continuous process of collecting, aggregating, and analyzing quantitative data to check if a system is meeting its agreed health and business goals. These are often specified as part of your measurable quality criteria.

    The "What": Tracking aggregate metrics (like CPU usage, request latency, error rates, and throughput) against fixed, known thresholds.

    Primary Purpose: Guarding SLAs and SLOs. It tells you if a service is healthy and alerts you the moment it crosses an agreed-upon boundary (e.g., "If response time exceeds 500ms for 5 minutes, page the on-call engineer").

    Core Artifacts: Dashboards, health checks, and threshold-based alerts.  
  

### Logging: The "Event Recorder" (Facts & Audit Trails)

Logging is the practice of capturing discrete, time-stamped text records of events that occur inside an application while it runs.

    The "What": Emitting structured text or JSON data when specific code paths are executed (e.g., "User ID 42 successfully checked out cart at 10:04 AM" or "Database connection failed with timeout").

    Primary Purpose: Providing context for known or expected errors. When a monitoring alert fires, logs are the first place engineers look to see the sequential story of what happened leading up to that failure.

    Core Artifacts: Log files, centralized log management systems (like ELK or Datadog logs), and stack traces.  
  

## **How**

- To be able to measure and evaluate the overall performance of your application, you cannot just measure everything: you may find yourself surrounded by hundreds of available metrics. Your job is to find the Key Performance Indicators (KPI's) which shows meaningful data of your running system.
    
- Application Response Time
    
- Peak Response Time
    
- Error Rate
    
- Concurrent Users
    
- Requests per Second
    
- Application Availability Ratio
    

For your specific application, you need to determine which (other) KPI's are relevant to the application maintainers, company and stakeholders. The should be decided when defining acceptance criteria for features. This way, they act as a validation that your application is working as intended. _**What does your measurable quality criteria tell you? Would these criteria be of use in this phase of the project?**_

This far, the KPI's mentioned talked about indicators for the product you are maintaining. But also your development process of this product determines how fast and well you can deliver value to the customer. This means, you own development process also has KPI's which should be monitored. This way, you can identify bottlenecks in your development process, and improve on them.

- Use _Event Storming_ outcomes and tools to find KPI's and measure them.

  
Some industry standard tools to consider for experimentation are:

- Monitoring: Prometheus and Grafana
- Logging: ELK stack, Grafana Loki

  
If you are interested how well your team has control over their KPIs and can deliver stable releases of value to your customer. You also have a look at Dora Metrics.
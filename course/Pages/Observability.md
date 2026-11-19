## **Why**

As a DevOps team, you don't just maintain monolithic apps anymore; you build and scale complex, distributed systems (like microservices or cloud-native architectures). While monitoring tells you agreed upon specifications are not met, and logs leave a trail of what happened in the system, modern systems frequently fail in novel, completely unexpected ways—so-called "unknown-unknowns."

When this happen in a complex system you like to have the opportunity to analyse what went wrong in this specific unknown case. When you have thousands of users, this can be a tricky thing. Observability is an important aspect in complex systems.

- Investigating the root cause of complex, multi-service failures that cross team and infrastructure boundaries.
- Designing systems for internal transparency ensuring that code can explain its behavior during runtime rather than hiding behind black boxes.

This page focuses on Observability: the practice of designing and instrumenting software so you can deeply inspect its internal state during operations, allowing you to troubleshoot novel situations you never anticipated writing an alert for.

## **What**

### **The Three Pillars of Observability**

Observability is supported by the 3 pillars of observability. These pillars focus on monitoring the network, systems, and applications.

![](https://images.contentstack.io/v3/assets/bltefdd0b53724fa2ce/bltf85be52d51892228/5c98d45f8e3cc6505f19f678/three-pillars-of-observability-logs-metrics-tracs-apm.png)

#### **Logs**

Collecting information (both textual and/or binary) that is logged by devices and applications. Considerations here are granularity (loglevel), formatting, and how logs are being collected and stored. Time-stamping is an essential tool to be able to relate log entries to each other. -

#### **Metrics**

Metrics are numerical data, collected over time intervals by systems. Data volume and distributed aggregation are key issues that need to be addressed. Labelling the metrics is essential for being able to relate them to each other in any analysis. -

#### **Traces**

Tracing keeps track of related events throughout the system. Multiple related events are generated within one business process (e.g. creating an order). 

The use of tracing has a major impact on the design of the system: for all related parts in a trace, you need to gather all parts of the information flow. The more similar all system parts are, the easier it is to implement tracing.

For a more in-depth overview of the three pillars, read this chapter of the [O'Reilly book Distributed Systems ObservabilityLinks to an external site.](https://www.oreilly.com/library/view/distributed-systems-observability/9781492033431/ch04.html) and watch this talk [Adding Observability to Distributed Systems - David OstrovskyLinks to an external site.](https://www.youtube.com/watch?v=FdgTVXQQtpw&list=PL03Lrmd9CiGe9QtFC8LRRqknzpKgcrWpe&index=21)[![](https://fhict.instructure.com/images/play_overlay.png)](https://www.youtube.com/watch?v=FdgTVXQQtpw&list=PL03Lrmd9CiGe9QtFC8LRRqknzpKgcrWpe&index=21)

## **How**

To make a system truly observable, you cannot simply bolt tools onto production at the end; you must bake instrumentation into your software design process from day one.

When developing features, consider how an unexpected failure in your code would propagate across the network (again an example of system thinking):

- Context Propagation:  
    _Implement correlation IDs so that when a single user click triggers calls across five different microservices, you can tie those logs and traces together._
- Structured Telemetry:  
    _Avoid vague logs or unlabeled metrics. Ensure your components emit data rich enough to be filtered and aggregated across distributed environments._
- Designing for Inspection:  
    _Ask yourself during system design: *If this service fails silently due to a dependency timeout three layers deep, does our telemetry give us enough clues to reconstruct the story without deploying new debugging code?*_

Some industry-standard tools to consider for experimentation are:

- APM & Observability Suites: Datadog, New Relic, Honeycomb
- Open Source Tracing & Telemetry Standards: OpenTelemetry (OTel), Jaeger, Zipkin
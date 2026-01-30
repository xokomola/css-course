---
source: Quality Assurance.docx
status: REVIEW
publish: true
exclude: true
section: Software Quality
type: Table of Contents
---
This page explains how software quality is defined, engineered, and continuously validated in modern software projects. Quality Assurance (QA) is not a single activity or a testing phase at the end of development; it is an integrated, continuous discipline that spans analysis, design, implementation, and operations.

## What

Software Quality Assurance (SQA) is the systematic approach to ensuring that a software system meets both functional requirements (what the system does) and non-functional requirements (how well the system performs). 

Software Quality Assurance focuses on:  

- Preventing defects rather than only detecting them  
- Defining measurable quality criteria  
- Continuously validating system behavior against those criteria 

You demonstrate sustainable software quality by:  

- Translating requirements into testable quality attributes  
- Applying engineering practices that embed quality into the system  
- Using automation to continuously verify that quality levels are maintained 

Quality is therefore a property of the entire development process, not just of the final product. 

## Why

Modern software systems are long-lived, change frequently, serve many users and operate in complex environments 

Without structured quality assurance:  

- Defects accumulate  
- Systems become hard to change 
- User trust decreases  
- Maintenance costs explode 

International standards such as ISO/IEC 25010 define quality models that describe software quality using characteristics such as:  

- Performance efficiency  
- Reliability  
- Security  
- Usability 
- Maintainability  
- Portability  
- Compatibility 

In practice, you cannot optimize all quality attributes equally. 

Reasons: - Limited time and budget - Conflicting quality goals (e.g., security vs. performance) - Context-dependent priorities 

Therefore, QA is about making conscious trade-offs and focusing on the quality attributes that matter most to your stakeholders. 

## How

Quality assurance can be viewed as a continuous cycle: 

- Determine quality criteria 
- Design for quality 
- Validate quality continuously 
- Improve based on feedback 
    

**QA – Determining quality in context** 

1. Understand the problem domain 
	- Who are the stakeholders? 
	- What business goals must be achieved? 
	- What risks exist? 
2. Identify relevant quality attributes 
	- Use ISO/IEC 25010 as a reference model. 
	- Select a subset that is critical for your project (for example: - Performance - Scalability - Security - Privacy / GDPR - Accessibility - Availability - Maintainability)
3. Define measurable quality criteria 

Avoid vague statements.

Instead of: “System must be fast” 

Use: - “95% of requests respond within 200 ms” 

Instead of: “System must be secure” 

Use: “All endpoints require authentication”  

 “No high-severity vulnerabilities in dependency scans” 

Quality criteria should be: - Specific - Measurable - Testable 

Example: An online booking system defines performance as: “95% of search requests complete within 300 ms during peak hours.” 

4. Link quality criteria to architecture 

Examples:  

- High scalability → stateless services, horizontal scaling 
- High reliability → redundancy, health checks  
- High security → authentication, authorization, encryption 

Example: A video streaming platform prioritizes availability and scalability. Architecture uses multiple stateless services behind load balancers and replicated databases. 

QA – Validation of quality 

Validation means verifying that quality criteria are satisfied. 

This is done primarily through automated testing and analysis integrated into the CI/CD pipeline. 

**The Test Pyramid** 

The test pyramid describes how tests should be distributed across levels: 

- Unit tests (many) 
- Service / Integration tests (some) 
- UI / End-to-End tests (few) 

Guiding principles:  

- Prefer fast tests  
- Test at the lowest possible level  
- Avoid duplicating the same test at multiple levels 

Example: Business rules are tested with unit tests. API endpoints are tested with service tests. Only the main user journey (e.g., place order) is tested with a UI test. 

 

**Unit Tests** 

Purpose: - Verify small units of logic 

Characteristics: - Fast - Isolated - Easy to maintain 

Examples: - Business rules - Calculations 

 

**Service / Integration Tests** 

Purpose: - Verify collaboration between components 

Examples: - Service + database - API endpoints 

 

**Contract Tests** 

Purpose: - Verify agreements between services 

Ensures: - Providers and consumers stay compatible 

Important in microservices architectures. 

 

**UI / End-to-End Tests** 

Purpose: - Validate main user flows 

Characteristics: - Slow - Fragile - Expensive 

Use sparingly. 

Acceptance Tests 

Purpose: - Validate business scenarios 

Often expressed using BDD tools. 

**Exploratory Testing** 

Human-driven testing: - Discover unexpected issues - Improve understanding of system behavior 

Additional automated quality checks 

Quality is more than functional correctness. 

**Static Code Analysis** 

- Detect code smells 
- Enforce coding standards 
- Measure complexity 

**Security Testing** 

- Static Application Security Testing (SAST) 
- Dynamic Application Security Testing (DAST) 
- Dependency vulnerability scanning 

**Performance Testing** 

- Load tests 
- Stress tests 

**Code Reviews** 

- Knowledge sharing 
- Defect prevention 

Integrating QA into CI/CD 

Typical pipeline stages (example:  split into fast CI and slower validation): 

Fast CI pipeline (runs on every commit): 

- Build 
- Unit tests 
- Static analysis 
- Security scans 
- Integration / service tests 
- Package artifact 


Validation / CD pipeline (runs after deployment): 

- Deploy to test or staging environment 
- End-to-end tests 
- Optional: performance tests 
 - Promote to production 

Pipeline results provide evidence of quality. 

QA as engineering culture 

Quality is strengthened by practices such as: 

- Test-Driven Development (TDD) 
- Behavior-Driven Development (BDD) 
- Pair programming 
- Continuous refactoring 

WHERE – Where does quality assurance take place? 

Quality assurance happens: 

- During requirements analysis 
- During architecture design 
- During coding 
- During testing 
- In CI/CD pipelines 
- In production (monitoring) 

QA is therefore embedded everywhere. 

## References  

- ISO/IEC 25010 Quality Model - https://iso25000.com/index.php/en/iso-25000-standards/iso-25010 
- The Practical Test Pyramid – Ham Vocke - https://martinfowler.com/articles/practical-test-pyramid.html 
- Martin Fowler – Testing & Architecture - https://martinfowler.com/testing
- Microservices.io – Testing Patterns - https://microservices.io/patterns
- OWASP Testing Guide - https://owasp.org/www-project-web-security-testing-guide/
- SonarQube - https://www.sonarqube.org
- Apache JMeter https://jmeter.apache.org
- Cucumber - https://cucumber.io

 
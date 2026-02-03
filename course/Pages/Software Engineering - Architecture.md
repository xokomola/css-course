---
status: TODO
---
This page introduces core architectural patterns and practices used in modern enterprise software systems, and explains how architectural decisions are shaped by quality concerns, business context, and technological evolution. 

The structure of this page follows four guiding questions:  

- What is shaping and building an initial architecture?  
- Where does architecture design take place in a project and organization?  
- Why is architecture driven primarily by non-functional requirements?  
- How do you design an initial architecture using architectural styles and patterns; and how to best give insight into it? 

## WHAT – What is shaping and building your initial architecture? 

Shaping and building your initial architecture means transforming business goals, stakeholder needs, and quality expectations into a coherent technical structure for your application. 

At this stage, you already have:  

- A basic application skeleton  
- An initial architectural overview 
 - Knowledge of your stakeholders and domain  
- A first set of functional and non-functional requirements 

The purpose of architecture is to define:  

- The major building blocks of the system  
- How those building blocks interact  
- Which responsibilities each part has  
- Which technologies and platforms are used 

Architecture is not about detailed implementation. It is about defining the structural decisions that are difficult to change later. 

Key characteristics of good initial architecture:  

- Supports business goals 
 - Aligns with non-functional requirements  
- Is understandable to technical and non-technical stakeholders 
 - Can evolve over time 

Modern enterprise architectures are typically: 

 - Distributed - API-driven - Cloud-native - Automated through CI/CD pipelines 

## WHERE – Where does architecture live? 

Architecture exists at multiple levels: 

1. Product Level - Defines how one application is structured internally: - Services - Layers - Data stores - Interfaces 

2. Enterprise Level - Defines how applications interact within the organization: - Shared platforms - Identity providers - Messaging infrastructure - Integration standards 

3. Cloud / Platform Level - Defines runtime environments: - Cloud provider (AWS, Azure, GCP, on-prem) - Containers and Kubernetes - Serverless platforms - Networking and security foundations 

Today, most architectures are cloud-native, meaning they assume: 

 - Elastic infrastructure - Automated provisioning - Infrastructure as Code (IaC) 

Architecture design is not a one-time activity. It continues:  

- During backlog refinement  
- During sprint planning  
- During technical reviews  
- During major changes 

Architecture is therefore a continuous design activity. 

##  WHY – Why architecture is driven by non-functional requirements (NFRs) 

Functional requirements describe what the system does. Non-functional requirements describe how well the system must work. 

Examples: - Performance - Scalability - Security - Availability - Privacy - Maintainability 

Two systems with identical functionality may require completely different architectures due to different NFRs. 

ISO/IEC 25010 Quality Model (simplified) 

Common quality attributes: - Performance efficiency - Reliability - Security - Usability - Maintainability - Portability - Compatibility 

In this course, mandatory NFRs: - Performance - Scalability - Security - Privacy / GDPR 

Additional important NFRs: - Maintainability - Testability - Observability - Deployability 

Example 

High scalability → distributed services High security → zero-trust design, encryption, identity boundaries High performance → caching, asynchronous processing 

Architecture exists to satisfy NFRs. 

## HOW – How to shape and build your initial architecture 

### Step 1 – Identify key drivers 

- Business goals 
- Stakeholders 
- Mandatory NFRs 
- Domain complexity 

These drivers influence architectural style selection. 

### Step 2 – Choose suitable architectural styles 

Most real-world systems use a hybrid of multiple styles. 

N-Tier (Layered) Architecture 

Structure: - Presentation Layer - Application Layer - Domain Layer - Infrastructure/Data Layer 

Strengths: - Simplicity - Clear separation of concerns 

Challenges: - Can become monolithic - Limited scalability by itself 

Best used for: - Smaller systems - Internal tools - Clear CRUD applications 

#### Web–Queue–Worker Architecture 

Structure: - Web Frontend - Message Queue - Worker Services 

Strengths: - Asynchronous processing - Good for long-running tasks 

Challenges: - Increased complexity - Eventual consistency 

Best used for: - File processing - Background jobs - Batch operations 

#### Microservices Architecture 

Structure: - Many small autonomous services - Each service owns its data 

Strengths: - Independent deployment - Scalability - Team autonomy 

Challenges: - Distributed complexity - Networking overhead - Monitoring difficulty 

Best used for: - Large, evolving systems - Multiple teams 

#### Event-Driven Architecture 

Structure: - Event producers - Event consumers - Message broker / event bus 

Strengths: - Loose coupling - High scalability 

Challenges: - Harder debugging - Event versioning 

Best used for: - Real-time systems - Integration-heavy landscapes 

### Step 3 – Apply modern supporting practices 

#### Cloud-Native Principles 

- Containers (Docker) 
- Orchestration (Kubernetes) 
- Infrastructure as Code (Terraform, Bicep) 

#### Platform Engineering  

Internal platforms that provide: - CI/CD templates - Security defaults - Observability tooling 

#### DevOps & DevSecOps 

- Automated pipelines 
- Security integrated into build process 

#### Domain-Driven Design (DDD) 

- Bounded contexts 
- Ubiquitous language 
- Domain-focused services 

### Step 4 – Design service communication 

Two main styles: 

### Synchronous 

- REST 
- gRPC 

Pros: - Simple 

Cons: - Tight coupling 

### Asynchronous 

- Message brokers (Kafka, RabbitMQ) 
- Event streaming 

Pros: - Resilience - Loose coupling 

Cons: - Eventual consistency 

Modern architectures often mix both. 

### Step 5 – Build in cross-cutting concerns 

- Authentication & Authorization 
- Observabiliity (Logging, Monitoring, Tracing)
- Configuration management 

Often implemented using: - API Gateway - Service Mesh

### Step 6 – Document the architecture 

Architecture should evolve. Start as simple as possible. To document a static picture of how the architecture is or should become: use diagrams. To explain why you made certain architectural decisions: use ADRs. This so that a future developer can make sense of your architecture (by looking at a diagram) and understand why it became this way (looking at the ADRs).

- Lightweight diagrams: - Context diagram - Container diagram - Component diagram (our recommendation use [C4 Model](https://c4model.com)
- Lightweight decision records: - [Architectural Decision Records (ADRs)](https://adr.github.io)

## References  

The following sources provide authoritative background and deeper reading on the topics covered in this page: 

- Microsoft Azure Architecture Center – Architecture styles and patterns [https://learn.microsoft.com/en-us/azure/architecture/guide/architecture-styles/](https://learn.microsoft.com/en-us/azure/architecture/guide/architecture-styles/) 
- Martin Fowler – Software Architecture & Microservices [https://martinfowler.com/architecture/](https://martinfowler.com/architecture/) [https://martinfowler.com/microservices/](https://martinfowler.com/microservices/) 
- Microservices.io – Patterns and Trade-offs [https://microservices.io/](https://microservices.io/) 
- ISO/IEC 25010 Software Product Quality Model [https://iso25000.com/index.php/en/iso-25000-standards/iso-25010](https://iso25000.com/index.php/en/iso-25000-standards/iso-25010) 
- InfoQ Architecture & Design Trends [https://www.infoq.com/architecture-design/](https://www.infoq.com/architecture-design/) 
- Sam Newman – Building Microservices (book site) [https://samnewman.io/books/building_microservices/](https://samnewman.io/books/building_microservices/) 

## Summary 

Shaping and building your initial architecture is about:  

- Understanding business and quality drivers  
- Selecting suitable architectural styles  
- Combining styles into a hybrid solution  
- Designing for change 

There is no single “best” architecture. There is only an architecture that best fits a specific context. 

Your goal is not to design a perfect system, but to create a fit-for-purpose system that can evolve safely over time.
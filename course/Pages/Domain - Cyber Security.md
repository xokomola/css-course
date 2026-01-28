---
status: NEW
section: Personal Flavors
type: Informational
exclude: false
---
## 🛡️ Domain: Cyber Security
## _Engineering Resilient Systems through Architectural Rigor_

## What

This domain treats security as a primary architectural pillar. It involves engineering software that remains functional and reliable even under active adversity. It focuses on **Security-by-Design**—preventing flaws at the structural level rather than just patching bugs.

**Is this for you?**
* **The Defensive Architect:** You want to design "secure by default" structures where a single bug doesn't crash the whole system.
* **The Logic Investigator:** You love hunting for "edge cases" and finding ways to break a system’s logic before an attacker does.
* **The Automation Engineer:** You want to build "security-as-code" so your system automatically blocks threats during every build.

## Why

The industry has shifted from reactive security to **Security-by-Design**. Recent trends show that architectural flaws (like those in the **OWASP Top 10:2025**) are now more dangerous than simple coding bugs. In 2026, companies demand engineers who can minimize the "Blast Radius" of a breach and ensure the **durability** of critical data.

## How (4 Research Tracks)

1.  **Architectural Threat Modeling:** Use the **STRIDE** model on a chosen system. Map data flows and prove how your design mitigates specific risks. 
    * *Quality Criteria:* Attack Surface Density & Trust Boundary isolation.
    * *Source:* [OWASP Threat Modeling](https://owasp.org/www-community/Threat_Modeling)
2.  **Self-Healing Supply Chain:** Build a CI/CD pipeline that generates a **SBOM (Software Bill of Materials)**. Simulate a "zero-day" in a dependency and automate the system's ability to block or flag it.
    * *Quality Criteria:* Dependency Staleness (LibYear) & Mean Time to Remediate (MTTR).
    * *Source:* [Google SLSA](https://slsa.dev/)
3.  **Zero Trust Microservices:** Design internal communication where no service is "trusted" by default; implement mTLS and measure the containment of a simulated compromised node.
    * *Quality Criteria:* Authorization Granularity & Mean Time to Detection (MTTD).
    * *Source:* [NIST SP 800-207: Zero Trust Architecture](https://csrc.nist.gov/publications/detail/sp/800-207/final)
4.  **Policy-as-Code:** Use *Open Policy Agent (OPA)* to write executable security rules. Build a pipeline that automatically rejects infrastructure that violates security policies (e.g., a container running as root).
    * *Quality Criteria:* Policy Coverage % & Automated Compliance Pass Rate.
    * *Source:* [NIST DevSecOps Fundamentals](https://csrc.nist.gov/publications/detail/white-paper/2022/01/26/devsecops-fundamentals/final)
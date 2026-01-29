---
status: TODO
---

Fontys ICT offers several tools and resources. 

## Development Tools

On the [student square](https://portal.fontysict.nl/Studentenplein/SitePages/Student%20Square.aspx) you'll find some software tools like those as: Jetbrains suite, Office 364, Visual Paradigm, etcetera

Be aware that somethimes companies offer free 1-year tiers to explore their packages. For example Github offers a student version which gives you Pro functionality and Google recently offered a 1-year free tier to Gemini. These are not obligatory tools, but might be interesting for you as a student to explore.

## Infrastructure

As a student you can request access to a couple of tools/resources that you can use for your projects. Some options to consider are outlined below.

**IMPORTANT**: **All group projects must be kept in Fontys ICT gitlab** because all innovation partners have access to it and can learn from each other.

[**FHICT Infrastructure**](https://eduresources.fhict.nl/doku.php/sources:infrastructuur_voor_projecten)

FHICT offers several infrastructure resources (e.g. VMs along with templates to setup your own Kubernetes cluster). Consult the Eduresources page for more information about the possibilities.

1\. The URL of the VPN connection to the Netlab is changed from *vpnnetlab.fhict.nl* to **vpn.netlab.fontysict.nl**

2\. The URL of vcenter within the Netlab is changed from *vcenter.netlab.fhict.nl* to **vcenter.netlab.fontysict.nl**

**[Microsoft Azure](https://azure.microsoft.com/en-us/free/students/) / [AzureDevOps](https://azure.microsoft.com/en-us/services/devops/)**

You can signup for Microsoft Azure and start with $100 credit. Note that you can use both your regular Fontys account and your i-account to signup, effectively doubling the amount of free credits! You can use the free tier (first 5 users are free) of Azure DevOps for project management, collaboration and build pipelines.

[**Amazon Web Services (AWS)**](https://aws.amazon.com/education/awseducate/)

Unfortunately, there is no student access with free credits available for AWS. You could signup for a regular AWS account, and make use of free-tier services, but this requires having a credit card.

[**Google Cloud**](https://cloud.google.com/free)

Google Cloud provides a free trial account option, along with $300 credit. Please note that this option is somewhat restricted (e.g. only available to new customers, and only available for 90 days), so make sure that you read the [terms of service](https://cloud.google.com/free/docs/gcp-free-tier/#free-trial).

[**Localstack**](https://localstack.cloud/)

Localstack is a fully functional local cloud stack, that can be used for offline, local development and testing of cloud applications. It provides (a subset of) the same services that are available in a real AWS cloud environment. It can be used to speed up your development, and to reduce the cost of cloud resources. It is advised though, to regularly (e.g. and the end of a sprint) to 'flip the switch' and to deploy to the real AWS environment, to see if everything works as planned.

## Cloud Guidelines

Note that using a cloud platform means that you have to do some resource management. This is necessary in order to keep costs as low as possible and to reduce the risk that you will run out of credits during the semester. 

When working in a cloud environment which a (free) credits based subscription, please consider the following guidelines:

- Create resources as small as possible, in such a way that it fits the needs of your project (e.g. don't create a Xlarge EC2 instance on AWS and waste your credits in a couple of days, if a Small instance also would be sufficient)
- Shutdown cloud resources if you don't need them
- Use pricing calculators of different cloud platforms to see how much credits you would need and if it fits the free credits that you have available during this semester
- Investigate if you can use free SaaS solutions, so that you don't have to host it yourself in the cloud
- When deploying to Kubernetes, tune the default scaling configuration (Kubernetes starts 3 pods by default, while 1 or 2 is also sufficient and Kubernetes by default disables 'scale to zero', which can be enabled to save resources)

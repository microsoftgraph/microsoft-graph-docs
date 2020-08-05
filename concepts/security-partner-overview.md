---
title: "Partnering with Microsoft Graph Security API – technology partner opportunities "
description: "This This article describes partnering opportunities enabled by the Microsoft Graph Security API and is designed to help product managers and business development roles understand the investment paths and provide insight into partnering value propositions. "
localization_priority: Normal
author: "preetikr"
ms.prod: "security"
---

# Partnering with the Microsoft Graph Security API – technology partner opportunities

This article describes partnering opportunities enabled by the Microsoft Graph Security API and is designed to help product managers and business development roles understand the investment paths and provide insight into partnering value propositions.

## Background

Most organizations deal with high volumes of security data and have dozens of security solutions in their enterprise, making the task of integrating various products and services daunting and complex. These challenges hinder the ability for organizations to move quickly when detecting and remediating threats in a world of fast-moving, disruptive attacks.

Technology partners can integrate with the Microsoft platform using the Microsoft Graph Security API to address these customer challenges.

## Introduction to the Microsoft Graph Security API

The Microsoft Graph Security API is a unified API that provides a standard interface and uniform schema to integrate security alerts and threat intelligence from multiple sources, enrich alerts and data with contextual information, and automate security operations.

The security API is part of the Microsoft Graph, which is a unified REST API for integrating data and intelligence from Microsoft and partner products and services. Using Microsoft Graph, customers and partners can rapidly build solutions that authenticate once and use a single API call to access or act on security insights from multiple security solutions. Additional value is uncovered when you explore the other [Microsoft Graph entities](https://docs.microsoft.com/graph/overview) (Microsoft 365, Azure Active Directory, Intune, and more) to tie business context with your security insights.

Microsoft enables technology partner integration in two key ways.

1. As a consumer of information from Microsoft Graph, you can enrich your solutions with information contained in Microsoft Graph as well as use the Microsoft Graph API to perform tasks on behalf of a customer.
2. You can also contribute your alerts and actions to Microsoft Graph alongside Microsoft providers.

|How do you integrate?|Data available|Capabilities supported|
|:--------------------|:-------------|:---------------------|
|Integrate your application with the Microsoft Graph Security API.|<li>Alerts from Microsoft Graph Security Providers</li><li>Secure Scores from Microsoft</li>| <li>Query alerts/Secure Score</li> <li>Call a Microsoft Graph Security Action</li> <li>Update a Microsoft Graph Security alert</li> <li>Upload Customer threat indicators to Microsoft</li> |
|Enable others to integrate with your products through the Microsoft Graph Security API.|<li>Alerts from your security products</li>|<li>Security Actions for your security product</li>|

Let’s delve a little deeper and explore some common scenarios where Microsoft Graph Security API integration magnifies security integration investments and the benefits to customers that we can achieve together.

## Featured technology partner scenarios

The following are three key benefits you can derive by integrating with the Microsoft Graph Security API:

1. Your customers benefit from improvements in security effectiveness and operations.
2. Your customers benefit from the rich information supplied by yours and other integrated partner products.
3. The engineering investment for technology partners is simplified and the customer value is magnified via integration with the Microsoft Graph Security API.

### Enhance threat protection with the Microsoft Graph Security API

*Enabling easier integration of security alerts to inform threat detection and response.*

- Correlate alerts/detections from Microsoft Graph Security providers with your detections to improve your investigation outcomes and support automations.
- Access detections and context via the Microsoft Graph to improve threat response – triage, investigation, remediation.
- Access customer threat intelligence (hash, IP, URL, domain, etc.) to block/alert on malicious activity.

### Streamline IT and security management

*Providing greater visibility and streamlining management of the incident lifecycle.*

- Aggregate alerts from multiple providers to create incidents.
- Access additional context to inform alert prioritization and response.
- Keep alert status synchronized across systems managing alerts.
- Gain visibility into the security posture and recommendation on how to improve it with Secure Scores.

### Share threat intelligence to enable custom detections

*Leverage your threat intelligence to power custom detections in Microsoft solutions.*

- Automatically send your threat indicators to Microsoft security solutions to enable Alert, Block, or Allow actions.
- Enable swift action to defend against new threats, such as block file, URL, domain, IP address from within your security tools and workflows.
- Customer supplied TI is used only for the supplying customer and not for any other Microsoft customer.

## Technical integrations overview

The Microsoft Graph Security API partnering opportunities are made available via two primary integration paths, which can be used independently or together.  We will outline the high-level requirements and provide some insight into how to think about investing in these paths here, but detailed technical explanations are left to the documents referenced later in this document.

Supported entities:

- **Alerts** are “conclusions with a security impact” rather than raw log data or other uncorrelated information. [Learn more](https://aka.ms/graphsecurityalerts).
- **Threat Indicators**, also referred to as indicators of compromise or IoCs, represent data about known threats, such as malicious files, URLs, domains, and IP addresses. Customers may generate indicators through internal threat intelligence gathering or acquire indicators from threat intelligence communities, licensed feeds, and other sources. [Learn more](https://aka.ms/graphsecuritytiindicators).
- **Security Actions** enable technology partners to expose functional capabilities via the Graph.  For example, if your security solution supports the ability to block IP addresses you can expose “Block IP” as a capability in the Graph. Other Graph Security API products can call your action via the Graph. [Learn more](https://aka.ms/graphsecurityaction).
- **Secure Score**… [Learn more](https://aka.ms/graphsecurescore).

### Integrate your application with the Microsoft Graph Security API

All integrated applications [must be registered](https://docs.microsoft.com/graph/auth-register-app-v2) with Microsoft Graph. Both applications used by a single customer as well as those used by many customers (multi-tenant) are supported.  In either case, the customer must grant consent for your application. When calling the Microsoft Graph, each request from your application will contain your application identifier and the customer you are calling on behalf of. The following types of requests are supported:

- **Get Alerts** – Get alert information with filtering as needed.  For example: Show me all the high priority alerts, or “all the high priority alerts” for a specific user, host, etc.
- **Update Alert Status** – Enabling management of an alert lifecycle.  For example: setting an alerts status to “resolved” from “in progress” or adding comments to an alert.
- **Get Secure Score** – Microsoft Secure Score is a “credit rating” type value for security configurations of Microsoft Products.
- **Subscribe** - Allowing notification of changes to alerts or queries.
- **Feed custom threat indicators** - Automatically send your threat indicators to Microsoft security solutions to enable Alert, Block, or Allow actions. Use the Microsoft Graph Security API directly or leverage integrations with leading threat intelligence platforms.
- **Invoke a Microsoft Graph Security Action** – Take immediate action to defend against threats using the Microsoft Graph Security [securityActions](https://aka.ms/graphsecurityaction) entity.

### Enable others to integrate with your products through the Microsoft Graph Security API

Microsoft Graph Security providers make their security alerts available to others through the Microsoft Graph.  Microsoft products that generate security alerts all have providers that expose their respective alerts to the Microsoft Graph. In addition, Microsoft Graph Security API allows for external providers, enabling you, as a Microsoft technology partner, to share relevant security alerts from your applications in the Microsoft Graph for customers to use. In addition to alerts, Microsoft Graph Security securityActions enable technology partners to expose functional capabilities via the Microsoft Graph.  For example, if your security solution supports the ability to block IP addresses you can expose “Block IP” as a capability in the Microsoft Graph. Other Microsoft Graph Security products can call your action via the Microsoft Graph.

A Microsoft Graph Security Provider is essentially a cloud endpoint that responds to requests from the Microsoft Graph Security API and returns the relevant security alerts or executes actions for mutual customers. Customer and service-to-service authentication ensure access to customer alerts and actions is secured.

Provider scenarios are widely varied. A curated onboarding process begins with identifying relevant scenarios. Once scenarios are agreed upon, documentation, sample code and development environments are available to support development of your Microsoft Graph Security Provider.

## Get started

### Onboarding guides and technical documentation

- [Overview of the Microsoft Graph Security API](https://aka.ms/graphsecuritydocs)
- [API reference](https://aka.ms/graphsecurityreferencebetadocs)
- [alert schema](https://aka.ms/graphsecurityalertschema)
- [tiIndicator schema](https://aka.ms/graphsecuritytiindicators)
- [Security Actions schema](https://aka.ms/graphsecurityaction)
- [Secure Score schema](https://aka.ms/graphsecurescore)

### Sample code

- [Microsoft Graph Security samples](https://aka.ms/graphsecurityapicode)
- [Contribute to Microsoft Graph Security samples](https://aka.ms/graphsecurityapicodecontribute)

### Help and support

- If you have questions on application or service or product integrations with the Microsoft Graph Security API, reach out to the [Using Microsoft Security Graph API tech community](https://techcommunity.microsoft.com/t5/Using-Microsoft-Graph-Security/bd-p/SecurityGraphAPI)
- Follow discussions on [Stack Overflow](https://aka.ms/graphsecuritystackoverflow) with the tag: microsoft-graph-security.
- If you find bugs in the samples or documentation requests or bugs file issues in the respective [sample repository](https://github.com/microsoftgraph/security-api-solutions/blob/master/sample-repos.md).
- If you have new sample requests or issues that is not scoped to a single sample, [file issues](https://github.com/microsoftgraph/security-api-solutions/issues/new) in the [Microsoft Graph Security Solutions repository](https://github.com/microsoftgraph/security-api-solutions).

### Getting to market

- [Microsoft Partner Network](https://partner.microsoft.com/) – The primary program for partnering with Microsoft is the Microsoft Partner Network. Microsoft Graph Security integrations fall into the [MPN Independent Software Vendor (ISV)](https://partner.microsoft.com/isv-resource-hub) track.
- [Microsoft Intelligent Security Association](https://www.microsoft.com/security/partnerships/intelligent-security-association) is the program specifically for Microsoft Security Partners to help enrich your security products and improve customer discoverability of your integrations to Microsoft Security products.
- Microsoft AppSource – As a Microsoft Graph Security API partner, you can list your Microsoft Graph integration [in the Microsoft AppSource Marketplace](https://appsource.microsoft.com/partners/signup).

---
title: "Use the Microsoft Graph Security API"
description: "The Microsoft Graph Security API provides a unified interface and schema to integrate with security solutions from Microsoft and ecosystem partners."
localization_priority: Priority
author: "preetikr"
ms.prod: "security"
doc_type: conceptualPageType
---

# Use the Microsoft Graph Security API

The Microsoft Graph Security API provides a unified interface and schema to integrate with security solutions from Microsoft and ecosystem partners. This empowers customers to streamline security operations and better defend against increasing cyber threats. The Microsoft Graph Security API federates queries to all onboarded security providers and aggregates responses. Use the Microsoft Graph Security API to build applications that:

- Consolidate and correlate security alerts from multiple sources
- Unlock contextual data to inform investigations
- Automate security tasks, business processes, workflows, and reporting
- Send threat indicators to Microsoft products for customized detections
- Invoke actions to in response to new threats
- Provide visibility into security data to enable proactive risk management

The Microsoft Graph Security API includes the following key entities.

## Alerts

Alerts are potential security issues within a customer's tenant that Microsoft or partner security solutions have identified and flagged for action or notification. With the Microsoft Graph Security [alerts](alert.md) entity, you can unify and streamline management of security issues across all integrated solutions. This also enables applications to correlate alerts and context to improve threat protection and response. With the alert update capability, you can sync the status of specific alerts across different security products and services that are integrated with the Microsoft Graph Security API by updating your [alerts](alert.md) entity.

Alerts from the following providers are available via the Microsoft Graph Security API. Support for GET alerts, PATCH alerts, and Subscribe (via webhooks) is indicated in the following table.

| Security provider | <p align="center">GET alert</p>| <p align="center">PATCH alert</p>| <p align="center">Subscribe to alert</p>|
|:------------------|:---------|:-----------|:------------------|
|[Azure Security Center](https://docs.microsoft.com/azure/security-center/security-center-alerts-type)| <p align="center">&#x2713;</p> | <p align="center">&#x2713;</p> | <p align="center">&#x2713;</p> |
|[Azure Active Directory Identity Protection](https://docs.microsoft.com/azure/active-directory/identity-protection/playbook) | <p align="center">&#x2713;</p> | <p align="center">[File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) *</p> | <p align="center">&#x2713;</p> |
| [Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security/monitor-alerts) | <p align="center">&#x2713;</p> | <p align="center">[File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) *</p> | <p align="center">&#x2713;</p> |
|[Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-simulations) **| <p align="center">&#x2713;</p> | <p align="center">&#x2713;</p> | <p align="center"> [File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) </p> |
|[Azure Advanced Threat Protection](https://docs.microsoft.com/azure-advanced-threat-protection/understanding-security-alerts#security-alert-categories) ***| <p align="center">&#x2713;</p> | <p align="center">[File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) *</p> | <p align="center">&#x2713;</p> |
|Microsoft 365 <ul><li> [Default](https://docs.microsoft.com/office365/securitycompliance/alert-policies#default-alert-policies)</li> <li>[Cloud App Security](https://docs.microsoft.com/office365/securitycompliance/anomaly-detection-policies-in-ocas)</li><li>Custom Alert</li></ul> | <p align="center">&#x2713;</p> | <p align="center"> [File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) </p> | <p align="center"> [File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) </p> |
|[Azure Information Protection](https://docs.microsoft.com/azure/information-protection/faqs#i-see-azure-information-protection-is-listed-as-a-security-provider-for-microsoft-graph-securityhow-does-this-work-and-what-alerts-will-i-receive) **(preview)**| <p align="center">&#x2713;</p> | <p align="center">[File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) *</p> | <p align="center">&#x2713;</p> |
|[Azure Sentinel](https://docs.microsoft.com/azure/sentinel/quickstart-get-visibility) **(preview)**| <p align="center">&#x2713;</p> | <p align="center">Not supported in Azure Sentinel </p> | <p align="center">&#x2713;</p> |
> **Note:** New providers are continuously onboarding to the Microsoft Graph Security ecosystem. To request new providers or for extended support from existing providers, [file an issue in the Microsoft Graph Security GitHub repo](https://github.com/microsoftgraph/security-api-solutions/issues/new).

\* File issue: Alert status gets updated across Microsoft Graph Security API integrated applications but not reflected in the provider’s management experience.

\*\* Microsoft Defender Advanced Threat Protection requires additional [user roles](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/user-roles) to those required by the Microsoft Graph Security API. Only the users in both Microsoft Defender Advanced Threat Protection and Microsoft Graph Security API roles can have access to the Microsoft Defender Advanced Threat Protection data. Because application-only authentication is not limited by this, we recommend that you use an application-only authentication token.

\*\*\* Azure Advanced Threat Protection (Azure ATP) alerts are available via the Microsoft Cloud App Security integration. This means you will get Azure ATP alerts only if you have joined Unified SecOps and connected Azure ATP into Microsoft Cloud App Security. Learn more about [how to integrate Azure ATP and Microsoft Cloud App Security](https://docs.microsoft.com/azure-advanced-threat-protection/atp-mcas-integration).

## Information protection

The Microsoft Graph threat assessment API helps organizations to assess the threat received by any user in a tenant. This empowers customers to report spam emails, phishing URLs or malware attachments they receive to Microsoft. The policy check result and rescan result can help tenant administrators understand the threat scanning verdict and adjust their organizational policy.

## Secure Score

[Microsoft Secure Score](https://techcommunity.microsoft.com/t5/Security-Privacy-and-Compliance/A-new-home-and-an-all-new-look-for-Microsoft-Secure-Score/ba-p/529641) is a security analytics solution that gives you visibility into your security portfolio and how to improve it. With a single score, you can better understand what you have done to reduce your risk in Microsoft solutions. You can also compare your score with other organizations and see how your score has been trending over time. The Microsoft Graph Security [secureScore](securescore.md) and [secureScoreControlProfile](securescorecontrolprofile.md) entities help you balance your organization's security and productivity needs while enabling the appropriate mix of security features. You can also project what your score would be after you adopt security features.

## Common use cases

The following are some of the most popular requests for working with the Microsoft Graph Security API:

| **Use cases**   | **REST resources** | **Try it in Graph Explorer** |
|:---------------|:--------|:----------|
| List alerts | [List alerts](../api/alert-list.md) | [https://graph.microsoft.com/v1.0/security/alerts](https://developer.microsoft.com/graph/graph-explorer?request=security/alerts&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com) |
| Update alerts | [Update alert](../api/alert-update.md) | [https://graph.microsoft.com/v1.0/security/alerts/{alert-id}](https://developer.microsoft.com/graph/graph-explorer?request=security/alerts/{alert-id}&method=PATCH&version=v1.0&GraphUrl=https://graph.microsoft.com) |
|List secure scores|[List secureScores](../api/security-list-securescores.md) |[https://graph.microsoft.com/v1.0/security/secureScores](https://developer.microsoft.com/graph/graph-explorer?request=security/secureScores&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com)|
|Get secure score|[Get secureScore](../api/securescore-get.md) |[https://graph.microsoft.com/v1.0/security/secureScores/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/secureScores/{id}&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com)|
|List secure score control profiles|[List secureScoreControlProfiles](../api/security-list-securescorecontrolprofiles.md) |[https://graph.microsoft.com/v1.0/security/secureScoreControlProfiles/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/secureScoreControlProfiles//{id}&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com)|
|Get secure score control profile|[Get secureScoreControlProfile](../api/securescorecontrolprofile-get.md) |[https://graph.microsoft.com/v1.0/security/secureScoreControlProfiles](https://developer.microsoft.com/graph/graph-explorer?request=security/secureScoreControlProfiles&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com)|
|Update secure score control profiles|[Update secureScoreControlProfile](../api/securescorecontrolprofile-update.md) |[https://graph.microsoft.com/v1.0/security/secureScoreControlProfiles/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/secureScoreControlProfiles/{id}&method=PATCH&version=v1.0&GraphUrl=https://graph.microsoft.com)|


You can use Microsoft Graph [webhooks](/graph/webhooks) to subscribe to and receive notifications about updates to Microsoft Graph Security entities.

## Resources

Code and contribute to these Microsoft Graph Security API samples:

- [ASP.NET (C#) sample](https://github.com/microsoftgraph/aspnet-security-api-sample)
- [Python sample](https://github.com/microsoftgraph/python-security-rest-sample)
- [Node.js (JavaScript) sample](https://github.com/microsoftgraph/nodejs-security-sample)

Engage with the community:

- [Join the tech community](https://aka.ms/graphsecuritycommunity)
- [Discuss on StackOverflow](https://stackoverflow.com/questions/tagged/microsoft-graph-security)

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for these API sets.

## Next steps

The Microsoft Graph Security API can open up new ways for you to engage with different security solutions from Microsoft and partners. Follow these steps to get started:

- Drill down into [alerts](alert.md), [secureScore](securescore.md), and [secureScoreControlProfiles](securescorecontrolprofile.md).
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer). Under **Sample Queries**, choose **show more samples** and set the Security category to **on**.
- Try [subscribing to and receiving notifications](/graph/webhooks) on entity changes.

Need more ideas? See [how some of our partners are using Microsoft Graph](https://developer.microsoft.com/graph/graph/examples#partners).

## See also

[Code and contribute](https://github.com/microsoftgraph/security-api-solutions/blob/master/CONTRIBUTING.md) to these Microsoft Graph Security API samples:

- [ASP.NET (C#) sample](https://github.com/microsoftgraph/aspnet-security-api-sample)
- [Python sample](https://github.com/microsoftgraph/python-security-rest-sample)
- [Node.js (JavaScript) sample](https://github.com/microsoftgraph/nodejs-security-sample)
- [PowerShell sample](https://aka.ms/graphsecuritypowershellsample)
- [Other samples or contribute a new sample](https://aka.ms/graphsecurityapicode)

Explore other options to connect with the Microsoft Graph Security API:

- [Microsoft Graph Security connectors for Logic Apps, Flow and PowerApps](https://aka.ms/graphsecurityconnectors)
- [Microsoft Graph Security connector for Power BI](https://aka.ms/graphsecuritypowerbiconnectordoc)
- [Jupyter notebook samples](https://aka.ms/graphsecurityjupyternotebooks)

Engage with the community:

- [Join the tech community](https://aka.ms/graphsecuritycommunity)
- [Discuss on StackOverflow](https://stackoverflow.com/questions/tagged/microsoft-graph-security)


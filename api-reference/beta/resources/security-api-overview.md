---
title: "Use the Microsoft Graph Security API"
description: " > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported."
localization_priority: Priority
author: "preetikr"
ms.prod: "security"
---

# Use the Microsoft Graph Security API

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The Microsoft Graph Security API provides a unified interface and schema to integrate with security solutions from Microsoft and ecosystem partners. This empowers customers to streamline security operations and better defend against increasing cyber threats. The Microsoft Graph Security API can be used as a federated security aggregation service to submit queries to all onboarded security providers to get aggregated responses. Use Microsoft Graph Security API to build applications that:

- Consolidate and correlate security alerts from multiple sources
- Unlock contextual data to inform investigations
- Automate security operations for greater efficiency
- Provide visibility into security data to enable proactive risk management

The Microsoft Graph Security API includes the following key entities.

## Alerts

Alerts are potential security issues within a customer's tenant that Microsoft or partner security solutions have identified and are flagged for action or notification. With the Microsoft Graph Security [alerts](alert.md) entity, you can unify and streamline security  issues across all integrated solutions. This also enables applications to correlate alerts and context to improve threat protection and response. These unlock security operational efficiencies by reducing investigation time and time to resolution for incidents. With the alert update capability, you can sync the status of specific alerts across different security products and services that are integrated with the Microsoft Graph Security API by updating your [alerts](alert.md) entity.

Microsoft Graph Security-integrated solutions will receive alerts from the following security providers:

- [Azure Security Center](https://docs.microsoft.com/azure/security-center/security-center-alerts-type)
- [Azure Active Directory Identity Protection](https://docs.microsoft.com/azure/active-directory/identity-protection/playbook)
- [Microsoft Cloud Application Security](https://docs.microsoft.com/cloud-app-security/monitor-alerts )
- [Windows Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/attack-simulations-windows-defender-advanced-threat-protection)
- [Azure Information Protection](https://docs.microsoft.com/azure/information-protection/faqs#i-see-azure-information-protection-is-listed-as-a-security-provider-for-microsoft-graph-securityhow-does-this-work-and-what-alerts-will-i-receive) **(preview)**
- Microsoft Intune **(private preview)**
- Office 365 **(coming soon)**
- Azure Advanced Threat Protection **(coming soon)**
- Partner solutions, such as Palo Alto Networks App Framework

> **Note:** New providers are continuously onboarding to the Microsoft Graph Security ecosystem.

## Secure Score (preview)

[Microsoft Secure Score](https://techcommunity.microsoft.com/t5/Security-Privacy-and-Compliance/Office-365-Secure-Score-is-now-Microsoft-Secure-Score/ba-p/182358) is a security analytics solution that gives you visibility into your security portfolio and how to improve it. With a single score, you can better understand what you have done to reduce your risk in Microsoft solutions. You can also compare your score with other organizations and see how your score has been trending over time. The Microsoft Graph Security [secureScore](securescores.md) and [secureScoreControlProfiles](securescorecontrolprofiles.md) entities help you balance your organization's security and productivity needs while enabling the appropriate mix of security features. You can also project what your score would be after you adopt security features.

## Common use cases

The following are some of the most popular requests for working with the Microsoft Graph Security API.

| **Use cases**   | **REST resources** | **Try it in Graph Explorer** |
|:---------------|:--------|:----------|
| List alerts | [List alerts](../api/alert-list.md) | [https://graph.microsoft.com/beta/security/alerts](https://developer.microsoft.com/graph/graph-explorer?request=security/alerts&method=GET&version=beta&GraphUrl=https://graph.microsoft.com) |
| Update alerts | [Update alert](../api/alert-update.md) | [https://graph.microsoft.com/beta/security/alerts/{alert-id}](https://developer.microsoft.com/graph/graph-explorer?request=security/alerts/{alert-id}&method=PATCH&version=beta&GraphUrl=https://graph.microsoft.com) |
|List secure scores|[List secureScores](../api/securescores-list.md) (preview)|[https://graph.microsoft.com/beta/security/secureScores](https://developer.microsoft.com/graph/graph-explorer?request=security/secureScores&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|List secure score control profiles|[List secureScoreControlProfiles](../api/securescorecontrolprofiles-list.md) (preview)|[https://graph.microsoft.com/beta/security/secureScoreControlProfiles](https://developer.microsoft.com/graph/graph-explorer?request=security/secureScoreControlProfiles&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|Update secure score control profiles|[Update secureScoreControlProfiles](../api/securescorecontrolprofiles-update.md) (preview)|[https://graph.microsoft.com/beta/security/secureScoreControlProfiles/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/secureScoreControlProfiles/{id}&method=PATCH&version=beta&GraphUrl=https://graph.microsoft.com)|

You can use Microsoft Graph [webhooks](/graph/webhooks) to subscribe to and receive notifications about updates to Microsoft Graph Security entities.

## Next steps

The Microsoft Graph Security API can open up new ways for you to engage with different security solutions from Microsoft and partners. Follow these steps to get started:

- Drill down into [alerts](alert.md), [secureScore](securescores.md) (Preview), and [secureScoreControlProfiles](securescorecontrolprofiles.md) (Preview).
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer). Under **Sample Queries**, choose **show more samples** and set the Security category to **on**.
- Try [subscribing to and receiving notifications](/graph/webhooks) on entity changes.

Need more ideas? See [how some of our partners are using Microsoft Graph](https://developer.microsoft.com/graph/graph/examples#partners).

## See also

Code and contribute to these Microsoft Graph Security API samples:

- [ASP.NET (C#) sample](https://github.com/microsoftgraph/aspnet-security-api-sample)
- [Python sample](https://github.com/microsoftgraph/python-security-rest-sample)
- [Node.js (JavaScript) sample](https://github.com/microsoftgraph/nodejs-security-sample)

Engage with the community:

- [Join the tech community](https://aka.ms/graphsecuritycommunity)
- [Discuss on StackOverflow](https://stackoverflow.com/questions/tagged/microsoft-graph-security)

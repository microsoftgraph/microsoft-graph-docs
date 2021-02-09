---
title: "Use the Microsoft Graph Security API"
description: " > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported."
localization_priority: Priority
author: "preetikr"
ms.prod: "security"
doc_type: resourcePageType
---

# Use the Microsoft Graph Security API

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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
|[Azure Security Center](/azure/security-center/security-center-alerts-type)| <p align="center">&#x2713;</p> | <p align="center">&#x2713;</p> | <p align="center">&#x2713;</p> |
|[Azure Active Directory Identity Protection](/azure/active-directory/identity-protection/playbook) | <p align="center">&#x2713;</p> | <p align="center">[File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) *</p> | <p align="center">&#x2713;</p> |
| [Microsoft Cloud App Security](/cloud-app-security/monitor-alerts) | <p align="center">&#x2713;</p> | <p align="center">[File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) *</p> | <p align="center">&#x2713;</p> |
|[Microsoft Defender Advanced Threat Protection](/windows/security/threat-protection/microsoft-defender-atp/attack-simulations) **| <p align="center">&#x2713;</p> | <p align="center">&#x2713;</p> | <p align="center"> [File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) </p> |
|[Azure Advanced Threat Protection](/azure-advanced-threat-protection/understanding-security-alerts#security-alert-categories) ***| <p align="center">&#x2713;</p> | <p align="center">[File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) *</p> | <p align="center">&#x2713;</p> |
|Microsoft 365 <ul><li> [Default](/office365/securitycompliance/alert-policies#default-alert-policies)</li> <li>[Cloud App Security](/office365/securitycompliance/anomaly-detection-policies-in-ocas)</li><li>Custom Alert</li></ul> | <p align="center">&#x2713;</p> | <p align="center"> [File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) </p> | <p align="center"> [File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) </p> |
|[Azure Information Protection](/azure/information-protection/faqs#i-see-azure-information-protection-is-listed-as-a-security-provider-for-microsoft-graph-securityhow-does-this-work-and-what-alerts-will-i-receive) **(preview)**| <p align="center">&#x2713;</p> | <p align="center">[File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) *</p> | <p align="center">&#x2713;</p> |
|[Azure Sentinel](/azure/sentinel/quickstart-get-visibility) **(preview)**| <p align="center">&#x2713;</p> | <p align="center">Not supported in Azure Sentinel </p> | <p align="center">&#x2713;</p> |
> **Note:** New providers are continuously onboarding to the Microsoft Graph Security ecosystem. To request new providers or for extended support from existing providers, [file an issue in the Microsoft Graph Security GitHub repo](https://github.com/microsoftgraph/security-api-solutions/issues/new).

\* File issue: Alert status gets updated across Microsoft Graph Security API integrated applications but not reflected in the provider’s management experience.

\*\* Microsoft Defender Advanced Threat Protection requires additional [user roles](/windows/security/threat-protection/microsoft-defender-atp/user-roles) to those required by the Microsoft Graph Security API. Only the users in both Microsoft Defender Advanced Threat Protection and Microsoft Graph Security API roles can have access to the Microsoft Defender Advanced Threat Protection data. Because application-only authentication is not limited by this, we recommend that you use an application-only authentication token.

\*\*\* Azure Advanced Threat Protection (Azure ATP) alerts are available via the Microsoft Cloud App Security integration. This means you will get Azure ATP alerts only if you have joined Unified SecOps and connected Azure ATP into Microsoft Cloud App Security. Learn more about [how to integrate Azure ATP and Microsoft Cloud App Security](/azure-advanced-threat-protection/atp-mcas-integration).

## Information protection

**Labels** - Information protection labels provide details about how to properly apply a sensitivity label to information. The information protection label API describes the configuration of sensitivity labels that apply to a user or tenant.

**Threat assessment** - The Microsoft Graph threat assessment API helps organizations to assess the threat received by any user in a tenant. This empowers customers to report spam emails, phishing URLs, or malware attachments they receive to Microsoft. The policy check result and rescan result can help tenant administrators understand the threat scanning verdict and adjust their organizational policy.

## Threat indicators (preview)

Threat indicators, also referred to as indicators of compromise (IoCs), represent data about known threats, such as malicious files, URLs, domains, and IP addresses. Customers can generate indicators through internal threat intelligence gathering or acquire indicators from threat intelligence communities, licensed feeds, and other sources. These indicators are then used in various security tools to defend against related threats.

The Microsoft Graph Security [tiIndicators](tiindicator.md) entity allows customers to feed threat indicators to Microsoft security solutions to enable block and alert actions on malicious activity or allow, which suppresses actions for indicators determined not to be relevant to an organization. When sending indicators, both the Microsoft solution that will utilize the indicator and the action to be taken on that indicator are specified.

You can integrate the [tiIndicator](tiindicator.md) entity into your application or use one of the following integrated threat intelligence platforms (TIP):

- [Palo Alto Networks MineMeld Threat Intelligence Sharing](https://www.paloaltonetworks.com/products/secure-the-network/subscriptions/minemeld)
- [MISP Open Source Threat Intelligence Platform](http://www.misp-project.org/) available through the [TI sample](https://aka.ms/tipmispsample)

Threat indicators sent via the Microsoft Graph Security API are available today in the following products:

- [Azure Sentinel](/azure/sentinel/overview) – Enables you to correlate threat indicators with log data to get alerts on malicious activity.
- [Microsoft Defender ATP (Microsoft Defender Advanced Threat Protection)](/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection) – Enables you to alert and/or block on threat indicators associated with malicious activity. You can also allow an indicator for ignoring the indicator from automated investigations. For details about the types of indicators supported and limits on indicator counts per tenant, see [Manage indicators](/windows/security/threat-protection/microsoft-defender-atp/manage-indicators).

Support in other Microsoft security services will be available soon.


## Security Actions (preview)

Take immediate action to defend against threats using the Microsoft Graph Security [securityAction](securityaction.md) entity. When a security analyst discovers a new indicator, such as a malicious file, URL, domain, or IP address, protection can be instantly enabled in your Microsoft security solutions. Invoke an action for a specific provider, see all actions taken, and cancel an action if needed. Try security actions with [Microsoft Defender Advanced Threat Protection](/windows/security/threat-protection/windows-defender-atp/windows-defender-advanced-threat-protection) to block malicious activity on your Windows endpoints using properties seen in alerts or identified during investigations.

  > **Note:** Currently security actions only support application permissions.

## Secure Score

[Microsoft Secure Score](https://techcommunity.microsoft.com/t5/Security-Privacy-and-Compliance/Office-365-Secure-Score-is-now-Microsoft-Secure-Score/ba-p/182358) is a security analytics solution that gives you visibility into your security portfolio and how to improve it. With a single score, you can better understand what you have done to reduce your risk in Microsoft solutions. You can also compare your score with other organizations and see how your score has been trending over time. The Microsoft Graph Security [secureScore](securescores.md) and [secureScoreControlProfile](securescorecontrolprofiles.md) entities help you balance your organization's security and productivity needs while enabling the appropriate mix of security features. You can also project what your score would be after you adopt security features.

## Common use cases

The following are some of the most popular requests for working with the Microsoft Graph Security API.

| **Use cases**   | **REST resources** | **Try it in Graph Explorer** |
|:---------------|:--------|:----------|
| List alerts | [List alerts](../api/alert-list.md) | [https://graph.microsoft.com/beta/security/alerts](https://developer.microsoft.com/graph/graph-explorer?request=security/alerts&method=GET&version=beta&GraphUrl=https://graph.microsoft.com) |
| Update alerts | [Update alert](../api/alert-update.md) </br> [Update multiple alerts](../api/alert-updatealerts.md) | [https://graph.microsoft.com/beta/security/alerts/{alert-id}](https://developer.microsoft.com/graph/graph-explorer?request=security/alerts/{alert-id}&method=PATCH&version=beta&GraphUrl=https://graph.microsoft.com) </br> [https://graph.microsoft.com/beta/security/alerts/updateAlerts](https://developer.microsoft.com/graph/graph-explorer?request=security/alerts/updateAlerts&method=POST&version=beta&GraphUrl=https://graph.microsoft.com) |
| Get security action | [Get security action](../api/securityaction-get.md) (preview)|[https://graph.microsoft.com/beta/security/securityActions/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/securityActions/{id}&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|List security actions| [List security actions](../api/securityactions-list.md) (preview)|[https://graph.microsoft.com/beta/security/securityActions](https://developer.microsoft.com/graph/graph-explorer?request=security/securityActions&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|Create security actions|[Create security actions](../api/securityactions-post.md) (preview)|[https://graph.microsoft.com/beta/security/securityActions](https://developer.microsoft.com/graph/graph-explorer?request=security/securityActions&method=POST&version=beta&GraphUrl=https://graph.microsoft.com)|
|Cancel security action|[Cancel security actions](../api/securityaction-cancelsecurityaction.md) (preview)| [https://graph.microsoft.com/beta/security/securityActions/{id}/cancelSecurityAction](https://developer.microsoft.com/graph/graph-explorer?request=security/securityActions/{id}/cancelSecurityAction&method=POST&version=beta&GraphUrl=https://graph.microsoft.com) |
|Get TI indicator|[Get tiIndicator](../api/tiindicator-get.md) (preview)| [https://graph.microsoft.com/beta/security/tiIndicators/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/tiIndicators/{id}&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|List TI Indicators | [List tiIndicators](../api/tiindicators-list.md) (preview) | [https://graph.microsoft.com/beta/security/tiIndicators](https://developer.microsoft.com/graph/graph-explorer?request=security/tiIndicators&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|Create TI Indicator|[Create tiIndicator](../api/tiindicators-post.md) (preview)|[https://graph.microsoft.com/beta/security/tiIndicators](https://developer.microsoft.com/graph/graph-explorer?request=security/tiIndicators&method=POST&version=beta&GraphUrl=https://graph.microsoft.com)|
|Submit TI Indicators|[Submit tiIndicators](../api/tiindicator-submittiindicators.md) (preview)| [https://graph.microsoft.com/beta/security/tiIndicators/submitTiIndicators](https://developer.microsoft.com/graph/graph-explorer?request=security/tiIndicators/submitTiIndicators&method=POST&version=beta&GraphUrl=https://graph.microsoft.com) |
|Update TI Indicators|[Update tiIndicator](../api/tiindicator-update.md) (preview) </br>[Update multiple tiIndicators](../api/tiindicator-updatetiindicators.md) (preview)| [https://graph.microsoft.com/beta/security/tiIndicators/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/tiIndicators/{id}&method=POST&version=beta&GraphUrl=https://graph.microsoft.com) </br>[https://graph.microsoft.com/beta/security/tiIndicators/updateTiIndicators](https://developer.microsoft.com/graph/graph-explorer?request=security/tiIndicators/updateTiIndicators&method=POST&version=beta&GraphUrl=https://graph.microsoft.com)|
|Delete TI Indicators|[Delete tiIndicator](../api/tiindicator-delete.md) (preview) </br>[Delete multiple tiIndicators](../api/tiindicator-deletetiindicators.md) (preview) </br>[Delete tiIndicator by externalId](../api/tiindicator-deletetiindicatorsbyexternalid.md) (preview)| DELETE </br>[https://graph.microsoft.com/beta/security/tiIndicators/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/tiIndicators/{id}&method=DELETE&version=beta&GraphUrl=https://graph.microsoft.com) </br>POST</br>[https://graph.microsoft.com/beta/security/tiIndicators/deleteTiIndicators](https://developer.microsoft.com/graph/graph-explorer?request=security/tiIndicators/deleteTiIndicators&method=POST&version=beta&GraphUrl=https://graph.microsoft.com)</br>POST</br>[https://graph.microsoft.com/beta/security/tiIndicators/deleteTiIndicatorsByExternalId](https://developer.microsoft.com/graph/graph-explorer?request=security/tiIndicators/deleteTiIndicatorsByExternalId&method=POST&version=beta&GraphUrl=https://graph.microsoft.com)|
|List secure scores|[List secureScores](../api/securescores-list.md)|[https://graph.microsoft.com/beta/security/secureScores](https://developer.microsoft.com/graph/graph-explorer?request=security/secureScores&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|List secure score control profiles|[List secureScoreControlProfiles](../api/securescorecontrolprofiles-list.md)|[https://graph.microsoft.com/beta/security/secureScoreControlProfiles](https://developer.microsoft.com/graph/graph-explorer?request=security/secureScoreControlProfiles&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|Update secure score control profiles|[Update secureScoreControlProfiles](../api/securescorecontrolprofiles-update.md)|[https://graph.microsoft.com/beta/security/secureScoreControlProfiles/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/secureScoreControlProfiles/{id}&method=PATCH&version=beta&GraphUrl=https://graph.microsoft.com)|

You can use Microsoft Graph [webhooks](/graph/webhooks) to subscribe to and receive notifications about updates to Microsoft Graph Security API entities.

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for these API sets.

## Next steps

The Microsoft Graph Security API can open up new ways for you to engage with different security solutions from Microsoft and partners. Follow these steps to get started:

- Drill down into [alerts](alert.md), [tiIndicator](tiindicator.md) (preview), [securityAction](securityaction.md) (preview), [secureScore](securescores.md), and [secureScoreControlProfiles](securescorecontrolprofiles.md).
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



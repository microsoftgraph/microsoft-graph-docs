---
title: "On-premises publishing profiles"
description: "Various Azure services (for example, Azure Active Directory Connect Passthrough Authentication, Workday to Azure AD users provisioning) allow a conditional access to various on-premises resources from outside the corporate network."
localization_priority: Normal
author: "japere"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# On-premises publishing profiles

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Various Azure services (for example, Azure Active Directory Connect [Passthrough Authentication](/azure/active-directory/hybrid/how-to-connect-pta), [Workday to Azure AD users provisioning](/azure/active-directory/saas-apps/workday-inbound-tutorial), and [Application Proxy](https://aka.ms/whyappproxy)  allow access to various on-premises resources from outside the corporate network. [On-premises agents](onpremisesagent.md) (or [connectors](connector.md) for Application Proxy) installed by a tenant administrator can be configured to route requests to a particular [published resource](publishedresource.md).
[Agent groups](onpremisesagentgroup.md) (or [connector groups](connectorgroup.md) for Application Proxy) enable a tenant admin to assign specific agents to serve specific published on-premises resources. Tenant admins can group a number of agents together, and then assign each published resource to a group. The entire set of entities of the same on-premises publishing type is represented by [onPremisesPublishingProfile](onpremisespublishingprofile.md).

A tenant admin can configure for each **onPremisesPublishingProfile** the [time window](updatewindow.md) during which agents can receive updates or defer updates to the agents. The [updater configuration](hybridagentupdaterconfiguration.md) specified for an **onPremisesPublishingProfile** is applicable to all the agents within that **onPremisesPublishingProfile**.

For a tutorial about configuring Application Proxy, see [Automate the configuration of Application Proxy using the Microsoft Graph API](/graph/application-proxy-configure-api).

## See also

- [On-premises agent](onpremisesagent.md)
- [On-premises agent group](onpremisesagentgroup.md)
- [On-premises publishing profile](onpremisespublishingprofile.md)
- [Published resource](publishedresource.md)
- [Connector](connector.md)
- [Connector group](connectorgroup.md)

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Service root",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->



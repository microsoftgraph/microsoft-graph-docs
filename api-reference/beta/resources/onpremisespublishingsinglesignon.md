---
title: "kerberosSignOnSettings resource type"
description: "Represents the single-sign on settings for an on-premises application published via Application Proxy."
localization_priority: Normal
author: "japere"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# onPremisesPublishingSingleSignOn resource type

Represents the single-sign on settings for the [onPremisesPublishing](onpremisespublishing.md) resource when publishing an on-premises application with Application Proxy. Application Proxy supports the following single-sign on modes: KCD, header-based, and SAML. For more information on the different single-sign on options see [Single sign-on to applications in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/manage-apps/what-is-single-sign-on).
When setting the single-sign on mode for on-premises applications you must use this property. Do not use set this property on the [serviceprincipal](serviceprincipal.md) except for SAML. <!-- need to clarify this should go to: https://github.com/sureshja/microsoft-graph-docs/blob/spcore/api-reference/beta/resources/samlsinglesignonsettings.md-->

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|KerberosSignOnSettings| [kerberosSignOnSettings](kerberossignonsettings.md)| The Keberos Constrained Delegation (KCD) settings for the application. |
|SingleSignOnMode|String| The preferred single-sign on mode for the application. Possible values are: `none`, `onPremisesKerberos`, `headerBased`, `saml`.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onPremisesPublishingSingleSignOn",
  "baseType": null
}-->

```json
{
  "KerberosSignOnSettings": {"@odata.type": "microsoft.graph.kerberosSignOnSettings"},
  "SingleSignOnMode": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "onPremisesPublishingSingleSignOn resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
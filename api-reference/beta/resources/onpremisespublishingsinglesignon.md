---
title: "kerberosSignOnSettings resource type"
description: "Represents the single-sign on settings for an on-premises application published via Application Proxy."
localization_priority: Normal
author: "japere"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# onPremisesPublishingSingleSignOn resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the single-sign on settings for the [onPremisesPublishing](onpremisespublishing.md) resource when publishing an on-premises application with Application Proxy. This resource is used for the Integrated Windows Authentication and header-based authentication mode.

Do not use this property for configuring SAML single-sign on. If you are using SAML this must be set using [samlSingleSignOnSettings](samlsinglesignonsettings.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|KerberosSignOnSettings| [kerberosSignOnSettings](kerberossignonsettings.md)| The KCD  settings for the application. |
|SingleSignOnMode|String| The preferred single-sign on mode for the application. Possible values are: `none`, `onPremisesKerberos`, `headerBased`.|

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
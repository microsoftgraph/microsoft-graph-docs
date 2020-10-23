---
title: "cloudAppSecuritySessionControl resource type"
description: "Session control used to enforce cloud app security checks."
localization_priority: Normal
author: "videor"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# cloudAppSecuritySessionControl resource type

Namespace: microsoft.graph

Session control used to enforce cloud app security checks. Inehrits from [Conditional Access Session Control](conditionalaccesssessioncontrol.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|isEnabled     |Boolean      | Specifies whether the session control is enabled. |
|cloudAppSecurityType|String| Possible values are: `mcasConfigured`, `monitorOnly`, `blockDownloads`, `unknownFutureValue`. For more information, see [Deploy Conditional Access App Control for featured apps](/cloud-app-security/proxy-deployment-aad). |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.cloudAppSecuritySessionControl",
  "baseType": "microsoft.graph.conditionalAccessSessionControl"
}-->

```json
{
  "isEnabled": true,
  "cloudAppSecurityType": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "cloudAppSecuritySessionControl resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
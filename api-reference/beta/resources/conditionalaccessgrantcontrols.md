---
title: "conditionalAccessGrantControls resource type"
description: "Represents grant controls that must be fulfilled to pass the policy."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

# conditionalAccessGrantControls resource type

Represents grant controls that must be fulfilled to pass the policy.

## Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| `operator` | String | Defines the relationship of the grant controls. Possible values: `AND`, `OR`. |
| `builtInControls` | conditionalAccessGrantControl collection | List of values of built-in controls specified by the policy. Possible values: `Block`, `Mfa`, `CompliantDevice`, `DomainJoinedDevice`, `ApprovedApplication`, `CompliantApplication` |
| `customAuthenticationFactors` | String collection | List of custom controls IDs specified by the policy. |
| `termsOfUse` | String collection | List of terms of use specified by the policy. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "operator",
    "customAuthenticationFactors"
  ],
  "@odata.type": "microsoft.graph.conditionalaccessgrantcontrols"
}-->

```JSON
{
  "operator": "String",
  "builtInControls": [ { "@odata.type": "microsoft.graph.conditionalAccessGrantControl" } ],
  "customAuthenticationFactors": [ "String" ],
  "termsOfUse": [ "String" ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "conditionalaccessgrantcontrols resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
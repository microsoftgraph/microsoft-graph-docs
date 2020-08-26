---
title: "resourceAttribute resource type"
description: "The types used in the attributes of an access package resource."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# resourceAttribute resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used in the attributes property of an [access package resource](accesspackageresource.md).

## Properties

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| id | String | ID of the resourceAttribute. |
| attributeName | String | name of the attribute. |
| attributeSource | [resourceAttributeSource](resourceattributesource.md)| Source of the attribute. |
| attributeDestination | [resourceAttributeDestination](resourceattributedestination.md) | Destination of the attribute. |

## JSON representation

The following is a JSON representation of a resourceAttribute.  

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.resourceAttribute",
  "baseType": ""
}-->

```json
{
    "id": "f56d8bd7-0577-420c-81ee-df51c8be170a",
    "attributeName": "string"
}
```



<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "resourceAttribute resource type",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

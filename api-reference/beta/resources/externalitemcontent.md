---
title: "externalItemContent resource type"
description: "The content of an item indexed via a Microsoft Search connection."
localization_priority: Normal
author: "snlraju-msft"
ms.prod: "search"
doc_type: "resourcePageType"
---

# externalItemContent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The content of an [externalItem](externalitem.md) indexed via a Microsoft Search [connection](externalconnection.md).

## Properties

| Property | Type   | Description                                                                                 |
|:---------|:-------|:--------------------------------------------------------------------------------------------|
| value    | String | The content for the externalItem. Required.                                                 |
| type     | String | The type of content in the value property. Possible values are `text` and `html`. Required. |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.externalItemContent"
}-->

```json
{
  "value": "String",
  "type": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "externalItemContent resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}-->



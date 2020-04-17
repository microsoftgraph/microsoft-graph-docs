---
title: "schema resource type"
description: "Describes the type of content and how to index each property in items in a Microsoft Search connection."
localization_priority: Normal
author: "snlraju-msft"
ms.prod: "search"
doc_type: "resourcePageType"
---

# schema resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the type of content and how to index each property in items in a Microsoft Search [connection](externalconnection.md).

[!INCLUDE [search-api-preview](../../includes/search-api-preview-signup.md)]

## Methods

| Method                                                    | Return Type                   | Description |
|:----------------------------------------------------------|:------------------------------|:--|
| [Create schema](../api/externalconnection-post-schema.md) | None *or* [schema](schema.md) | Register connection schema. |
| [Get schema](../api/schema-get.md)                        | [schema](schema.md)           | Read properties of a schema object. |

## Properties

| Property   | Type                               | Description                |
|:-----------|:-----------------------------------|:---------------------------|
| baseType   | String                             | Must be set to `microsoft.graph.externalItem`. Required. |
| properties | [property](property.md) collection | The properties defined for the items in the connection. The minimum number of properties is one, the maximum is 64. |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.schema",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "baseType": "String",
  "id": "String (identifier)",
  "properties": [{"@odata.type": "microsoft.graph.property"}]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "schema resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

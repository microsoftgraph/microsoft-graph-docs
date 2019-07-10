---
title: "taxGroup resource type"
description: "Represents an taxGroup object in Dynamics 365 Business Central."
localization_priority: Normal
author: "SusanneWindfeldPedersen,henrikwh"
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# taxGroup resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an taxGroup object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get taxGroup](../api/dynamics-taxgroup-get.md) | [taxGroup](dynamics-taxgroup.md) | Read properties and relationships of taxGroup object. |
| [Update](../api/dynamics-taxgroup-update.md) | [taxGroup](dynamics-taxgroup.md) | Update taxGroup object. |
| [Delete](../api/dynamics-taxgroup-delete.md) | None | Delete taxGroup object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|string|The unique ID of the taxGroup. Read-Only.|
|code|string|Specifies the tax group.|
|displayName|string|Specifies the tax group display name.|
|taxType|string|Specifies the tax type for the group.|
|lastModifiedDateTime|datetime|The last datetime the tax group was modified. Read-Only.|  

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.taxGroup",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "code": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "taxType": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "taxGroup resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
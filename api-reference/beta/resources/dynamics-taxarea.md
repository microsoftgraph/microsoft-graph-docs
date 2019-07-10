---
title: "taxArea resource type"
description: "Represents an taxArea object in Dynamics 365 Business Central."
localization_priority: Normal
author: henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# taxArea resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an taxArea object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get taxArea](../api/dynamics-taxarea-get.md) | [taxArea](dynamics-taxarea.md) | Read properties and relationships of taxArea object. |
| [Update](../api/dynamics-taxarea-update.md) | [taxArea](dynamics-taxarea.md) | Update taxArea object. |
| [Delete](../api/dynamics-taxarea-delete.md) | None | Delete taxArea object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|string|The unique ID of the tax area. Non-editable.|
|code|string, maximum size 20| The code of the tax area.|
|displayName|string, maximum size 50| The display name of the tax area.|
|taxType|string|The tax type of the tax area.|
|lastModifiedDateTime|datetime|The last datetime the tax area was modified. Read-Only.|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.taxArea",
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
  "description": "taxArea resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
---
title: "itemPhone resource type"
description: "itemPhone resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# itemPhone resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information about phone numbers associated with a user in various services.

## Methods

| Method                                     | Return Type               | Description                                            |
|:-------------------------------------------|:--------------------------|:-------------------------------------------------------|
| [Get itemPhone](../api/itemphone-get.md)   | [itemPhone](itemphone.md) | Read the properties and relationships of an **itemPhone** object. |
| [Update itemPhone](../api/itemphone-update.md)       | [itemPhone](itemphone.md) | Update an **itemPhone** object.                               |
| [Delete itemPhone](../api/itemphone-delete.md)       | None                      | Delete an **itemPhone** object.                               |

## Properties

| Property     | Type        | Description                                                                                                                     |
|:-------------|:------------|:--------------------------------------------------------------------------------------------------------------------------------|
|displayName   |String       | Contains a friendly name for the phone number.                                                                                  |
|number        |String       | Contains the phone number.                                                                                                       |
|type          |string       | Possible values are: `home`, `business`, `mobile`, `other`, `assistant`, `homeFax`, `businessFax`, `otherFax`, `pager`, `radio`.|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.itemPhone",
  "baseType": ""
}-->

```json
{
  "displayName": "String",
  "number": "String",
  "type": "string"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "itemPhone resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

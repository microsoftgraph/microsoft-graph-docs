---
author: JeremyKelley
description: "The Deleted resource indicates that the item has been deleted."
ms.date: 09/10/2017
title: Deleted
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
---
# Deleted facet

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **Deleted** resource indicates that the item has been deleted.
In this version of the API, the presence (non-null) of the resource value indicates that the file was deleted.
A null (or missing) value indicates that the file is not deleted.

See [view changes for an item](../api/driveitem-delta.md) for more information on tracking changes and finding deleted items.

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  "state"
  ],
  "@odata.type": "microsoft.graph.deleted"
}-->
```json
{
  "state": "string"
}
```
## Properties

| Property | Type   | Description                               |
|:---------|:-------|:------------------------------------------|
| state    | String | Represents the state of the deleted item. |

## Remarks 

For more information about the facets on a DriveItem, see [DriveItem](driveitem.md).


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "The deleted facet providers properties about deleted items",
  "keywords": "deleted,delete,item,facet",
  "section": "documentation",
  "tocPath": "Facets/Deleted",
  "suppressions": []
}
-->



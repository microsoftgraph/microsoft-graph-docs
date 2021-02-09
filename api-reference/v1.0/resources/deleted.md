---
author: JeremyKelley
ms.author: JeremyKelley
ms.date: 09/10/2017
title: Deleted
localization_priority: Normal
description: "The Deleted resource indicates that the item has been deleted."
ms.prod: ""
doc_type: resourcePageType
---

# Deleted facet

Namespace: microsoft.graph

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

<!-- {
  "type": "#page.annotation",
  "description": "The deleted facet providers properties about deleted items",
  "keywords": "deleted,delete,item,facet",
  "section": "documentation",
  "tocPath": "Facets/Deleted"
} -->


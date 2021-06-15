---
author: learafa
description: "The removed facet providers properties about deleted items"
title: "removed"
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: apiPageType
---

# removed facet
The **Removed** object annotation indicates that the item has been deleted.
In the tracking changes api, the presence (non-null) of the annotation with a reason property indicates that the file was deleted.

## JSON representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "optionalProperties": [
  "reason"
  ],
  "@odata.type": "microsoft.graph.removed"
}-->
```json
{
  "reason": "string"
}
```

## Properties
| Property | Type   | Description                               |
|:---------|:-------|:------------------------------------------|
| reason    | String | Represents the reason of removal of the item. |

<!-- {
  "type": "#page.annotation",
  "description": "The removed facet providers properties about deleted items",
  "keywords": "removed,remove,deleted,delete,item,site,listitem,facet",
  "section": "documentation",
  "tocPath": "Facets/Removed"
} -->

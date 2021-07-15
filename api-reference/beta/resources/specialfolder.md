---
author: JeremyKelley
description: "Groups special folder-related data items into a single structure."
title: specialFolder resource type
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "sites-and-lists"
---
# specialFolder resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Groups special folder-related data items into a single structure.

If a **driveItem** has a non-null **specialFolder** facet, the item represents a special (named) folder.
Special folders can be accessed directly via the [special folders collection](../api/drive-get-specialfolder.md).

Special folders provide simple aliases to access well-known folders without the need to look up the folder by path (which would require localization), or reference the folder with an ID.
If a special folder is renamed or moved to another location within the drive, this syntax will continue to return that folder.

Special folders are automatically created the first time an application attempts to write to one, if it doesn't already exist.
If a user deletes one, it is recreated when written to again.

[!INCLUDE [files-special-folder-list](../includes/files-special-folder-list.md)]

>**Note:** If your app has only requested **Files.Read** scope and requests a special folder that doesn't exist, the response will be a `403 Forbidden` error.

## Properties

| Property  | Type   | Description                                                            |
|:----------|:-------|:-----------------------------------------------------------------------|
| name      | string | The unique identifier for this item in the `/drive/special` collection |


## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.specialFolder"
}-->
```json
{
  "name": "string"
}
```

## See also 

For more information about the facets on a driveItem, see [driveItem](driveitem.md).


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "The SpecialFolder facet provides information about folders accessible as special folders.",
  "keywords": "special folder,item,facet",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->



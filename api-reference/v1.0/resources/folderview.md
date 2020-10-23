---
author: JeremyKelley
ms.author: JeremyKelley
ms.date: 09/10/2017
title: FolderView
localization_priority: Normal
description: "The FolderView resource provides or sets recommendations on the user-experience of a folder."
ms.prod: ""
doc_type: resourcePageType
---

# FolderView resource type

Namespace: microsoft.graph

The **FolderView** resource provides or sets recommendations on the user-experience of a folder.

It is available from the [folder][folder-facet] property of [driveItem][item-resource] resources.

## JSON representation

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.folderView" } -->

```json
{
  "sortBy": "default | name | type | size | takenOrCreatedDateTime | lastModifiedDateTime | sequence",
  "sortOrder": "ascending | descending",
  "viewType": "default | icons | details | thumbnails"
}
```

## Properties

| Property name         | Type   | Description
|:----------------------|:-------|:--------------------------------------------
| **sortBy**            | string | The method by which the folder should be sorted.
| **sortOrder**         | string | If true, indicates that items should be sorted in descending order. Otherwise, items should be sorted ascending.
| **viewType**          | string | The type of view that should be used to represent the folder.

You can use the _sortBy_ property to control the sort order of the items in applications that respect the **viewType** facet.

### sortBy options

The following values are defined for the **sortBy** property.

| Value                    | Description
| ------------------------ | --------------------------------------------------
| `default`                | The default sort order of the application.
| `name`                   | Items should be arranged by the **name** property of the items.
| `type`                   | Items should be arranged by the type of item.
| `size`                   | Items should be arranged by the **size** property of the items.
| `takenOrCreatedDateTime` | Items should be arranged by the **takenDateTime** property of the **photo** facet. If not available, the **createdDateTime** property should be used.
| `lastModifiedDateTime`   | Items should be arranged by the **lastModifiedDateTime** property of the items.
| `sequence`               | Items follow a custom sequence specified by the user.


### sortOrder options

The following values are defined for the **sortOrder** property.

| Value        | Description
| ------------ | --------------------------------------------------------------
| `ascending`  | Items should be arranged in ascending order.
| `descending` | Items should be arranged in descending order.


### viewType options

The following values are defined for the **viewType** property.

| Value        | Description
| ------------ | --------------------------------------------------------------
| `default`    | The default view type for the application.
| `icons`      | A view that uses icons to represent driveItems.
| `details`    | A view with multiple columns that provide additional details about each item.
| `thumbnails` | A view that uses larger thumbnails of driveItems to represent the items.


[item-resource]: driveitem.md
[folder-facet]: folder.md

<!-- {
  "type": "#page.annotation",
  "description": "The FolderView facet provides or sets recommendations on the user-experience of a folder.",
  "keywords": "view, folderview, sortby, sortorder, viewtype, coversourceid, folder",
  "section": "documentation",
  "suppressions": [
    "Warning: /api-reference/v1.0/resources/folderview.md:
      Found potential enums in resource example that weren't defined in a table:(default,icons,details,thumbnails) are in resource, but () are in table",
    "Warning: /api-reference/v1.0/resources/folderview.md:
      Found potential enums in resource example that weren't defined in a table:(default,name,type,size,takenOrCreatedDateTime,lastModifiedDateTime,sequence) are in resource, but () are in table",
    "Warning: /api-reference/v1.0/resources/folderview.md:
      Found potential enums in resource example that weren't defined in a table:(ascending,descending) are in resource, but () are in table"
  ],
  "tocPath": "Facets/FolderView"
} -->


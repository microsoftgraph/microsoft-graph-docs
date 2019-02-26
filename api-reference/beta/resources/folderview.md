---
author: rgregg
ms.author: rgregg
ms.date: 09/10/2017
title: FolderView
localization_priority: Normal
---
# FolderView resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **FolderView** resource provides or sets recommendations on the user-experience of a folder.

It is available from the [folder][folder-facet] property of [driveItem][item-resource] resources.

## JSON representation

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.folderView" } -->

```json
{
  "sortBy": "default | name | type | size | takenOrCreatedDateTime | lastModifiedDateTime | sequence",
  "sortDescending": "ascending | descending",
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

### sortBy values

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


### sortOrder values

The following values are defined for the **sortOrder** property.

| Value        | Description
| ------------ | --------------------------------------------------------------
| `ascending`  | Items should be arranged in ascending order.
| `descending` | Items should be arranged in descending order.


### viewType values

The following values are defined for the **viewType** property.

| Value        | Description
| ------------ | --------------------------------------------------------------
| `default`    | The default view type for the application.
| `icons`      | A view that uses icons to represent driveItems.
| `details`    | A view with multiple columns that provide additional details about each item.
| `thumbnails` | A view that uses larger thumbnails of driveItems to represent the items.


[item-resource]: driveitem.md
[folder-facet]: folder.md

<!-- uuid: f9e446fd-190b-4692-a605-bb60e78f1f19
2017-05-03 02:34:40 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "folderView resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/folderview.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->

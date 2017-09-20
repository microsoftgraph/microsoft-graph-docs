---
author: rgregg
ms.author: rgregg
ms.date: 09/10/2017
title: Folder
---
# Folder resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **Folder** resource groups folder-related data on an item into a single structure. 
[**DriveItems**](driveitem.md) with a non-null **folder** facet are containers for other DriveItems.

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.folder"
}-->

```json
{
  "childCount": 1024,
  "view": { "@odata.type": "microsoft.graph.folderView" }
}
```

## Properties

| Property       | Type           | Description
|:---------------|:---------------|:-------------------------------------------
| **childCount** | Int64          | Number of children contained immediately within this container.
| **view**       | [folderView][] | A collection of properties defining the recommended view for the folder.


## Remarks 

For more information about the facets on a DriveItem, see [DriveItem][].

[folderView]: folderView.md
[DriveItem]: driveItem.md

<!-- {
  "type": "#page.annotation",
  "description": "folder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

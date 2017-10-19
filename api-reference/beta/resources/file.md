---
author: rgregg
ms.author: rgregg
ms.date: 09/10/2017
title: File
---
# File resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **File** resource groups file-related data items into a single structure.

If a [**DriveItem**](driveitem.md) has a non-null **file** facet, the item represents an file.
In addition to other properties, files have a **content** relationship which contains the byte stream of the file.

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@odata.type": "microsoft.graph.file"
}-->

```json
{
  "hashes": {"@odata.type": "microsoft.graph.hashes"},
  "mimeType": "string"
}
```

## Properties

| Property | Type                    | Description                                                                                                                                      |
|:---------|:------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------|
| hashes   | [HashesType](hashes.md) | Hashes of the file's binary content, if available. Read-only.                                                                                    |
| mimeType | string                  | The MIME type for the file. This is determined by logic on the server and might not be the value provided when the file was uploaded. Read-only. |

## Remarks 

For more information about the facets on a DriveItem, see [DriveItem](driveitem.md).

<!-- {
  "type": "#page.annotation",
  "description": "The file facet describes properties of a file",
  "keywords": "file,item,facet",
  "section": "documentation",
  "tocPath": "Facets/File"
} -->

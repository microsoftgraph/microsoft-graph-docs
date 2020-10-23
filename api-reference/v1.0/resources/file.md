---
author: JeremyKelley
ms.date: 09/10/2017
title: File resource thype
localization_priority: Normal
description: "The File resource groups file-related data items into a single structure."
ms.prod: "sharepoint"
doc_type: resourcePageType
---

# File resource type

Namespace: microsoft.graph

The **File** resource groups file-related data items into a single structure.

If a [**DriveItem**](driveitem.md) has a non-null **file** facet, the item represents a file.
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
| hashes   | [Hashes](hashes.md) | Hashes of the file's binary content, if available. Read-only.                                                                                    |
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


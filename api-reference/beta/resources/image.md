---
author: JeremyKelley
description: "The Image resource groups image-related properties into a single structure."
ms.date: 09/10/2017
title: Image
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
---
# Image resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **Image** resource groups image-related properties into a single structure.
If a [**DriveItem**](driveitem.md) has a non-null **image** facet, the item represents a bitmap image.

**Note:** If the service is unable to determine the width and height of the image, the **Image** resource may be empty.

## JSON representation

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.image" } -->
```json
{
  "width": 100,
  "height": 200
}
```

## Properties

| Property   | Type  | Description                                |
|:-----------|:------|:-------------------------------------------|
| **height** | Int32 | Optional. Height of the image, in pixels. Read-only. |
| **width**  | Int32 | Optional. Width of the image, in pixels. Read-only.  |

## Remarks

In OneDrive for Business, this resource is returned on items that are expected to be images based on file extension.

For more information about the facets on a DriveItem, see [DriveItem](driveitem.md).


<!--
{
  "type": "#page.annotation",
  "description": "The image facet describes properties of an image like width and height",
  "keywords": "image,width,height,item,facet",
  "section": "documentation",
  "tocPath": "Facets/Image",
  "suppressions": []
}
-->



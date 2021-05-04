---
author: swapnil1993
title: "hyperlinkOrPictureColumn resource type" 
description: "The hyperlinkOrPictureColumn resource indicates that the column contains URL data which can be an achortag or an image that serves as a hyperlink."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "sites-and-lists"
---
# hyperlinkOrPictureColumn resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Indicates that the column contains URL data which can be an achortag or an image that serves as a hyperlink.


## Properties

| Property name      | Type               | Description
|:-------------------|:-------------------|:----------------------------------------------
| isPicture       | Boolean             | Specifies whether the display format used for URL columns is an image or a hyperlink. 


## JSON representation

Here is a JSON representation of a **hyperlinkOrPictureColumn** resource.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.hyperlinkOrPictureColumn" } -->

```json
{
  "isPicture": false
}
```
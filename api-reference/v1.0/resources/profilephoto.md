---
title: "profilePhoto resource type"
description: "A profile photo of a user, group or an Outlook contact accessed from Exchange Online. It's binary data not encoded in base-64."
localization_priority: Priority
author: "kevinbellinger"
ms.prod: ""
doc_type: resourcePageType
---

# profilePhoto resource type

Namespace: microsoft.graph

A profile photo of a user, group or an Outlook contact accessed from Exchange Online. It's binary data not encoded in base-64.

The supported sizes of HD photos on Exchange Online are as follows: '48x48', '64x64', '96x96', '120x120',
'240x240', '360x360','432x432', '504x504', and '648x648'.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get profilePhoto](../api/profilephoto-get.md) | [profilePhoto](profilephoto.md) |Get the specified **profilePhoto** or its metadata (profilePhoto properties).|
|[Update](../api/profilephoto-update.md) | [profilePhoto](profilephoto.md)  |Assign a photo to the specified user, group, or contact. The photo should be in binary. It replaces the existing photo, if any.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string|Read-only.|
|height|int32|The height of the photo. Read-only.|
|width|int32|The width of the photo. Read-only.|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [],
  "isMediaEntity": true,
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.profilePhoto"
}-->

```json
{
  "id": "240X240",
  "height": 240,
  "width": 240
}
```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "profilePhoto resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


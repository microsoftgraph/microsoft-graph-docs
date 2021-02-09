---
title: "timeStamp resource type"
description: "Date and time information for a point in time."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "JeremyKelley"
---

# timeStamp resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Date and time information for a point in time.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.timeStamp"
}-->

```json
{
  "date": "String (timestamp)",
  "time": "String (timestamp)",
  "timeZone": "string"
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|date|Date|The date portion of the timestamp.|
|time|TimeOfDay|The time portion of the timestamp.|
|timeZone|String|The timezone portion of the timestamp, which is one of the 24 longitudinal areas in the world.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "timeStamp resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->



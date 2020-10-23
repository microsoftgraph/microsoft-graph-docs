---
title: "customTimeZone resource type"
description: "Represents a time zone where the transition from standard to daylight saving time, or vice versa is not standard."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "svpsiva"
---

# customTimeZone resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a time zone where the transition from standard to daylight saving time, or vice versa is not standard.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| bias | Edm.Int32 | The time offset of the time zone from Coordinated Universal Time (UTC). This value is in minutes. Time zones that are ahead of UTC have a positive offset; time zones that are behind UTC have a negative offset.|
| daylightOffset | [daylightTimeZoneOffset](daylighttimezoneoffset.md) | Specifies when the time zone switches from standard time to daylight saving time. |
| name | string | The name of the custom time zone. |
| standardOffset | [standardTimeZoneOffset](standardtimezoneoffset.md) | Specifies when the time zone switches from daylight saving time to standard time. |


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.customTimeZone"
}-->

```json
{
  "bias": "Int32",
  "daylightOffset": {"@odata.type": "microsoft.graph.daylightTimeZoneOffset"},
  "name": "string",
  "standardOffset": {"@odata.type": "microsoft.graph.standardTimeZoneOffset"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "customTimeZone resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->



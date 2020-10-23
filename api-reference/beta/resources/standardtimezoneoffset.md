---
title: "standardTimeZoneOffset resource type"
description: "Specifies when a time zone switches from daylight saving time to standard time."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "svpsiva"
---

# standardTimeZoneOffset resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies when a time zone switches from daylight saving time to standard time.

For example, if a time zone is specified with the following properties:

- **dayOccurrence** is 3
- **dayOfWeek** is "Sunday"
- **month** is 10
- **time** is 02:00:00
_ **year** is 0
That means the transition from daylight saving time to standard occurs at 2 AM on the third Sunday of October, every year.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| dayOccurrence | Edm.Int32 | Represents the nth occurrence of the day of week that the transition from daylight saving time to standard time occurs. |
| dayOfWeek | string | Represents the day of the week when the transition from daylight saving time to standard time. |
| month | Edm.Int32 | Represents the month of the year when the transition from daylight saving time to standard time occurs. |
| time | Edm.TimeOfDay | Represents the time of day when the transition from daylight saving time to standard time occurs. |
| year | Edm.Int32 | Represents how frequently in terms of years the change from daylight saving time to standard time occurs. For example, a value of 0 means every year.|


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.standardTimeZoneOffset"
}-->

```json
{
  "dayOccurrence": "Int32",
  "dayOfWeek": "string",
  "month": "Int32",
  "time": "TimeOfDay",
  "year": "Int32"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "standardTimeZoneOffset resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->



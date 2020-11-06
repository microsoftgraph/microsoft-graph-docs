---
title: "recurrencePattern resource type"
description: "Describes the frequency by which a recurring event repeats."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "harini84"
---

# recurrencePattern resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the frequency by which a recurring [event](event.md) repeats.

You can specify the recurrence pattern of a recurring event in one of 6 ways depending on your scenario. For each pattern type, specify the amount of time between occurrences. The actual occurrences of the recurring event always follow this pattern falling within the date range that you specify for the event. A recurring event is always defined by its **recurrencePattern** (how frequently the event repeats), and its [recurrenceRange](recurrencerange.md) (over how long the event repeats).

Use the **type** property to specify the different types of **recurrencePattern**, and the **interval** property to specify the time between occurrences, which can be in number of days, weeks, months, or years, depending on the **type**. Note which properties are required for each type, as described in the following table.

> **Note** Include only the properties that you need for a recurrence pattern. Any property that you include that does not have a supported value would result in an error.

| Type of recurrence pattern | Value of type property | Description | Example | Required properties |
|:---------------|:--------|:--------|:--------|:----------|
| Daily | `daily` | Event repeats based on the number of days specified by **interval** between occurrences. | Repeat event every 3 days. | **type**, **interval** |
| Weekly | `weekly` | Event repeats on the same day or days of the week, based on the number of weeks between each set of occurrences. | Repeat event Monday and Tuesday of every other week. | **type**, **interval**, **daysOfWeek**, **firstDayOfWeek** |
| Absolute monthly | `absoluteMonthly` | Event repeats on the specified day of the month (e.g. the 15th), based on the number of months between occurrences. | Repeat event quarterly (every 3 months) on the 15th. | **type**, **interval**, **dayOfMonth** |
| Relative monthly | `relativeMonthly` | Event repeats on the specified day or days of the week, in the same relative position in the month, based on the number of months between occurrences. | Repeat event on the second Thursday or Friday every three months. | **type**, **interval**, **daysOfWeek** |
| Absolute yearly | `absoluteYearly` | Event repeats on the specified day and month, based on the number of years between occurrences. | Repeat event on the 15th of March every 3 years. | **type**, **interval**, **dayOfMonth**, **month** |
| Relative yearly | `relativeYearly` | Event repeats on the specified day or days of the week, in the same relative position in a specific month of the year, based on the number of years between occurrences. | Repeat event on the second Thursday or Friday of every November every 3 years. | **type**, **interval**, **daysOfWeek**, **month** |


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|dayOfMonth|Int32|The day of the month on which the event occurs. Required if **type** is `absoluteMonthly` or `absoluteYearly`. |
|daysOfWeek|String collection|A collection of the days of the week on which the event occurs. Possible values are: `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`. <br>If **type** is `relativeMonthly` or `relativeYearly`, and **daysOfWeek** specifies more than one day, the event falls on the first day that satisfies the pattern. <br> Required if **type** is `weekly`, `relativeMonthly`, or `relativeYearly`.|
|firstDayOfWeek|String|The first day of the week. Possible values are: `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`. Default is `sunday`. Required if **type** is `weekly`. |
|index|String|Specifies on which instance of the allowed days specified in **daysOfsWeek** the event occurs, counted from the first instance in the month. Possible values are: `first`, `second`, `third`, `fourth`, `last`. Default is `first`. Optional and used if **type** is `relativeMonthly` or `relativeYearly`. |
|interval|Int32|The number of units between occurrences, where units can be in days, weeks, months, or years, depending on the **type**. Required. |
|month|Int32|The month in which the event occurs.  This is a number from 1 to 12.|
|type|String|The recurrence pattern type: `daily`, `weekly`, `absoluteMonthly`, `relativeMonthly`, `absoluteYearly`, `relativeYearly`. Required.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.recurrencePattern"
}-->

```json
{
  "dayOfMonth": 1024,
  "daysOfWeek": ["String"],
  "firstDayOfWeek": "String",
  "index": "String",
  "interval": 1024,
  "month": 1024,
  "type": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "recurrencePattern resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->



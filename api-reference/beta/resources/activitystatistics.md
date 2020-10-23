---
title: "activityStatistics resource type"
description: "Represents time spent on work activities, including email, meetings, focus work, chats, and calls."
localization_priority: Normal
author: "madehmer"
ms.prod: "insights"
doc_type: "resourcePageType"
---

# activityStatistics resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents time spent by a user on various work activities during and outside of working hours, for the specified time range in the request, which uses an aggregation period of one day.

The following types of statistics are derived from **activityStatistics**:

* [Call](callactivitystatistics.md)
* [Chat](chatactivitystatistics.md)
* [Email](emailactivitystatistics.md)
* [Focus](focusactivitystatistics.md)
* [Meeting](meetingactivitystatistics.md)

<!--  removing per Mathew 2/6/2020   ### Activity id property

In an HTTP request, to get a specific type of activity statistics within a date range, you can express this information as an ID to the user's collection of activityStatistics in the following format, where `{startdate}` and `{enddate}` are expressed in ISO 8601 calendar date format and `{activity}` can be "call", "chat", "email", "focus", or "meeting":

```
{activity}_{startdate}_{enddate}
```

For example, the ID "email_2019-08-10_2019-08-12" represents the emailActivityStatistics for the specified user between August 10, 2019 and August 12, 2019.
-->
## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List activityStatistics](../api/activitystatistics-list.md) | [activityStatistics](activitystatistics.md) | Retrieve the properties for the collection of activity statistics for a user, for the last complete week. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|activity |analyticsActivityType |The type of activity for which statistics are returned. The possible values are: `call`, `chat`, `email`, `focus`, and `meeting`. |
|duration |Duration |Total hours spent on the activity. The value is represented in ISO 8601 format for durations. |
|endDate |Date |Date when the activity ended, expressed in ISO 8601 format for calendar dates. For example, the property value could be "2019-07-03" that follows the YYYY-MM-DD format. |
|id |String |Read-only ID for the activity. Do not parse or customize the value for your scenarios. |
|startDate |Date |Date when the activity started, expressed in ISO 8601 format for calendar dates. For example, the property value could be "2019-07-04" that follows the YYYY-MM-DD format. |
|timeZoneUsed |String |The time zone that the user sets in Microsoft Outlook is used for the computation. For example, the property value could be "Pacific Standard Time." |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- { 
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.activityStatistics",
  "keyProperty": "id"
}-->

```json
{
  "activity": "String",
  "duration": "String (ISO 8601 duration)",
  "endDate": "String (ISO 8601 format)",
  "id": "String (identifier)",
  "startDate": "String (ISO 8601 format)",
  "timeZoneUsed": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "activityStatistics resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}--> 


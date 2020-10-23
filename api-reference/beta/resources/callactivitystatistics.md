---
title: "callActivityStatistics resource type"
description: "Represents information about call activities for users."
localization_priority: Normal
author: "madehmer"
ms.prod: "insights"
doc_type: "resourcePageType"
---

# callActivityStatistics resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents data about the user's time spent in call activities on Microsoft Teams or Skype for Business. This is based on [activityStatistics](../resources/activitystatistics.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|activity|analyticsActivityType| Call activity for which statistics are returned.|
|duration|Duration|Total hours spent on calls. The value is represented in ISO 8601 format for durations.|
|endDate|Date|Date when the call activity ended. The value is represented in ISO 8601 format for calendar dates. For example, the property value could be "2019-07-04" that follows the YYYY-MM-DD format.|
|id|String| Read-only ID for the call activity.|
|startDate|Date|Date when the call activity started. The value is represented in ISO 8601 format for calendar dates. For example, the property value could be "2019-07-03" that follows the YYYY-MM-DD format.|
|timeZoneUsed|String|The time zone that the user sets in Microsoft Outlook calendar is used for the computation. For example, the property value could be "Pacific Standard Time."|
|afterHours|Duration|Time spent on calls outside of working hours, which is based on the user's Outlook calendar setting for work hours. The value is represented in ISO 8601 format for durations. |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.activityStatistics",
  "keyProperty": "id", 
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.callActivityStatistics"
}--> 

```json
{
  "activity": "string",
  "duration": "String (ISO 8601 duration)",
  "endDate": "String (ISO 8601)",
  "id": "String (identifier)",
  "startDate": "String (ISO 8601)",
  "timeZoneUsed": "String",
  "afterHours": "String (ISO 8601 duration)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "callActivityStatistics resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


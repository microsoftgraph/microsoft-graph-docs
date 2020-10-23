---
title: "focusActivityStatistics resource type"
description: "Represents information about individual focus work for users"
localization_priority: Normal
author: "madehmer"
ms.prod: "insights"
doc_type: "resourcePageType"
---

# focusActivityStatistics resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents data about the user's time available for focus work. This is based on [activityStatistics](../resources/activitystatistics.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|activity|analyticsActivityType| Focus activity for which statistics are returned.|
|duration|Duration|Total sum of focus hours, which is equal to all time blocks of at least two consecutive hours, in a user's Microsoft Outlook calendar without a meeting with other people within the user's set work hours. The value is represented in ISO 8601 format for durations.|
|endDate|Date|Date when the focus activity ended. The value is represented in ISO 8601 format for calendar dates. For example, the property value could be "2019-07-04" that follows the YYYY-MM-DD format.|
|id|String| Read-only ID for the focus activity.|
|startDate|Date|Date when the focus activity started. The value is represented in ISO 8601 format for calendar dates. For example, the property value could be "2019-07-03" that follows the YYYY-MM-DD format.|
|timeZoneUsed|String|The time zone that the user sets in Outlook calendar is used for the computation. For example, the property value could be "Pacific Standard Time."|

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
  "@odata.type": "microsoft.graph.focusActivityStatistics"
}--> 

```json
{
  "activity": "string",
  "duration": "String (ISO 8601 duration)",
  "endDate": "String (ISO 8601)",
  "id": "String (identifier)",
  "startDate": "String (ISO 8601)",
  "timeZoneUsed": "String"
  }
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "focusActivityStatistics resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


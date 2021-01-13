---
title: "regionalFormatOverrides resource type"
description: "A resource representing regional formatting overrides for calendars, dates, and times."
localization_priority: Normal
author: "jasonbro"
ms.prod: "settings"
doc_type: resourcePageType
---
# regionalFormatOverrides resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A collection of strings representing formatting overrides for calendars, dates, and times. 

## Properties

|Property             |Type                 |Description                                                    |
|---------------------|---------------------|---------------------------------------------------------------|
|calendar             |String               |The calendar to use, e.g., Gregorian Calendar.<br><br>Returned by default.|                   
|firstDayOfWeek       |String               |The first day of the week to use, e.g., Sunday.<br><br>Returned by default.|
|shortDateFormat      |String               |The short date time format to be used for displaying dates.<br><br>Returned by default.|
|longDateFormat       |String               |The long date time format to be used for displaying dates.<br><br>Returned by default.|
|shortTimeFormat      |String               |The short time format to be used for displaying time.<br><br>Returned by default.|
|longTimeFormat       |String               |The long time format to be used for displaying time.<br><br>Returned by default.|
|timeZone             |String               |The timezone to be used for displaying time.<br><br>Returned by default.|

## JSON representation

The following is a JSON definition of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.regionalFormatOverrides"
}-->

```json
{
    "calendar": "string",
    "firstDayOfWeek": "string",
    "shortDateFormat": "string",
    "longDateFormat": "string",
    "shortTimeFormat": "string",
    "longTimeFormat": "string",
    "timeZone": "string"
}
```
<!-- {
  "type": "#page.annotation",
  "description": "regionalFormatOverride resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->



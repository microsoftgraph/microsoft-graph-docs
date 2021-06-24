---
title: "timeClockSettings resource type"
description: "Represents timeclock settings for a schedule."
author: "akumar39"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# timeClockSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents timeclock settings for a [schedule](schedule.md).

## Properties
|Property               |Type           |Description                                                                |
|-----------------------|---------------|---------------------------------------------------------------------------|
| approvedLocation | [geoCoordinates](geocoordinates.md)  |The aprroved location of the **timeClock**. |


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.timeClockSettings"
}-->
```json
{ 
   "approvedLocation": {

           "altitude": {"@odata.type": "microsoft.graph.GeoCoordinates"},

           "latitude": {"@odata.type": "microsoft.graph.GeoCoordinates"},

           "longitude": {"@odata.type": "microsoft.graph.GeoCoordinates"}

        }
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "timeClockSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

---
title: "outlookGeoCoordinates resource type"
description: "The geographic coordinates, elevation, and their degree of accuracy for a physical location."
localization_priority: Normal
author: "harini84"
ms.prod: "outlook"
doc_type: resourcePageType
---

# outlookGeoCoordinates resource type

Namespace: microsoft.graph

The geographic coordinates, elevation, and their degree of accuracy for a physical location.

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.outlookGeoCoordinates"
}-->

```json
{
  "accuracy": 1024.13,
  "altitude": 1024.13,
  "altitudeAccuracy": 1024.13,
  "latitude": 1024.13,
  "longitude": 1024.13
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|accuracy|double|The accuracy of the latitude and longitude. As an example, the accuracy can be measured in meters, such as the latitude and longitude are accurate to within 50 meters.|
|altitude|double|The altitude of the location.|
|altitudeAccuracy|double|The accuracy of the altitude.|
|latitude|double|The latitude of the location.|
|longitude|double|The longitude of the location.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "outlookGeoCoordinates resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


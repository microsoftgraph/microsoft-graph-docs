---
title: "locationDataModel resource type"
description: "Represents locationDataModel information of an event."
localization_priority: Normal
author: "angelgolfer-ms"
ms.prod: "outlook"
---

# locationDataModel resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents location information for a meeting.


## Properties
| Property  | Type   | Description                                                     |
|:----------|:-------|:----------------------------------------------------------------|
| address | [postalAddress](postaladdress.md) |The street address of the location. |
| coordinates | [outlookGeoCoordinates](outlookgeocoordinates.md) | The geographic coordinates and elevation of the location. |
| displayName  | String | The name associated with the location.                       |
| locationEmailAddress | String | Optional email address of the location. |
| locationUri | String | Optional URI representing the location. |


## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.locationDataModel"
}-->
```json
{
  "address": {"@odata.type": "microsoft.graph.physicalAddress"},
  "coordinates": {"@odata.type": "microsoft.graph.outlookGeoCoordinates"},
  "displayName": "string",
  "locationEmailAddress": "string",
  "locationUri": "string"
}

```



<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "locationDataModel resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/locationdatamodel.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->

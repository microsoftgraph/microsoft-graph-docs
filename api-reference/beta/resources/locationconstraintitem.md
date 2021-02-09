---
title: "locationConstraintItem resource type"
description: "The conditions stated by a client for the location of a meeting."
localization_priority: Normal
author: "angelgolfer-ms"
ms.prod: "outlook"
doc_type: resourcePageType
---

# locationConstraintItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The conditions stated by a client for the location of a meeting.

Derived from [location](location.md).

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  
  ],
  "@odata.type": "microsoft.graph.locationConstraintItem"
}-->

```json
{
  "resolveAvailability": true,
  "address": {"@odata.type": "microsoft.graph.physicalAddress"},
  "coordinates": {"@odata.type": "microsoft.graph.outlookGeoCoordinates"},
  "displayName": "string",
  "locationEmailAddress": "string",
  "locationType": "string",
  "locationUri": "string",
  "uniqueId": "string",
  "uniqueIdType": "string"
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| address | [physicalAddress](physicaladdress.md) |The street address of the location. |
| coordinates | [outlookGeoCoordinates](outlookgeocoordinates.md) | The geographic coordinates and elevation of the location. |
| displayName  | String | The name associated with the location.                       |
| locationEmailAddress | String | Optional email address of the location. |
| locationType | locationType | The type of location. Possible values are: `default`, `conferenceRoom`, `homeAddress`, `businessAddress`,`geoCoordinates`, `streetAddress`, `hotel`, `restaurant`, `localBusiness`, `postalAddress`. Read-only.|
| locationUri | String | Optional URI representing the location. |
| resolveAvailability | Boolean | If set to true and the specified resource is busy, [findMeetingTimes](../api/user-findmeetingtimes.md) looks for another resource that is free. If set to false and the specified resource is busy, **findMeetingTimes** returns the resource best ranked in the user's cache without checking if it's free. Default is true. |
| uniqueId | String | For internal use only.|
| uniqueIdType | String | For internal use only. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "locationConstraintItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->



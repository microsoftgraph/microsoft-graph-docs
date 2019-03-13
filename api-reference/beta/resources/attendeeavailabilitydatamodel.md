---
title: "attendeeAvailabilityDataModel resource type"
description: "The type and availability of an attendee."
localization_priority: Normal
author: "angelgolfer-ms"
ms.prod: "outlook"
doc_type: resourcePageType
---

# attendeeAvailabilityDataModel resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a person or resource and their availability for a meeting.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.attendeeAvailabilityDataModel"
}-->

```json
{
  "attendee": {"@odata.type": "microsoft.graph.attendeeDataModel"},
  "availability": "String"
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|attendee|[attendeeDataModel](attendeedatamodel.md)|Represents a person or resource attendee and whether the attendee is required or optional for the meeting.|
|availability|availabilityStatus| The availability status of the attendee. The possible values are: `free`, `tentative`, `busy`, `oof`, `workingElsewhere`, `unknown`.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "attendeeAvailabilityDataModel resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/attendeeavailabilitydatamodel.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
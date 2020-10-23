---
title: "attendeeAvailability resource type"
description: "The availability of an attendee."
localization_priority: Normal
author: "angelgolfer-ms"
ms.prod: "outlook"
doc_type: resourcePageType
---

# attendeeAvailability resource type

Namespace: microsoft.graph

The availability of an attendee.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.attendeeAvailability"
}-->

```json
{
  "attendee": {"@odata.type": "microsoft.graph.attendeeBase"},
  "availability": "String"
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|attendee|[attendeeBase](attendeebase.md)|The email address and type of attendee - whether it's a person or a resource, and whether required or optional if it's a person.|
|availability|freeBusyStatus| The availability status of the attendee. The possible values are: `free`, `tentative`, `busy`, `oof`, `workingElsewhere`, `unknown`.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "attendeeAvailability resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


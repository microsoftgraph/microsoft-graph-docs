---
title: "timeZoneBase resource type"
description: "The basic representation of a time zone."
localization_priority: Normal
doc_type: resourcePageType
---

# timeZoneBase resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The basic representation of a time zone.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| name | string | The name of a time zone. It can be a standard time zone name such as "Hawaii-Aleutian Standard Time", or "Customized Time Zone" for a custom time zone. |


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.timeZoneBase"
}-->

```json
{
  "name": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "timeZoneBase resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/timezonebase.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->

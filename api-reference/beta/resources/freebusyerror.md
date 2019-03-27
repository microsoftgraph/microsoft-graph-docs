---
title: "freeBusyError resource type"
description: "Represents error information from attempting to get the availability of a user, distribution list, or resource."
localization_priority: Normal
---

# freeBusyError resource type

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
 
Represents error information from attempting to get the availability of a user, distribution list, or resource.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|message |String |Describes the error. |
|responseCode |String |The response code from querying for the availability of the user, distribution list, or resource. |


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.freeBusyError"
}-->

```json
{
  "message": "String",
  "responseCode": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "freeBusyError resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/freebusyerror.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->

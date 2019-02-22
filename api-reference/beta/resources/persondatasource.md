---
title: "personDataSource resource type"
description: "Represents the sources the user data comes from, such as Directory and Outlook Contacts."
localization_priority: Normal
author: "simonhult"
ms.prod: "insights"
---

# personDataSource resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the sources the user data comes from, such as Directory and Outlook Contacts.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.personDataSource"
}-->

```json
{
  "type": "string"
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|type|String|The type of data source.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "personDataSource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/persondatasource.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->

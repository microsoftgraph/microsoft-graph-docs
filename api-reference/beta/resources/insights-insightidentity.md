---
title: "insightIdentity"
description: "Complex type containing properties of Shared items."
author: "simonhult"
localization_priority: Normal
ms.prod: "insights"
---

# insightIdentity

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Complex type containing properties of [Shared](insights-shared.md) items. 

## JSON representation
Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.insightIdentity"
}-->
```json
{
  "displayName": "string",
  "id": "string",
  "address": "string"
}
```

## Properties

| Property              | Type          | Description  |
| -------------         |-----------    | -------------|
| displayName      	| String	      | The display name of the user who shared the item. |
| id     		  | String        | The id of the user who shared the item.     |
| address      	      | String	    | The email address of the user who shared the item.  |
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/insights-insightidentity.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->

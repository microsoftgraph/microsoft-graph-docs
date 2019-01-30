---
title: "usageDetails resource type"
description: "Complex type containing properties of Used items. Information on when the resource was last accessed (viewed) and modified (edited) by the user."
author: "simonhult"
localization_priority: Normal
ms.prod: "insights"
---

# usageDetails resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Complex type containing properties of [Used](insights-used.md) items. Information on when the resource was last accessed (viewed) and modified (edited) by the user.

## JSON representation

Here is a JSON representation of the resource
<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.usageDetails"
}-->
```json
{
  "lastAccessedDateTime": "DateTimeOffset",
  "lastModifiedDateTime": "DateTimeOffset"
}
```

## Properties

| Property      		| Type          | Description  |
| ------------- 		|---------------| -------------|
| lastAccessedDateTime      			| DateTimeOffset		| The date and time the resource was last accessed by the user. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `2014-01-01T00:00:00Z`. Read-only.       	   		   |
| lastModifiedDateTime    			| DateTimeOffset		| The date and time the resource was last modified by the user. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `2014-01-01T00:00:00Z`. Read-only.       |
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/insights-usagedetails.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->

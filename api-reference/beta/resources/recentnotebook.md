---
title: "recentNotebook resource type"
description: "A recently accessed OneNote notebook. A **recentNotebook** is similar to a notebook but has fewer properties."
localization_priority: Normal
doc_type: resourcePageType
---

# recentNotebook resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A recently accessed OneNote notebook. A **recentNotebook** is similar to a [notebook](notebook.md) but has fewer properties.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|name|String|The name of the notebook.|
|lastAccessedTime|DateTimeOffset|The date and time when the notebook was last modified. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only.|
|links|[recentNotebookLinks](recentnotebooklinks.md)|Links for opening the notebook. The `oneNoteClientURL` link opens the notebook in the OneNote client, if it's installed. The `oneNoteWebURL` link opens the notebook in OneNote Online.|
|sourceService|String|The backend store where the Notebook resides, either `OneDriveForBusiness` or `OneDrive`.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.recentNotebook"
}-->

```json
{
  "displayName": "String",
  "lastAccessedTime": "String (timestamp)",
  "links": {"@odata.type": "microsoft.graph.recentNotebookLinks"},
  "sourceService": "String"
}

```

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[getRecentNotebooks](../api/notebook-getrecentnotebooks.md) | [notebook](notebook.md) collection | Get a collection of the most recently accessed notebooks for the user. |
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/recentnotebook.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->

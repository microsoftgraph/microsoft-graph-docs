---
title: "used resource type"
description: "An insight representing documents used by a specific user. The insights returns the most relevant documents that a user viewed or accessed."
author: "simonhult"
localization_priority: Normal
ms.prod: "insights"
---

# used resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An insight representing documents used by a specific user. The insights returns the most relevant documents that a user viewed or accessed. This includes documents in:

- OneDrive for Business
- SharePoint

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List used](../api/insights-list-used.md) |[insights_used](insights-used.md) collection| Get a list of used files.|

## Properties

| Property              | Type          	 		| Description  |
| -------------         |---------------	 		| -------------|
| id      				| String	 				| Unique identifier of the relationship. Read only. 	   |
| lastUsed			    | [usageDetails](insights-usagedetails.md)				| Information about when the item was last viewed and modified by the user. Read only. 	   |
| resourceVisualization	| [resourceVisualization](insights-resourcevisualization.md)				| Properties that you can use to visualize the document in your experience. Read-only	   |
| resourceReference		| [resourceReference](insights-resourcereference.md)                      | Reference properties of the used document, such as the url and type of the document. Read-only	   |

## Relationships

| Property      | Type          | Description  |
| ------------- |---------------| -------------|
| resource    	| Entity		| Used for navigating to the item that was used. For file attachments, the type is *fileAttachment*. For linked attachments, the type is *driveItem*. |

## JSON representation
Here is a JSON representation of the resource

```json
{
  "id": "string",
  "lastUsed": "usageDetails",
  "resourceVisualization": "resourceVisualization",
  "resourceReference": "resourceReference",
  
  "resource": [ { "@odata.type": "microsoft.graph.entity" } ]
}
```
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/insights-used.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->

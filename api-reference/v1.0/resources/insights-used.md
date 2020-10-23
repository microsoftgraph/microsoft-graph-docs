---
title: "usedInsight resource type"
description: "An insight representing documents used by a specific user. The insights returns the most relevant documents that a user viewed or modified."
author: "simonhult"
localization_priority: Normal
ms.prod: "insights"
doc_type: resourcePageType
---

# usedInsight resource type

Namespace: microsoft.graph

An insight representing documents used by a specific user. The insights returns the most relevant documents that a user viewed or modified. This includes documents in:

- OneDrive for Business
- SharePoint

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List used](../api/insights-list-used.md) |[usedInsight](insights-used.md) collection| Get a list of used files.|

## Properties

| Property              | Type          	 		| Description  |
| -------------         |---------------	 		| -------------|
| id      				| String	 				| Unique identifier of the relationship. Read only. 	   |
| lastUsed			    | [usageDetails](insights-usagedetails.md)				| Information about when the item was last viewed or modified by the user. Read only. 	   |
| resourceVisualization	| [resourceVisualization](insights-resourcevisualization.md)				| Properties that you can use to visualize the document in your experience. Read-only	   |
| resourceReference		| [resourceReference](insights-resourcereference.md)                      | Reference properties of the used document, such as the url and type of the document. Read-only	   |

## Relationships

| Property      | Type          | Description  |
| ------------- |---------------| -------------|
| resource    	| [entity](entity.md) collection	| Used for navigating to the item that was used. For file attachments, the type is *fileAttachment*. For linked attachments, the type is *driveItem*. |

## JSON representation
Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "optionalProperties": [
    "resource"
  ],
  "@odata.type": "microsoft.graph.usedInsight"
}-->

```json
{
  "id": "string",
  "lastUsed": "usageDetails",
  "resourceVisualization": { "@odata.type": "microsoft.graph.resourceVisualization" },
  "resourceReference": { "@odata.type": "microsoft.graph.resourceReference" }
}
```


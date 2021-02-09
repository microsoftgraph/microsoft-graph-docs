---
title: "trending resource type"
description: "Rich relationship connecting a user to documents that are trending around the user (are relevant to the user). OneDrive files, and files stored on SharePoint team sites can trend around the user."
author: "simonhult"
localization_priority: Normal
ms.prod: "insights"
doc_type: resourcePageType
---

# trending resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Rich relationship connecting a user to documents that are trending around the user (are relevant to the user). OneDrive files, and files stored on SharePoint team sites can trend around the user.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List trending](../api/insights-list-trending.md) |[trending](insights-trending.md) collection| Get a list of trending files.|

## Properties

| Property      | Type          	 				| Description  |
| ------------- |---------------	 				| -------------|
| id      				| String	 				| Unique identifier of the relationship. Read only. 	   |
| weight     			| Double     				| Value indicating how much the document is currently trending. The larger the number, the more the document is currently trending around the user (the more relevant it is). Returned documents are sorted by this value.  |
| resourceVisualization | [resourceVisualization](insights-resourcevisualization.md)   	| Properties that you can use to visualize the document in your experience. |
| resourceReference     | [resourceReference](insights-resourcereference.md)  		| Reference properties of the trending document, such as the url and type of the document. |
| lastModifiedDateTime  | DateTimeOffset            | |
## Relationships

| Property      | Type          | Description  |
| ------------- |---------------| -------------|
| resource    	| entity		| Used for navigating to the trending document. |

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "optionalProperties": [
    "resource"
  ],
  "@odata.type": "microsoft.graph.trending"
}-->

```json
{
  "id": "string",
  "weight": "double",
  "resourceVisualization": {"@odata.type": "microsoft.graph.resourceVisualization"},
  "resourceReference": {"@odata.type": "microsoft.graph.resourceReference"},
  "lastModifiedDateTime": "String (timestamp)"
}
```



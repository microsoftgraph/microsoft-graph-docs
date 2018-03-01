# trending resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Rich relationship connecting a user to documents that are trending around the user (are relevant to the user). OneDrive files, and files stored on SharePoint team sites can trend around the user.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List trending](../api/insights_list_trending.md) |[insights_trending](insights_trending.md) collection| Get a list of trending files.|

## Properties

| Property      | Type          	 				| Description  |
| ------------- |---------------	 				| -------------|
| id      				| String	 				| Unique identifier of the relationship. Read only. 	   |
| weight     			| Double     				| Value indicating how much the document is currently trending. The larger the number, the more the document is currently trending around the user (the more relevant it is). Returned documents are sorted by this value.  |
| resourceVisualization | [resourceVisualization](insights_resourcevisualization.md)   	| Properties that you can use to visualize the document in your experience. |
| resourceReference     | [resourceReference](insights_resourcereference.md)  		| Reference properties of the trending document, such as the url and type of the document. |

## Relationships

| Property      | Type          | Description  |
| ------------- |---------------| -------------|
| resource    	| Entity		| Used for navigating to the trending document. |

## JSON representation

Here is a JSON representation of the resource

```json
{
  "id": "string",
  "weight": "double",
  "resourceVisualization": [{"@odata.type": "microsoft.graph.resourceVisualization"}],
  "resourceReference": [{"@odata.type": "microsoft.graph.resourceReference"}],
  
  "resource": [ { "@odata.type": "microsoft.graph.entity" } ]
}
```
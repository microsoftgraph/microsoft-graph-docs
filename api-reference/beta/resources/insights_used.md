# used resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

An insight representing documents used by a specific user. The insights returns the most relevant documents that a user viewed or accessed. This includes documents in:

- OneDrive for Business
- SharePoint

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List used](../api/insights_list_used.md) |[insights_used](insights_used.md) collection| Get a list of used files.|

## Properties

| Property              | Type          	 		| Description  |
| -------------         |---------------	 		| -------------|
| id      				| String	 				| Unique identifier of the relationship. Read only. 	   |
| lastUsed			    | [usageDetails](insights_usagedetails.md)				| Information about when the item was last viewed and modified by the user. Read only. 	   |
| resourceVisualization	| [resourceVisualization](insights_resourcevisualization.md)				| Properties that you can use to visualize the document in your experience. Read-only	   |
| resourceReference		| [resourceReference](insights_resourcereference.md)                      | Reference properties of the used document, such as the url and type of the document. Read-only	   |

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
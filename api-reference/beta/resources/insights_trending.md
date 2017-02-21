# trending resource type

Rich relationship connecting a user to documents that are trending around the user (are relevant to the user). OneDrive files, and files stored on SharePoint team sites can trend around the user.

## Properties

| Property      | Type          	 				| Description  |
| ------------- |---------------	 				| -------------|
| id      				| String	 				| Unique identifier of the relationship. Read only. 	   |
| weight     			| Double     				| Value indicating how much the document is currently trending. The larger the number, the more the document is currently trending around the user (the more relevant it is). Returned documents are sorted by this value.  |
| resourceVisualization | [resourceVisualization](insights_resourceVisualization.md)   	| Contains properties that you can use to visualize the document in your experience. |
| resourceReference     | [resourceReference](insights_resourceReference.md)  		| Reference properties of the trending document, such as the url and type of the document. |


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
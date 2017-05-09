# shared resource type

An insight representing files shared with or by a specific user. The following shared files are supported:

- Files attached directly in an email or a meeting invite.
- OneDrive for Bussiness and SharePoint modern attachments - files stored in OneDrive for Business and SharePoint that users share as a links in an email.

### Properties

| Property              | Type          	 		| Description  |
| -------------         |---------------	 		| -------------|
| id      				| String	 				| Unique identifier of the relationship. Read only. 	   |
| lastShared			| [sharingDetail](insights_sharingdetail.md)				| Details about the shared item. Read only. 	   |
| resourceVisualization	| [resourceVisualization](insights_resourcevisualization.md)				| Properties that you can use to visualize the document in your experience. Read-only	   |
| resourceReference		| [resourceReference](insights_resourcereference.md)                      | Reference properties of the shared document, such as the url and type of the document. Read-only	   |

### Relationships

| Property      | Type          | Description  |
| ------------- |---------------| -------------|
| resource    	| Entity		| Used for navigating to the item that was shared. For file attachments, the type is *fileAttachment*. For linked attachments, the type is *driveItem*. |

### JSON representation

Here is a JSON representation of the resource

```json
{
  "id": "string",
  "lastShared": "sharingDetail",
  "resourceVisualization": "resourceVisualization",
  "resourceReference": "resourceReference",
  
  "resource": [ { "@odata.type": "microsoft.graph.entity" } ]
}
```
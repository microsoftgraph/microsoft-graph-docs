# insights resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Insights are relationships calculated using advanced analytics and machine learning techniques. You can, for example, identify OneDrive documents trending around users.

Insights are returned by the following APIs:

- [Trending](insights_trending.md) - returns documents from OneDrive and from SharePoint sites trending around a user.
- [Used](insights_used.md) - returns documents viewed and modified by a user. Includes documents the user used in OneDrive for Business, SharePoint, opened as email attachments, and as link attachments from sources like Box, DropBox and Google Drive.
- [Shared](insights_shared.md) - returns documents shared with a user. Documents can be shared as email attachments or as OneDrive for Business links sent in emails.

Each insight is returned with a `resourceVisualization` and `resourceReference` complex value type (CVT). The resourceVisualization CVT contains properties such as `title` and `previewImageUrl`. Microsoft uses the visualization properties to render the files in experiences like Office Delve.

## Relationships

| Relationship      | Type          | Description  |
| ------------- |---------------| -------------|
| trending    	| [Trending](insights_trending.md) collection		| Calculated relationship identifying trending documents. Trending documents can be stored in OneDrive or in SharePoint sites.	 |
| used    	| [Used](insights_used.md) collection		| Calculated relationship identifying documents viewed and modified by a user. Includes documents the user used in OneDrive for Business, SharePoint, opened as email attachments, and as link attachments from sources like Box, DropBox and Google Drive.	 |
| shared    	| [Shared](insights_shared.md) collection		| Calculated relationship identifying documents shared with a user. Documents can be shared as email attachments or as OneDrive for Business links sent in emails.	 |

## JSON representation

Here is a JSON representation of the resource
```json
{
  "trending": [ { "@odata.type": "microsoft.graph.trending" } ],
  "used": [ { "@odata.type": "microsoft.graph.used" } ],
  "shared": [ { "@odata.type": "microsoft.graph.shared" } ]
}
```
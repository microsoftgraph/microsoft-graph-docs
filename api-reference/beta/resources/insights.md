# insights resource type

Insights are relationships calculated using advanced analytics and machine learning techniques. For example, to identify OneDrive documents trending around users.

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
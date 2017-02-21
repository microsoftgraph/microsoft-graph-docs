# insights resource type

Insights are relationships calculated using advanced analytics and machine learning techniques. For example, to identify OneDrive documents trending around users.

## Relationships

| Relationship      | Type          | Description  |
| ------------- |---------------| -------------|
| trending    	| [Trending](insights_trending.md) collection		| Calculated relationship identifying trending documents. Trending documents can be stored in OneDrive or in SharePoint sites.	 |

## JSON representation

Here is a JSON representation of the resource
```json
{ 
  "trending": [ { "@odata.type": "microsoft.graph.trending" } ]
}
```
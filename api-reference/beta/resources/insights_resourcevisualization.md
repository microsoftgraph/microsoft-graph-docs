# resourceVisualization resource type

Complex type containing properties of [Trending](insights_trending.md) items.

## JSON representation

Here is a JSON representation of the resource

```json
{
  "title": "string",
  "mediaType": "string",
  "previewImageUrl": "string",
  "previewText": "string",
  "containerWebUrl": "string",
  "containerDisplayName": "string",
  "containerType": "string",
}
```

## Properties

| Property      		| Type          | Description  |
| ------------- 		|---------------| -------------|
| title      			| String		| The item's title text.	   		   |
| mediaType    			| String		| The item's media type. Can be used for displaying specific information based on the type of the item, for example an icon. |
| previewImageUrl   	| String		| A URL leading to the preview image for the item. |
| previewText      		| String		| A preview text for the item. |
| containerWebUrl      	| String		| A path leading to the folder in which the item is stored. |
| containerDisplayName  | String		| A string describing where the item is stored. For example, the name of a SharePoint site or the user name identifying the owner of the OneDrive storing the item.  |
| containerType    		| String | The type of the container in which the item is stored, such as "site" or "OneDrive".		   |
# resourceReference resource type

Complex type containing properties of [Trending](insights_trending.md) items.

## JSON representation

Here is a JSON representation of the resource

```json
{
  "webUrl": "string",
  "id": "string",
  "type": "string"
}
```

## Properties

| Property      | Type      | Description  |
| ------------- |-----------| -------------|
| webUrl      	| String	| A URL leading to the referenced item. |
| id     		| String    | The item's unique identifier.           |
| type 			| String   	| A string value that can be used to classify the item, such as "microsoft.graph.driveItem" |
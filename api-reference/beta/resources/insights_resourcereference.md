# resourceReference resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Complex type containing properties of [Insights](insights.md).

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
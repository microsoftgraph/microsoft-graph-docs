# sharingReference resource type

Complex type containing properties of [Shared](insights_shared.md) items. 

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
| id     		    | String    | The item's unique identifier.           |
| type 			    | String   	| The OData type of the type of the reference, such as "microsoft.graph.message". |
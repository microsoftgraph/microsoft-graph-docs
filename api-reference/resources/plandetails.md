# planDetails resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get planDetails](../api/plandetails_get.md) | [planDetails](plandetails.md) |Read properties and relationships of planDetails object.|
|[Update](../api/plandetails_update.md) | [planDetails](plandetails.md)	|Update planDetails object. |
|[Delete](../api/plandetails_delete.md) | None |Delete planDetails object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|category0Description|string||
|category1Description|string||
|category2Description|string||
|category3Description|string||
|category4Description|string||
|category5Description|string||
|id|string| Read-only.|
|sharedWith|[userIdCollection](useridcollection.md)||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plandetails"
}-->

```json
{
  "category0Description": "string",
  "category1Description": "string",
  "category2Description": "string",
  "category3Description": "string",
  "category4Description": "string",
  "category5Description": "string",
  "id": "string (identifier)",
  "sharedWith": {"@odata.type": "microsoft.graph.userIdCollection"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "planDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
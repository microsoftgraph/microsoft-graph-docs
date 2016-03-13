# notesOperation resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get notesOperation](../api/notesoperation_get.md) | [notesOperation](notesoperation.md) |Read properties and relationships of notesOperation object.|
|[Update](../api/notesoperation_update.md) | [notesOperation](notesoperation.md)	|Update notesOperation object. |
|[Delete](../api/notesoperation_delete.md) | None |Delete notesOperation object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdDateTime|[dateTimeOffset](datetimeoffset.md)||
|error|[notesOperationError](notesoperationerror.md)||
|id|string| Read-only.|
|lastActionDateTime|[dateTimeOffset](datetimeoffset.md)||
|resourceId|string||
|resourceLocation|string||
|status|string||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.notesoperation"
}-->

```json
{
  "createdDateTime": "String (timestamp)",
  "error": {"@odata.type": "microsoft.graph.notesOperationError"},
  "id": "string (identifier)",
  "lastActionDateTime": "String (timestamp)",
  "resourceId": "string",
  "resourceLocation": "string",
  "status": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "notesOperation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
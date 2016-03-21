# notesOperation resource type

The status of certain long-running OneNote operations. 

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
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdDateTime|[dateTimeOffset](datetimeoffset.md)|The start time of the operation.|
|error|[notesOperationError](notesoperationerror.md)|The error returned by the operation.|
|id|string|The operation id. Read-only.|
|lastActionDateTime|[dateTimeOffset](datetimeoffset.md)|The time of the last action of the operation.|
|resourceId|string|The resource id.|
|resourceLocation|string|The resource URI for the object. For example, the resource URI for a copied page or section. |
|status|string|The current status of the operation: `notstarted`, `running`, `completed`, `failed` |

### Relationships
None


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get operation](../api/notesoperation_get.md) | [NotesOperation](notesoperation.md) |Get the status of the operation. |


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "notesOperation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
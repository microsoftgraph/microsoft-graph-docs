# onenoteOperation resource type

The status of certain long-running OneNote operations.

## JSON representation

Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.operation",
  "@odata.type": "microsoft.graph.onenoteOperation"
}-->

```json
{
  "createdDateTime": "String (timestamp)",
  "error": {"@odata.type": "microsoft.graph.onenoteOperationError"},
  "id": "string (identifier)",
  "lastActionDateTime": "String (timestamp)",
  "resourceId": "string",
  "resourceLocation": "string",
  "status": "string",
  "percentComplete": "string"
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdDateTime| DateTimeOffset |The start time of the operation.|
|error|[onenoteOperationError](onenoteoperationerror.md)|The error returned by the operation.|
|id|string|The operation id. Read-only.|
|lastActionDateTime| DateTimeOffset |The time of the last action of the operation.|
|resourceId|string|The resource id.|
|resourceLocation|string|The resource URI for the object. For example, the resource URI for a copied page or section. |
|status|string|The current status of the operation: `notstarted`, `running`, `completed`, `failed` |
|percentComplete|string|The operation percent complete if the operation is still in `running` status

## Relationships
None


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get operation](../api/onenoteoperation_get.md) | [onenoteOperation](onenoteoperation.md) |Get the status of the operation. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "onenoteOperation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

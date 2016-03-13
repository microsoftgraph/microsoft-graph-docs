# taskDetails resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get taskDetails](../api/taskdetails_get.md) | [taskDetails](taskdetails.md) |Read properties and relationships of taskDetails object.|
|[Update](../api/taskdetails_update.md) | [taskDetails](taskdetails.md)	|Update taskDetails object. |
|[Delete](../api/taskdetails_delete.md) | None |Delete taskDetails object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|checklist|[checklistItemCollection](checklistitemcollection.md)||
|completedBy|string||
|description|string||
|id|string| Read-only.|
|previewType|string| Possible values are: `automatic`, `noPreview`, `checklist`, `description`, `reference`.|
|references|[externalReferenceCollection](externalreferencecollection.md)||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.taskdetails"
}-->

```json
{
  "checklist": {"@odata.type": "microsoft.graph.checklistItemCollection"},
  "completedBy": "string",
  "description": "string",
  "id": "string (identifier)",
  "previewType": "string",
  "references": {"@odata.type": "microsoft.graph.externalReferenceCollection"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "taskDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
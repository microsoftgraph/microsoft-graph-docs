# planTaskBoard resource type

The PlanTaskBoard resource represents the information used to render a plan's task board view correctly. Each [plan](plan.md) will have three planTaskBoard objects as there can be three task board views for a plan.

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plantaskboard"
}-->

```json
{
  "id": "string (identifier)",
  "type": "String (identifier)"
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only. Id of the plan. It is 28 characters long and case sensitive. [Format validation](tasks_identifiers_disclaimer.md) is done on the service. |
|type|String| Read-only. Used to set the type of task board view in which this object is used to render. Possible values are: `progress`, `assignedTo`, `bucket`.|

### Relationships
None


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get planTaskBoard](../api/plantaskboard_get.md) | [planTaskBoard](plantaskboard.md) |Read properties and relationships of planTaskBoard object.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "planTaskBoard resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
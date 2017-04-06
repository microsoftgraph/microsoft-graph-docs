# taskDetails resource type

>**Important:** This resource is deprecated and will be removed on May 26th, 2017. We recommend that you use [plannerTaskDetails](plannertaskdetails.md) resource.

The TaskDetails resource represents the additional information about a task. Each [task](task.md) object has a details object.

## JSON representation

Here is a JSON representation of the resource

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
  "previewType": "String",
  "references": {"@odata.type": "microsoft.graph.externalReferenceCollection"}
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|checklist|[checklistItemCollection](checklistitemcollection.md)| The collection of checklist items on the task.|
|completedBy|String| User id by which the task is completed. |
|description|String| Description of a task. |
|id|String| Read-only. Id of the task. It is 28 characters long and case sensitive. [Format validation](tasks_identifiers_disclaimer.md) is done on the service.|
|previewType|String| This sets the type of preview that shows up on the task. Possible values are: `automatic`, `noPreview`, `checklist`, `description`, `reference`.|
|references|[externalReferenceCollection](externalreferencecollection.md)| The collection of references on the task. |

## Relationships
None


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get taskDetails](../api/taskdetails_get.md) | [taskDetails](taskdetails.md) |Read properties and relationships of taskDetails object.|
|[Update taskDetails](../api/taskdetails_update.md) | None|Update taskDetails object. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "taskDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
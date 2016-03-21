# planDetails resource type

The PlanDetails resource represents the additional information about a plan. Each [plan](plan.md) object has a details object.

### JSON representation

Here is a JSON representation of the resource

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
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|category0Description|String| Description of the category (or label) that can be applied to the task. |
|category1Description|String| Description of the category (or label) that can be applied to the task. |
|category2Description|String| Description of the category (or label) that can be applied to the task. |
|category3Description|String| Description of the category (or label) that can be applied to the task. |
|category4Description|String| Description of the category (or label) that can be applied to the task. |
|category5Description|String| Description of the category (or label) that can be applied to the task. |
|id|String| Read-only. Id of the plan. It is 28 characters long and case sensitive. [Format validation](tasks_identifiers_disclaimer.md) is done on the service.|
|sharedWith|[userIdCollection](useridcollection.md)| List of user ids that this plan is shared with. If you are leveraging Office 365 Groups, use the Groups API to manage group membership to share the [group's](group.md) plan. You can also add existing members of the group to this collection though it is not required for them to access the plan owned by the group. |

### Relationships
None


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get planDetails](../api/plandetails_get.md) | [planDetails](plandetails.md) |Read properties and relationships of planDetails object.|
|[Update planDetails](../api/plandetails_update.md) | None	|Update planDetails object. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "planDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
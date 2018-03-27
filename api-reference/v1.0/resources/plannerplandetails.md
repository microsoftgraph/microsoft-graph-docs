# plannerPlanDetails resource type


The **plannerPlanDetails** resource represents the additional information about a plan. Each [plan](plannerplan.md) object has a details object.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get plannerPlanDetails](../api/plannerplandetails_get.md) | [plannerPlanDetails](plannerplandetails.md) |Read properties and relationships of **plannerPlanDetails** object.|
|[Update](../api/plannerplandetails_update.md) | [plannerPlanDetails](plannerplandetails.md)	|Update **plannerPlanDetails** object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|categoryDescriptions|[plannerCategoryDescriptions](plannercategorydescriptions.md)|An object that specifies the descriptions of the six categories that can be associated with tasks in the plan|
|id|String| Read-only. ID of the plan details. It is 28 characters long and case sensitive. [Format validation](planner_identifiers_disclaimer.md) is done on the service.|
|sharedWith|[plannerUserIds](planneruserids.md)|Set of user ids that this plan is shared with. If you are leveraging Office 365 Groups, use the Groups API to manage group membership to share the [group's](group.md) plan. You can also add existing members of the group to this collection though it is not required for them to access the plan owned by the group. |

## Relationships
None


## JSON representation
Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.plannerPlanDetails"
}-->

```json
{
  "categoryDescriptions": {"@odata.type": "microsoft.graph.plannerCategoryDescriptions"},
  "id": "String (identifier)",
  "sharedWith": {"@odata.type": "microsoft.graph.plannerUserIds"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerPlanDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
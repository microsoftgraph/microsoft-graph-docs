---
title: "plannerRoster resource type"
description: "The **plannerRoster** resource represents a collection of users who are collaborating on a plannerPlan."
author: "tarkansevilmis"
localization_priority: Normal
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerRoster resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **plannerRoster** resource represents a collection of users who are collaborating on a [plannerPlan](plannerplan.md). A **plannerRoster** is a simple set of users, where everyone has the same level of permissions and they can be created by everyone, unless disabled by the tenant administrator. A **plannerRoster** can contain one plan.

Deleting a **plannerRoster** will also delete the plan and all tasks in the plan. A **plannerRoster** will also be automatically deleted under the following conditions:

* The **plannerRoster** doesn't contain a plan 24 hours after its creation. Membership information will be completely erased within 30 days of this deletion.
* The **plannerRoster** doesn't have any users remaining in the membership list because the last user removed themselves. Roster, its plan and all contained tasks will be deleted within 30 days of this operation.
* The **plannerRoster** doesn't have any users remaining in the membership list because the last user was permanently deleted. Roster, its plan and all contained tasks will be deleted immediately. Deleted users are permanently erased wihtin 30 days of their deletion; however, tenant administrators can also choose to permanently delete users without this delay.


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create plannerRoster](../api/planner-post-rosters.md)|[plannerRoster](../resources/plannerroster.md)|Create a new [plannerRoster](../resources/plannerroster.md) object.|
|[Get plannerRoster](../api/plannerroster-get.md)|[plannerRoster](../resources/plannerroster.md)|Read the properties and relationships of a [plannerRoster](../resources/plannerroster.md) object.|
|[Delete plannerRoster](../api/plannerroster-delete.md)|None|Deletes a [plannerRoster](../resources/plannerroster.md) object.|
|[List members](../api/plannerroster-list-members.md)|[plannerRosterMember](../resources/plannerrostermember.md) collection|Get the plannerRosterMember resources from the members navigation property.|
|[Create plannerRosterMember](../api/plannerroster-post-members.md)|[plannerRosterMember](../resources/plannerrostermember.md)|Create a new plannerRosterMember object.|
|[List plans](../api/plannerroster-list-plans.md)|[plannerPlan](../resources/plannerplan.md) collection|Get the plannerPlan resources from the plans navigation property.|
|[List user's rosterPlans](../api/planneruser-list-rosterplans.md)|[plannerPlan](plannerplan.md) collection| Get the [plannerPlans](plannerplan.md) contained by the [plannerRosters](plannerroster.md) that the user is a member.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Read only. Identifier of the **plannerRoster**. Inherited from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|members|[plannerRosterMember](../resources/plannerrostermember.md) collection|Retrieves the members of the **plannerRoster**.|
|plans|[plannerPlan](../resources/plannerplan.md) collection|Retrieves the plans contained by the **plannerRoster**.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.plannerRoster",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerRoster",
  "id": "String (identifier)"
}
```


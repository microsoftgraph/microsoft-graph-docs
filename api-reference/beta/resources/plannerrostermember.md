---
title: "plannerRosterMember resource type"
description: "Represents a member of a plannerRoster."
author: "tarkansevilmis"
localization_priority: Normal
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerRosterMember resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a member of a [plannerRoster](plannerRoster.md).


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List plannerRosterMembers](../api/plannerroster-list-members.md)|[plannerRosterMember](../resources/plannerrostermember.md) collection|Get a list of the [plannerRosterMember](../resources/plannerrostermember.md) objects and their properties.|
|[Create plannerRosterMember](../api/plannerroster-post-members.md)|[plannerRosterMember](../resources/plannerrostermember.md)|Create a new [plannerRosterMember](../resources/plannerrostermember.md) object.|
|[Get plannerRosterMember](../api/plannerrostermember-get.md)|[plannerRosterMember](../resources/plannerrostermember.md)|Read the properties and relationships of a [plannerRosterMember](../resources/plannerrostermember.md) object.|
|[Delete plannerRosterMember](../api/plannerrostermember-delete.md)|None|Deletes a [plannerRosterMember](../resources/plannerrostermember.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the **plannerRosterMember**. Inherited from [entity](../resources/entity.md)|
|roles|String collection|Additional roles associated with the **PlannerRosterMember**, which determines permissions of the member in the **plannerRoster**. Currently there are no available roles to assign, and every member has full control over the contents of the **plannerRoster**.|
|tenantId|String|Identifier of the tenant the user belongs to. Currently only the users from the same tenant can be added to a **plannerRoster**. |
|userId|String|Identifier of the [user](user.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.plannerRosterMember",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerRosterMember",
  "id": "String (identifier)",
  "userId": "String",
  "tenantId": "String",
  "roles": []
}
```


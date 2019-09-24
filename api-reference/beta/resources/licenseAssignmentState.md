---
title: "licenseAssignmentState resource type"
description: "The **licenseAssignmentStates** property of the user entity is a collection of **licenseAssignmentState**. It provides details about license assignments to a user. The details includes information like:  "
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: ""
---

# licenseAssignmentState resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **licenseAssignmentStates** property of the [user](user.md) entity is a collection of **licenseAssignmentState**. It provides details about license assignments to a user. The details includes information like:  

- What plans are disabled for a user
- Whether the license was assigned to the user directly or inherited from a group
- Current state of the assignment
- If the assignment state is Error, what is the error detail for the failure? 


## Properties
| Property     | Type   |Description|
|:---------------|:--------|:----------|
|assignedByGroup|string|The id of the group that assigns this license. If the assignment is a direct-assigned license, this field will be Null. Read-Only.|
|disabledPlans|Collection(String)|The service plans that are disabled in this assignment. Read-Only.|
|error|String|License assignment failure error. If the license is assigned successfully, this field will be Null. Read-Only. Possible values: `CountViolation`, `MutuallyExclusiveViolation`, `DependencyViolation`, `ProhibitedInUsageLocationViolation`, `UniquenessViolation`, and `Others`. For more information on how to identify and resolve license assignment errors see [here](https://docs.microsoft.com/azure/active-directory/users-groups-roles/licensing-groups-resolve-problems).|
|skuId|String|The unique identifier for the SKU. Read-Only.|
|state|String|Indicate the current state of this assignment. Read-Only. Possible values: Active, ActiveWithError, Disabled and Error.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.licenseAssignmentState"
}-->
```json
{
  "assignedByGroup": "String",
  "disabledPlans": ["string"],
  "error": " String ",  
  "skuId": "String ",
  "state": "String"
}

```

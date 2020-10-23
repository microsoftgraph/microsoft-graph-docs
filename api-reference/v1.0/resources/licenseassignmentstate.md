---
title: "licenseAssignmentState resource type"
description: "The **licenseAssignmentStates** property of the user entity is a collection of **licenseAssignmentState** objects. It provides details about license assignments to a user."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "groups"
doc_type: resourcePageType
---

# licenseAssignmentState resource type

Namespace: microsoft.graph


The **licenseAssignmentStates** property of the [user](user.md) entity is a collection of **licenseAssignmentState** objects. It provides details about license assignments to a user. The details include information such as:  

- What plans are disabled for a user
- Whether the license was assigned to the user directly or inherited from a group
- The current state of the assignment
- Error details if the assignment state is Error 


## Properties
| Property     | Type   |Description|
|:---------------|:--------|:----------|
|assignedByGroup|string|The id of the group that assigns this license. If the assignment is a direct-assigned license, this field will be Null. Read-Only.|
|disabledPlans|Collection(String)|The service plans that are disabled in this assignment. Read-Only.|
|error|String|License assignment failure error. If the license is assigned successfully, this field will be Null. Read-Only. Possible values: `CountViolation`, `MutuallyExclusiveViolation`, `DependencyViolation`, `ProhibitedInUsageLocationViolation`, `UniquenessViolation`, and `Others`. For more information on how to identify and resolve license assignment errors see [here](/azure/active-directory/users-groups-roles/licensing-groups-resolve-problems).|
|skuId|String|The unique identifier for the SKU. Read-Only.|
|state|String|Indicate the current state of this assignment. Read-Only. Possible values: Active, ActiveWithError, Disabled and Error.|

## JSON representation

The following is a JSON representation of the resource.

```json
{
  "assignedByGroup": "String",
  "disabledPlans": "Collection(String)",
  "error": " String ",  
  "skuId": "String ",
  "state": "String"
}

```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79 2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "licenseAssignmentState resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: microsoft.graph.user/licenseAssignmentStates:
      Referenced type microsoft.graph.licenseAssignmentState is not defined in the doc set! Potential suggestion: UNKNOWN"
  ]
}-->
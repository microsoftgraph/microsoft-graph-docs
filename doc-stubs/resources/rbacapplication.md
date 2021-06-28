---
title: "rbacApplication resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# rbacApplication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List rbacApplications](../api/rbacapplication-list.md)|[rbacApplication](../resources/rbacapplication.md) collection|Get a list of the [rbacApplication](../resources/rbacapplication.md) objects and their properties.|
|[Create rbacApplication](../api/rbacapplication-create.md)|[rbacApplication](../resources/rbacapplication.md)|Create a new [rbacApplication](../resources/rbacapplication.md) object.|
|[Get rbacApplication](../api/rbacapplication-get.md)|[rbacApplication](../resources/rbacapplication.md)|Read the properties and relationships of a [rbacApplication](../resources/rbacapplication.md) object.|
|[Update rbacApplication](../api/rbacapplication-update.md)|[rbacApplication](../resources/rbacapplication.md)|Update the properties of a [rbacApplication](../resources/rbacapplication.md) object.|
|[Delete rbacApplication](../api/rbacapplication-delete.md)|None|Deletes a [rbacApplication](../resources/rbacapplication.md) object.|
|[List roleAssignmentRequests](../api/rbacapplication-list-roleassignmentrequests.md)|[unifiedRoleAssignmentRequest](../resources/unifiedroleassignmentrequest.md) collection|Get the unifiedRoleAssignmentRequest resources from the roleAssignmentRequests navigation property.|
|[Create unifiedRoleAssignmentRequest](../api/rbacapplication-post-roleassignmentrequests.md)|[unifiedRoleAssignmentRequest](../resources/unifiedroleassignmentrequest.md)|Create a new unifiedRoleAssignmentRequest object.|
|[List roleEligibilityRequests](../api/rbacapplication-list-roleeligibilityrequests.md)|[unifiedRoleEligibilityRequest](../resources/unifiedroleeligibilityrequest.md) collection|Get the unifiedRoleEligibilityRequest resources from the roleEligibilityRequests navigation property.|
|[Create unifiedRoleEligibilityRequest](../api/rbacapplication-post-roleeligibilityrequests.md)|[unifiedRoleEligibilityRequest](../resources/unifiedroleeligibilityrequest.md)|Create a new unifiedRoleEligibilityRequest object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|resourceNamespaces|[unifiedRbacResourceNamespace](../resources/unifiedrbacresourcenamespace.md) collection|**TODO: Add Description**|
|roleAssignmentApprovals|[approval](../resources/approval.md) collection|**TODO: Add Description**|
|roleAssignmentRequests|[unifiedRoleAssignmentRequest](../resources/unifiedroleassignmentrequest.md) collection|**TODO: Add Description**|
|roleAssignments|[unifiedRoleAssignment](../resources/unifiedroleassignment.md) collection|**TODO: Add Description**|
|roleAssignmentScheduleInstances|[unifiedRoleAssignmentScheduleInstance](../resources/unifiedroleassignmentscheduleinstance.md) collection|**TODO: Add Description**|
|roleAssignmentSchedules|[unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md) collection|**TODO: Add Description**|
|roleDefinitions|[unifiedRoleDefinition](../resources/unifiedroledefinition.md) collection|**TODO: Add Description**|
|roleEligibilityRequests|[unifiedRoleEligibilityRequest](../resources/unifiedroleeligibilityrequest.md) collection|**TODO: Add Description**|
|roleEligibilityScheduleInstances|[unifiedRoleEligibilityScheduleInstance](../resources/unifiedroleeligibilityscheduleinstance.md) collection|**TODO: Add Description**|
|roleEligibilitySchedules|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.rbacApplication",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.rbacApplication",
  "id": "String (identifier)"
}
```


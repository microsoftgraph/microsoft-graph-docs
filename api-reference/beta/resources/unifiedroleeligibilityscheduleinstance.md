---
title: "unifiedRoleEligibilityScheduleInstance resource type"
description: "Represents a schedule instance for an eligible role assignment operations through Azure AD Privileged Identity Management."
author: "shauliu"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleEligibilityScheduleInstance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the instance for an eligible role assignment through Azure AD Privileged Identity Management. A `roleEligibilityInstance` is created by `roleEligibilitySchedule` and and represents an actual eligible role Assignment created through Privileged Identity Management. We support list and get operations on the roleEligibilityInstance for the purpose of viewing current and future assignments.

Inherits from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleEligibilityScheduleInstances](../api/unifiedroleeligibilityscheduleinstance-list.md)|[unifiedRoleEligibilityScheduleInstance](../resources/unifiedroleeligibilityscheduleinstance.md) collection|Get a list of the [unifiedRoleEligibilityScheduleInstance](../resources/unifiedroleeligibilityscheduleinstance.md) objects and their properties.|
|[Get unifiedRoleEligibilityScheduleInstance](../api/unifiedroleeligibilityscheduleinstance-get.md)|[unifiedRoleEligibilityScheduleInstance](../resources/unifiedroleeligibilityscheduleinstance.md)|Read the properties and relationships of an [unifiedRoleEligibilityScheduleInstance](../resources/unifiedroleeligibilityscheduleinstance.md) object.|
|[filterByCurrentUser](../api/unifiedroleeligibilityscheduleinstance-filterbycurrentuser.md)|[unifiedRoleEligibilityScheduleInstance](../resources/unifiedroleeligibilityscheduleinstance.md) collection|Get a list of the [unifiedRoleEligibilityInstance](../resources/unifiedroleeligibilityscheduleinstance.md) objects and their properties granted to a particular user.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appScopeId|String|Id of the app specific scope when the assignment scope is app specific. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use "/" for tenant-wide scope. App scopes are scopes that are defined and understood by this application only. Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|
|directoryScopeId|String|Id of the directory object representing the scope of the assignment. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. App scopes are scopes that are defined and understood by this application only. Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|
|endDateTime|DateTimeOffset|Time that the roleEligibilityScheduleInstance will expire|
|id|String|The unique identifier for the roleEligibilityScheduleInstance. Key, not nullable, Read-only.Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|
|memberType|String|Membership type of the assignment. It can either be `Inherited`, `Direct`, or `Group`.|
|principalId|String|Objectid of the principal to which the assignment is being granted to. Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|
|roleDefinitionId|String|ID of the unifiedRoleDefinition the assignment is for. Read only. Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|
|roleEligibilityScheduleId|String|ID of the parent roleEligibilitySchedule for this instance|
|startDateTime|DateTimeOffset|Time that the roleEligibilityScheduleInstance will start|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appScope|[appScope](../resources/appscope.md)|Read-only property with details of the app specific scope when the assignment scope is app specific. Containment entity. Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|
|directoryScope|[directoryObject](../resources/directoryobject.md)|Property referencing the directory object that is the scope of the assignment. Provided so that callers can get the directory object using `$expand` at the same time as getting the eligible role assignments. Read-only. Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|
|principal|[directoryObject](../resources/directoryobject.md)|Property referencing the principal that is getting an eligible role assignment through the request. Provided so that callers can get the principal using `$expand` at the same time as getting the eligible role assignments. Read-only. Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|
|roleDefinition|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|Property indicating the roleDefinition the assignment is for. Provided so that callers can get the role definition using `$expand` at the same time as getting the eligible role assignments. roleDefinition.Id will be auto expanded. Inherited from [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleEligibilityScheduleInstance",
  "baseType": "microsoft.graph.unifiedRoleScheduleInstanceBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleEligibilityScheduleInstance",
  "id": "String (identifier)",
  "principalId": "String",
  "roleDefinitionId": "String",
  "directoryScopeId": "String",
  "appScopeId": "String",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "memberType": "String",
  "roleEligibilityScheduleId": "String"
}
```


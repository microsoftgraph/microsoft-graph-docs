---
title: "unifiedRoleScheduleBase resource type"
description: "Base property of unified role schedules that combines unified role assignment schedules and unified role eligibility schedules"
author: "shauliu"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleScheduleBase resource type

Namespace: microsoft.graph

Base property of unified role schedules that combines unified role assignment schedules and unified role eligibility schedules

## Properties

| Property         | Type           | Description               |
| :--------------- | :------------- | :------------------------ |
| appScopeId       | String         | Id of the app specific scope when the assignment scope is app specific. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use "/" for tenant-wide scope. App scopes are scopes that are defined and understood by this application only. |
| createdDateTime  | DateTimeOffset | Time that the schedule was created. |
| createdUsing     | String         | ID of the roleAssignmentScheduleRequest that created this schedule. |
| directoryScopeId | String         | Id of the directory object representing the scope of the assignment. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. App scopes are scopes that are defined and understood by this application only. |
| id               | String         | The unique identifier for the unifiedRoleAssignmentSchedule. Key, not nullable, Read-only. |
| modifiedDateTime | DateTimeOffset | Last time the schedule was updated. |
| principalId      | String         | Objectid of the principal to which the assignment is being granted to. |
| roleDefinitionId | String         | ID of the unifiedRoleDefinition the assignment is for. Read only. |
| status           | String         | Status for the `roleAssignmentSchedule`. It can include state related messages like `Provisioned`, `Revoked`, `Pending Provisioning`, and `Pending Approval`. |

## Relationships

| Relationship   | Type                                                                               | Description               |
| :------------- | :--------------------------------------------------------------------------------- | :------------------------ |
| activeInstance | [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md) | Will be deprecated. |
| appScope       | [appScope](../resources/appscope.md)                                               | Read-only property with details of the app specific scope when the assignment scope is app specific. Containment entity. |
| directoryScope | [directoryObject](../resources/directoryobject.md)                                 | Property referencing the directory object that is the scope of the assignment. Provided so that callers can get the directory object using `$expand` at the same time as getting the role assignment. Read-only. |
| principal      | [directoryObject](../resources/directoryobject.md)                                 | Property referencing the principal that is getting a role assignment through the request. Provided so that callers can get the principal using `$expand` at the same time as getting the role assignment. Read-only. |
| roleDefinition | [unifiedRoleDefinition](../resources/unifiedroledefinition.md)                     | Property indicating the roleDefinition the assignment is for. Provided so that callers can get the role definition using `$expand` at the same time as getting the role assignment. roleDefinition.Id will be auto expanded. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleScheduleBase",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.unifiedRoleScheduleBase",
  "id": "String (identifier)",
  "principalId": "String",
  "roleDefinitionId": "String",
  "directoryScopeId": "String",
  "appScopeId": "String",
  "createdUsing": "String",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "status": "String"
}
```

---
title: "governanceRoleAssignment resource type"
description: "Represents the assignment of a user or group to a role."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "governance"
author: "shauliu"
---

# governanceRoleAssignment resource type

Namespace: microsoft.graph
[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the assignment of a user or group to a role.

Privileged Identity Management (PIM) supports two types of assignments:

1. Active assignment - Represents the direct/activated access to resources.
2. Eligible assignment - Represents an intermediate stage of privileged access to resources, between no access and direct access. Administrators can assign users/groups to `eligible assignment` in advance, and whenever the access is needed, `activation` on the `eligible assignment` is needed to gain the instant access to the resource for several hours. After activation, an `active assignment` will be created for the users/group members to indicate the activated status.

## Methods

| Method		  | Return Type	|Description|
|:------------|:--------|:--------|
|[Get](../api/governanceroleassignment-get.md) |  [governanceRoleAssignment](../resources/governanceroleassignment.md) |Read properties and relationships of a role assignment entity.|
|[List](../api/governanceroleassignment-list.md) | [governanceRoleAssignment](../resources/governanceroleassignment.md) collection|List a collection of role assignments on a resource. |
|[Export](../api/governanceroleassignment-export.md) | octet-stream |Download a collection of role assignments on a resource and save as a `.csv` file.|

No `POST`, `PUT`, `PATCH`, or `DELETE` operations are supported on the `roleAssignments` entity set. Any create, update, and delete operations on `governanceRoleAssignment` are done by `governanceRoleAssignmentRequest`.

## Properties
| Property	| Type	    |Description|
|:----------|:----------|:----------|
|id         |String     |The ID of the role assignment. It is in GUID format.|
|resourceId |String     |Required. The ID of the resource which the role assignment is associated with. |
|roleDefinitionId|String|Required. The ID of the role definition which the role assignment is associated with. |
|subjectId|String       |Required. The ID of the subject which the role assignment is associated with. |
|linkedEligibleRoleAssignmentId|String|If this is an `active assignment` and created due to activation on an `eligible assignment`, it represents the ID of that `eligible assignment`; Otherwise, the value is `null`. |
|externalId   |String     |The external ID the resource that is used to identify the role assignment in the provider.|
|startDateTime|DateTimeOffset|The start time of the role assignment. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|endDateTime|DateTimeOffset|For a non-permanent role assignment, this is the time when the role assignment will be expired. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|assignmentState|String  |The state of the assignment. The value can be `Eligible` for eligible assignment or `Active` if it is directly assigned `Active` by administrators, or activated on an eligible assignment by the users.|
|memberType|String      |The type of member. The value can be: `Inherited` (if the role assignment is inherited from a parent resource scope), `Group` (if the role assignment is not inherited, but comes from the membership of a group assignment), or `User` (if the role assignment is neither inherited nor from a group assignment).|


## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|resource|[governanceResource](../resources/governanceresource.md)|Read-only. The resource associated with the role assignment. |
|roleDefinition|[governanceRoleDefinition](../resources/governanceroledefinition.md)|Read-only. The role definition associated with the role assignment. |
|subject|[governanceSubject](../resources/governancesubject.md)|Read-only. The subject associated with the role assignment. |
|linkedEligibleRoleAssignment|[governanceRoleAssignment](../resources/governanceroleassignment.md)|Read-only. If this is an `active assignment` and created due to activation on an `eligible assignment`, it represents the object of that `eligible assignment`; Otherwise, the value is `null`. |

## JSON representation

Here is a JSON representation of the resource.


<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.governanceRoleAssignment"
}-->

```json
{
  "id": "String (identifier)",
  "resourceId": "String",
  "roleDefinitionId": "String",
  "subjectId": "String",
  "linkedEligibleRoleAssignmentId": "String",
  "externalId": "String",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "assignmentState": "String",
  "memberType": "String",
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "governanceRoleAssignment",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->



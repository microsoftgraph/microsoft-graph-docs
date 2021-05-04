---
title: "privilegedRoleAssignmentRequest resource type"
description: "Represents the request for role assignment operations in Privilegd Identity Management."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "governance"
author: "shauliu"
---

# privilegedRoleAssignmentRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the request for role assignment operations in Privilegd Identity Management.

`privilegedRoleAssignmentRequest` is a ticket-modeled entity used to manage the lifecycle of role assignments. It represents the intention/decision of the users and administrators, and also provides the flexibility to enable implementation of recurrent schduling, approval gates, and so on, as compared to directly exposing `POST` and `LIST` operations as well as `MY` and `Cancel` functions on `governanceRoleAssignment`.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
|[List](../api/privilegedroleassignmentrequest-list.md) | [privilegedroleassignmentrequest](../resources/privilegedroleassignmentrequest.md)  collection|List role assignment requests.|
|[Create](../api/privilegedroleassignmentrequest-post.md)|  [privilegedroleassignmentrequest](../resources/privilegedroleassignmentrequest.md)|Create a request to manage the lifecycle of existing or new role assignment.|
|[Cancel](../api/privilegedroleassignmentrequest-cancel.md)|  |Cancel a pending role assignment request.|
|[My](../api/privilegedroleassignmentrequest-my.md)|  |Get role assignment request for current requstor.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Read-only. The id of the role assignment request.|
|assignmentState|String| The state of the assignment. The value can be `Eligible` for eligible assignment `Active` - if it is directly assigned `Active` by administrators, or activated on an eligible assignment by the users.|
|duration|String| The duration of a role assignment.|
|reason|String| The reason for the role assignment.|
|requestedDateTime|DateTimeOffset| Read-only. The request create time. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|roleId|String| The id of the role.|
|schedule|[governanceSchedule](governanceschedule.md)| The schedule object of the role assignment request.|
|status|String| Read-only.The status of the role assignment request. The value can be `NotStarted`,`Completed`,`RequestedApproval`,`Scheduled`,`Approved`,`ApprovalDenied`,`ApprovalAborted`,`Cancelling`,`Cancelled`,`Revoked`,`RequestExpired`.|
|ticketNumber|String| The ticketNumber for the role assignment. |
|ticketSystem|String| The ticketSystem for the role assignment.|
|type|String| Representing the type of the operation on the role assignment. The value can be `AdminAdd`: Administrators add users to roles;`UserAdd`: Users add role assignments.|
|userId|String| The id of the user.|

## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|roleInfo|[privilegedRole](privilegedrole.md)| The roleInfo object of the role assignment request.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privilegedRoleAssignmentRequest"
}-->

```json
{
  "assignmentState": "String",
  "duration": "String",
  "id": "String (identifier)",
  "reason": "String",
  "requestedDateTime": "String (timestamp)",
  "roleId": "String",
  "schedule": {"@odata.type": "microsoft.graph.governanceSchedule"},
  "status": "String",
  "ticketNumber": "String",
  "ticketSystem": "String",
  "type": "String",
  "userId": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "privilegedRoleAssignmentRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->



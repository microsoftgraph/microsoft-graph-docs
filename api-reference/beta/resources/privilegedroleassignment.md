---
title: "privilegedRoleAssignment resource type"
description: "Represents a privileged role assignment for a particular user. "
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "governance"
author: "shauliu"
---

# privilegedRoleAssignment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a privileged role assignment for a particular user. 


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List privilegedRoleAssignment collection](../api/privilegedroleassignment-list.md) | [privilegedRoleAssignment](privilegedroleassignment.md) collection|Get the collection of privilegedRoleAssignment objects.|
|[Get privilegedRoleAssignment](../api/privilegedroleassignment-get.md) | [privilegedRoleAssignment](privilegedroleassignment.md) |Read properties and relationships of privilegedRoleAssignment object.|
|[Create assignment](../api/privilegedroleassignment-post-privilegedroleassignments.md) |[privilegedRoleAssignment](privilegedroleassignment.md)| Create a new assignment by posting to the assignments collection.|
|[Delete](../api/privilegedroleassignment-delete.md) | None |Delete privilegedRoleAssignment object. |
|[makePermanent](../api/privilegedroleassignment-makepermanent.md)|[privilegedRoleAssignment](privilegedroleassignment.md)|Make the role assignment as permanent.|
|[makeEligible](../api/privilegedroleassignment-makeeligible.md)|[privilegedRoleAssignment](privilegedroleassignment.md)|Make the role assignment as eligible.|
|[my](../api/privilegedroleassignment-my.md)|[privilegedRoleAssignment](privilegedroleassignment.md) collection|Get the current user's privileged role assignments.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|expirationDateTime|dateTimeOffset|The UTC DateTime when the temporary privileged role assignment will be expired. For permanent role assignment, the value is null.|
|id|string| The unique identifier for the privileged role assignment. Read-only. It is in the format of 'userId_roleId', where userId is the GUID string for Azure AD user id, and roleId is the GUID string for Azure administrator role id.|
|isElevated|boolean|**true** if the role assignment is activated. **false** if the role assignment is deactivated.|
|resultMessage|string|Result message set by the service.|
|roleId|string|Role identifier. In GUID string format.|
|userId|string|User identifier. In GUID string format.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|roleInfo|[privilegedRole](privilegedrole.md)| Read-only. Nullable. The associated role information.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity",
  "@odata.type": "microsoft.graph.privilegedRoleAssignment"
}-->

```json
{
  "expirationDateTime": "String (timestamp)",
  "id": "string (identifier)",
  "isElevated": true,
  "resultMessage": "string",
  "roleId": "string",
  "userId": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "privilegedRoleAssignment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->



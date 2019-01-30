---
title: "privilegedApproval resource type"
description: "Represents an approval that is requested in Privileged Identity Management for getting into a role."
localization_priority: Normal
---

# privilegedApproval resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an approval that is requested in Privileged Identity Management for getting into a role.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get privilegedApproval](../api/privilegedapproval-get.md) | [privilegedApproval](privilegedapproval.md) |Read properties and relationships of privilegedApproval object.|
|[List privilegedApproval objects](../api/privilegedapproval-list.md) | [privilegedApproval](privilegedapproval.md) collection|Get the collection of privilegedApproval.|
|[Create privilegedApproval](../api/privilegedapproval-post-privilegedapproval.md) | [privilegedApproval](privilegedapproval.md)	|Create privilegedApproval object. |
|[Update privilegedApproval](../api/privilegedapproval-update.md) | [privilegedApproval](privilegedapproval.md)	|Update privilegedApproval object. |
|[Myrequests](../api/privilegedapproval-myrequests.md)|[privilegedApproval](privilegedapproval.md)|Get the requestor's approval requests.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|approvalDuration|Duration||
|approvalState|string| Possible values are: `pending`, `approved`, `denied`, `aborted`, `canceled`.|
|approvalType|String||
|approverReason|String||
|endDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|id|String| Read-only.|
|requestorReason|String||
|roleId|String||
|startDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|userId|String||

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|roleInfo| [privilegedRole](privilegedrole.md) | Read-only. Nullable.|
|request| [privilegedRoleAssignmentRequest](privilegedroleassignmentrequest.md) | Read-only. The role assignment request for this approval object|

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.privilegedApproval"
}-->

```json
{
  "approvalDuration": "string (timestamp)",
  "approvalState": "string",
  "approvalType": "string",
  "approverReason": "String",
  "endDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "requestorReason": "String",
  "roleId": "String",
  "startDateTime": "String (timestamp)",
  "userId": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "privilegedApproval resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/privilegedapproval.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->

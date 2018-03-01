# privilegedApproval resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents an approval that is requested in Privileged Identity Management for getting into a role.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get privilegedApproval](../api/privilegedapproval_get.md) | [privilegedApproval](privilegedapproval.md) |Read properties and relationships of privilegedApproval object.|
|[List privilegedApproval objects](../api/privilegedApproval_list.md) | [privilegedApproval](privilegedApproval.md) collection|Get the collection of privilegedApproval.|
|[Create privilegedApproval](../api/privilegedapproval_post_privilegedapproval.md) | [privilegedApproval](privilegedapproval.md)	|Create privilegedApproval object. |
|[Update privilegedApproval](../api/privilegedapproval_update.md) | [privilegedApproval](privilegedapproval.md)	|Update privilegedApproval object. |
|[Myrequests](../api/privilegedapproval_myrequests.md)|[privilegedApproval](privilegedapproval.md)|Get the requestor's approval requests.|

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
|roleInfo|[privilegedRole](privilegedrole.md)| Read-only. Nullable.|

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
<!-- {
  "type": "#page.annotation",
  "description": "privilegedApproval resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
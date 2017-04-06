# privilegedApproval resource type

Represents an approval that is requested in Privileged Identity Management for getting into a role.


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get privilegedApproval](../api/privilegedapproval_get.md) | [privilegedApproval](privilegedapproval.md) |Read properties and relationships of privilegedApproval object.|
|[List privilegedApproval objects](../api/privilegedApproval_list.md) | [privilegedApproval](privilegedApproval.md) collection|Get the collection of privilegedApproval.|
|[Myrequests](../api/privilegedapproval_myrequests.md)|[privilegedApproval](privilegedapproval.md)|Get the requestor's approval requests.|
|[Requestapproval](../api/privilegedapproval_requestapproval.md)|[privilegedApproval](privilegedapproval.md)|Request approval.|
|[Updateapprovalstate](../api/privilegedapproval_updateapprovalstate.md)|[privilegedApproval](privilegedapproval.md)|Update approval state.|

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|approvalDurationInHours|Double||
|approvalState|string| Possible values are: `pending`, `approved`, `denied`, `aborted`.|
|approvalType|string| Possible values are: `assignment`, `activation`.|
|approverReason|String||
|endTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|id|String| Read-only.|
|requestorReason|String||
|roleId|String||
|startTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|userId|String||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|roleInfo|[privilegedRole](privilegedrole.md)| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.privilegedApproval"
}-->

```json
{
  "approvalDurationInHours": 1024,
  "approvalState": "string",
  "approvalType": "string",
  "approverReason": "String",
  "endTime": "String (timestamp)",
  "id": "String (identifier)",
  "requestorReason": "String",
  "roleId": "String",
  "startTime": "String (timestamp)",
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
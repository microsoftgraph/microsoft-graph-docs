# governanceRoleAssignmentRequest resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents the request for role assignment operations in Privilegd Identity Management.

`governanceRoleAssignmentRequest` is a request-modeled entity used to manage the lifecycle of role assignments. It represents the intention or decision of the users and administrators, and also provides the flexibility to enable implementation of recurrent schduling, approval gates, and so on, as compared to directly exposing `POST`, `PUT`, and `DELETE` operations on `governanceRoleAssignment`.

## Methods

| Method		  |Return Type	|Description|
|:------------|:--------|:--------|
|[Get](../api/governanceroleassignmentrequest_get.md) | [governanceRoleAssignmentRequest](../resources/governanceroleassignmentrequest.md)|Get a role assignment request specified by ID.  
|[List](../api/governanceroleassignmentrequest_list.md) | [governanceRoleAssignmentRequest](../resources/governanceroleassignmentrequest.md)  collection|Get role assignment requests on a resource.|
|[Create](../api/governanceroleassignmentrequest_post.md)|  [governanceRoleAssignmentRequest](../resources/governanceroleassignmentrequest.md)|Create a request to manage the lifecycle of existing or new role assignment.|
|[Cancel](../api/governanceroleassignmentrequest_cancel.md)|  |Cancel a pending role assignment request.|
|[Update](../api/governanceroleassignmentrequest_update.md)| [governanceRoleAssignmentRequest](../resources/governanceroleassignmentrequest.md)|Administrators update the decisions on requests if the requests are in status of `PendingAdminDecision`.|

## Properties
| Property	                | Type	        |Description|
|:--------------------------|:--------------|:----------|
|id                         |String         |The id of the role assignment request.|
|resourceId                 |String         |Required. The id of the resource which the role assignment request is associated with.|
|roleDefinitionId           |String         |Required. The id of the role definition which the role assignment request is associated with.|
|subjectId                  |String         |Required. The id of the subject which the role assignment request is associated with.|
|type                       |String         |Required. Representing the the type of the operation on the role assignment. The value can be <ul><li>`AdminAdd`: Adminstrators assign users/groups to roles;</li><li>`UserAdd`: Users activate eligible assignments;</li><li> `AdminUpdate`: Adminstrators change existing role assignments</li><li>`AdminRemove`: Adminstrators remove users/groups from roles;<li>`UserRemove`: Users deactivate active assignments;<li>`UserExtend`: Users request to extend their expiring assignments;</li><li>`AdminExtend`: Administrators extend expiring assignments.</li><li>`UserRenew`: Users request to renew their expired assignments;</li><li>`AdminRenew`: Administrators extend expiring assignments.</li></ul>|
|assignmentState|String  |Required. The state of the assignment. The value can be <ul><li> `Eligible` for eligible assignment</li><li> `Active` - if it is directly assigned `Active` by administrators, or activated on an eligible assignment by the users.</li></ul>|
|requestedDateTime          |DateTimeOffset |Read-only. The request create time. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|roleAssignmentStartDateTime|DateTimeOffset |The start time for the role assignment. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|roleAssignmentEndDateTime|DateTimeOffset   |The end time for the role assignment. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|schedule                   |[governanceSchedule](governanceschedule.md)|The schedule object of the role assignment request.|
|reason                     |String         |A message provided by users and administrators when create the request about why it is needed.|
|status                     |[governanceRoleAssignmentRequestStatus](governanceroleassignmentrequeststatus.md)         |The status of the role assignment request.|
|linkedEligibleRoleAssignmentId|String        |If this is a request for role activation, it represents the id of the `eligible assignment` being referred; Otherwise, the value is `null`. |



## Relationships
| Relationship | Type	                             |Description|
|:-------------|:----------------------------------|:----------|
|resource      |[governanceResource](../resources/governanceresource.md)            |Read-only. The resource that the request aims to. |
|roleDefinition|[governanceRoleDefinition](../resources/governanceroledefinition.md)|Read-only. The role definition that the request aims to. |
|subject       |[governanceSubject](../resources/governancesubject.md)|Read-only. The user/group principal.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.governanceRoleAssignmentRequest"
}-->

```json
{
  "id": "String (identifier)",
  "resourceId": "String",
  "roleDefinitionId": "String",
  "subjectId": "String",
  "type": "String",
  "assignmentState": "String",
  "reason": "String",
  "requestedDateTime": "String (timestamp)",
  "roleAssignmentStartDateTime": "String (timestamp)",
  "roleAssignmentEndDateTime": "String (timestamp)",
  "schedule": {"@odata.type": "microsoft.graph.governanceSchedule"},
  "status": {"@odata.type": "microsoft.graph.governanceRoleAssignmentRequestStatus"},
  "linkedEligibleRoleAssignmentId": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "governanceRoleAssignmentRequest",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

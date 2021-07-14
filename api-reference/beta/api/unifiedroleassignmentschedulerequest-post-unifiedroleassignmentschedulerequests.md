---
title: "Create unifiedRoleAssignmentScheduleRequest"
description: "Create a new unifiedRoleAssignmentScheduleRequest object."
author: "shauliu"
localization_priority: Normal
ms.prod: "governance"
doc_type: apiPageType
---

# Create unifiedRoleAssignmentScheduleRequest
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleAssignmentSchedule.ReadWrite.Directory, RoleManagement.ReadWrite.Directory|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /roleManagement/directory/roleAssignmentScheduleRequests
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) object.

The following table shows the properties that are required when you create the [unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the unifiedRoleAssignmentScheduleRequest. Key, not nullable, Read-only.|
|action|String|Representing the type of the operation on the role assignment. The value can be <ul><li>`AdminAdd`: Administrators assign users/groups to roles;</li><li>`UserAdd`: Users activate eligible assignments;</li><li> `AdminUpdate`: Administrators change existing role assignments</li><li>`AdminRemove`: Administrators remove users/groups from roles;<li>`UserRemove`: Users deactivate active assignments;<li>`UserExtend`: Users request to extend their expiring assignments;</li><li>`AdminExtend`: Administrators extend expiring assignments.</li><li>`UserRenew`: Users request to renew their expired assignments;</li><li>`AdminRenew`: Administrators extend expiring assignments.</li></ul>|
|principalId|String|Objectid of the principal to which the assignment is being granted to.|
|roleDefinitionId|String|ID of the unifiedRoleDefinition the assignment is for. Read only.|
|directoryScopeId|String|Id of the directory object representing the scope of the assignment. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. App scopes are scopes that are defined and understood by this application only.|
|appScopeId|String|Id of the app specific scope when the assignment scope is app specific. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use "/" for tenant-wide scope. App scopes are scopes that are defined and understood by this application only.|
|isValidationOnly|Boolean|A boolean that determines whether the call is a validation or an actual call. Only set this property if you want to check whether an activation is subject to additional rules like MFA before actually submitting the request.|
|targetScheduleId|String|ID of the schedule object attached to the assignment.|
|justification|String|A message provided by users and administrators when create the request about why it is needed.|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|The schedule object of the role assignment request.|
|ticketInfo|[ticketInfo](../resources/ticketinfo.md)|The ticketInfo object attached to the role assignment request which includes details of the ticket number and ticket system.|

## Response

If successful, this method returns a `201 Created` response code and an [unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_unifiedroleassignmentschedulerequest_from_unifiedroleassignmentschedulerequests"
}
-->
``` http
POST https://graph.microsoft.com/beta/roleManagement/directory/roleAssignmentScheduleRequests/
Content-Type: application/json
Content-length: 510

{
  "@odata.type": "#Microsoft.Identity.Governance.Common.Data.ExternalModels.V1.unifiedRoleAssignmentScheduleRequest",
  "action": "String",
  "principalId": "String",
  "roleDefinitionId": "String",
  "directoryScopeId": "String",
  "appScopeId": "String",
  "isValidationOnly": "Boolean",
  "targetScheduleId": "String",
  "justification": "String",
  "scheduleInfo": {
    "@odata.type": "microsoft.graph.requestSchedule"
  },
  "ticketInfo": {
    "@odata.type": "microsoft.graph.ticketInfo"
  }
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-unifiedroleassignmentschedulerequest-from-unifiedroleassignmentschedulerequests-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-unifiedroleassignmentschedulerequest-from-unifiedroleassignmentschedulerequests-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-unifiedroleassignmentschedulerequest-from-unifiedroleassignmentschedulerequests-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-unifiedroleassignmentschedulerequest-from-unifiedroleassignmentschedulerequests-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleAssignmentScheduleRequest"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "c13ee236-e236-c13e-36e2-3ec136e23ec1",
  "action": "String",
  "principalId": "String",
  "roleDefinitionId": "String",
  "directoryScopeId": "String",
  "appScopeId": "String",
  "isValidationOnly": "Boolean",
  "targetScheduleId": "String",
  "justification": "String",
  "scheduleInfo": {
    "@odata.type": "microsoft.graph.requestSchedule"
  },
  "ticketInfo": {
    "@odata.type": "microsoft.graph.ticketInfo"
  }
}
```


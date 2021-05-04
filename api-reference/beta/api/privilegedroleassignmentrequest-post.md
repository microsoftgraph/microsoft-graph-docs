---
title: "Create privilegedRoleAssignmentRequest"
description: "Create a privilegedroleassignmentrequest object."
localization_priority: Normal
doc_type: apiPageType
ms.prod: "governance"
author: "shauliu"
---

# Create privilegedRoleAssignmentRequest

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [privilegedroleassignmentrequest](../resources/privilegedroleassignmentrequest.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account) | PrivilegedAccess.ReadWrite.AzureAD, Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /privilegedRoleAssignmentRequests
```

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required. |

## Request body
In the request body, supply a JSON representation of [privilegedroleassignmentrequest](../resources/privilegedroleassignmentrequest.md) object. 

| Property	   | Type	 |  Description|
|:---------------|:--------|:----------|
|roleId|String|The ID of the role. Required.|
|type|String|Represents the type of the operation on the role assignment. The value can be `AdminAdd`: Administrators add users to roles;`UserAdd`: Users add role assignments. Required.|
|assignmentState|String|The state of the assignment. The value can be `Eligible` for eligible assignment `Active` - if it is directly assigned `Active` by administrators, or activated on an eligible assignment by the users. Possible values are: ``NotStarted``, `Completed`, `RequestedApproval`, `Scheduled`, `Approved`, `ApprovalDenied`, `ApprovalAborted`, `Cancelling`, `Cancelled`, `Revoked`, `RequestExpired`. Required.|
|reason|String|The reason needs to be provided for the role assignment request for audit and review purpose.|
|schedule|[governanceSchedule](../resources/governanceschedule.md)|The schedule of the role assignment request.|

## Response
If successful, this method returns a `201 Created` response code and a [privilegedRoleAssignmentRequest](../resources/privilegedroleassignmentrequest.md) object in the response body.

### Error codes
This API returns that standard HTTP error codes. In addition, it can return the error codes listed in the following table.

|Error code     | Error message              | 
|:--------------------| :---------------------|
| 400 BadRequest | RoleAssignmentRequest property was NULL |
| 400 BadRequest | Unable to deserialize roleAssignmentRequest Object. |
| 400 BadRequest | RoleId is required. |
| 400 BadRequest | Schedule start date must be specified and should be greater than Now. |
| 400 BadRequest | A schedule already exists for this user, role and schedule type. |
| 400 BadRequest | A pending approval already exists for this user, role and approval type. |
| 400 BadRequest | Requestor reason is missing. |
| 400 BadRequest | Requestor reason should be less than 500 characters. |
| 400 BadRequest | Elevation duration must be between 0.5 and {from setting}. |
| 400 BadRequest | There is a overlap between scheduled activation and the request. |
| 400 BadRequest | The role is already activated. |
| 400 BadRequest | GenericElevateUserToRoleAssignments: Tickting information is required and not supplied in the activation process. |
| 400 BadRequest | There is a overlap between scheduled activation and the request. |
| 403 UnAuthorized | Elevation requires Multi-Factor Authentication. |
| 403 UnAuthorized | On behalf of elevation is not allowed. |

## Example
##### Request
The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_privilegedroleassignmentrequest"
}-->
```http
POST https://graph.microsoft.com/beta/privilegedRoleAssignmentRequests
Content-type: application/json

{
    "duration": "2",
    "reason": "Activate the role for business purpose",
    "ticketNumber": "234",
    "ticketSystem": "system",
    "schedule": {
        "startDateTime": "2018-02-08T02:35:17.903Z"
    },
    "type": "UserAdd",
    "assignmentState": "Active",
    "roleId": "88d8e3e3-8f55-4a1e-953a-9b9898b8876b"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-privilegedroleassignmentrequest-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-privilegedroleassignmentrequest-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/post-privilegedroleassignmentrequest-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-privilegedroleassignmentrequest-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response
The following is an example of the response. Note: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.privilegedRoleAssignmentRequest"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 304


{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#privilegedRoleAssignmentRequests/$entity",
    "schedule": {
        "type": "activation",
        "startDateTime": "2018-02-08T02:35:17.903Z",
        "endDateTime": null,
        "duration" : null
    },
    "id": "e13ef8a0-c1cb-4d03-aaae-9cd1c8ede2d1",
    "type": "UserAdd",
    "assignmentState": "Active",
    "requestedDateTime": "2018-02-08T02:35:42.9137335Z",
    "status": "NotStarted",
    "duration": "2",
    "reason": "Activate the role for business purpose",
    "ticketNumber": "234",
    "ticketSystem": "system",
    "userId": "Self",
    "roleId": "88d8e3e3-8f55-4a1e-953a-9b9898b8876b"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Post privilegedRoleAssignmentRequest",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->



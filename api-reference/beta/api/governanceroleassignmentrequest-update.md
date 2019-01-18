---
title: "Update governanceRoleAssignmentRequests"
description: "Enable administrators to update their decisions (`AdminApproved` or `AdminDenied`) on governanceRoleAssignmentRequests that are in status of `PendingAdminDecision`."
localization_priority: Normal
---

# Update governanceRoleAssignmentRequests

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Enable administrators to update their decisions (`AdminApproved` or `AdminDenied`) on [governanceRoleAssignmentRequests](../resources/governanceroleassignmentrequest.md) that are in status of `PendingAdminDecision`.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

>**Note:** This API also requires that the requester have at least one `Active` adminstrator role assignment (`owner` or `user access administrator`) on the resource that the [governanceRoleAssignmentRequest](../resources/governanceroleassignmentrequest.md) belongs to. 

|Permission type      | Permissions              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | PrivilegedAccess.ReadWrite.AzureResources  |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | PrivilegedAccess.ReadWrite.AzureResources |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /privilegedAccess/azureResources/roleAssignmentRequests/{id}/updateRequest   
```

## Request headers
| Name           | Description|
|:---------------|:----------|
| Authorization  | Bearer {code}|
| Content-type  | application/json|

## Request body

|Parameters	     |Type	                 |Required |Description|
|:-------------|:----------------------|:--------|:----------|
|reason        |String                 |✓        |The reason provided by the administrator for his decision.|
|decision        |String                 |✓        |The administrator decision of the role assignment request. The value should be updated as `AdminApproved` or `AdminDenied`.|
|schedule      |[governanceSchedule](../resources/governanceschedule.md)|        | The schedule of the role assignment request. For status of `AdminApproved`, it is required.|
|assignmentState      |String|         | The state of assignment, and the values can be `Eligible` or `Active`. For decision of `AdminApproved`, it is required. |
### Response
This method can only be applied to requests that are in status of `PendingAdminDecision`.

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Example
##### Request
<!-- {
  "blockType": "request",
  "name": "updaterequest_governanceroleassignmentrequest"
}-->
```http
POST https://graph.microsoft.com/beta/privilegedAccess/azureResources/roleAssignmentRequests/7c53453e-d5a4-41e0-8eb1-32d5ec8bfdee/updateRequest
```
##### Request body
```json
{
  "reason":"approve the request to extend role assignment",
  "schedule":{
    "type":"Once",
    "startDateTime":"2018-02-20T07:31:13.451Z",
    "stopDateTime":"2018-05-21T07:31:13.451Z",
    },
  "decision":"AdminApproved",
  "assignmentState": "Eligible"
}
```

##### Response
<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.None"
} -->
```http
HTTP/1.1 204 No Content
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "UpdateRequest governanceRoleAssignmentRequest",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

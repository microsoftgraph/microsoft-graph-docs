---
title: "unifiedRoleAssignmentSchedule: filterByCurrentUser"
description: "Get a list of the unifiedRoleAssignmentSchedule objects and their properties filtered by a particular user principal"
author: "shauliu"
localization_priority: Normal
ms.prod: "governance"
doc_type: apiPageType
---

# unifiedRoleAssignmentSchedule: filterByCurrentUser
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [unifiedRoleAssignmentSchedule](../resources/unifiedRoleAssignmentSchedule.md) objects and their properties associated with a particular principal object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleAssignmentSchedule.Read.Directory, RoleManagement.Read.Directory, RoleManagement.Read.All, RoleAssignmentSchedule.ReadWrite.Directory|
|Delegated (personal Microsoft account)|Not supported|
|Application|RoleManagement.Read.All, RoleManagement.Read.Directory, RoleManagement.ReadWrite.Directory|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /roleManagement/directory/roleAssignmentSchedules/filterByCurrentUser
```

## Query parameters
The following table shows the query parameters that can be used with this method.

|Parameter|Type|Description|
|:---|:---|:---|
|on|roleAssignmentScheduleFilterByCurrentUserOptions|Id of the current user.|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md) collection in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "unifiedroleassignmentschedule_filterbycurrentuser"
}
-->
``` http
GET https://graph.microsoft.com/beta/roleManagement/directory/roleAssignmentSchedules/filterByCurrentUser(on='dce468b2-68b2-dce4-b268-e4dcb268e4dc')
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRoleAssignmentSchedule)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "dce468b2-68b2-dce4-b268-e4dcb268e4dc",
      "principalId": "dce468b2-68b2-dce4-b268-e4dcb268e4dc",
      "roleDefinitionId": "dce468b2-68b2-dce4-b268-e4dcb268e4dc",
      "directoryScopeId": "dce468b2-68b2-dce4-b268-e4dcb268e4dc",
      "appScopeId": "dce468b2-68b2-dce4-b268-e4dcb268e4dc",
      "createdUsing": "dce468b2-68b2-dce4-b268-e4dcb268e4dc",
      "createdDateTime": "2020-09-09T21:35:27.91Z",
      "modifiedDateTime": "2020-09-09T21:35:27.91Z",
      "status": "Provisioned",
      "scheduleInfo": {
        "@odata.type": "microsoft.graph.requestSchedule"
      },
      "assignmentType": "Eligible",
      "memberType": "direct"
    }
  ]
}
```


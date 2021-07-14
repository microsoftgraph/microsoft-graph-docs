---
title: "unifiedRoleEligibilityScheduleInstance: filterByCurrentUser"
description: "Get a list of the unifiedRoleEligibilityScheduleInstance objects and their properties filtered by a particular user principal"
author: "shauliu"
localization_priority: Normal
ms.prod: "governance"
doc_type: apiPageType
---

# unifiedRoleEligibilityScheduleInstance: filterByCurrentUser
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [unifiedRoleEligibilityScheduleInstance](../resources/unifiedRoleEligibilityScheduleInstance.md) objects and their properties associated with a particular principal object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleEligibilitySchedule.Read.Directory, RoleManagement.Read.Directory, RoleManagement.Read.All, RoleEligibilitySchedule.ReadWrite.Directory, RoleManagement.ReadWrite.Directory|
|Delegated (personal Microsoft account)|Not supported|
|Application|RoleManagement.Read.All, RoleManagement.Read.Directory, RoleManagement.ReadWrite.Directory|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /roleManagement/directory/roleEligibilityScheduleInstances/filterByCurrentUser
```

## Query parameters
The following table shows the query parameters that can be used with this method.

|Parameter|Type|Description|
|:---|:---|:---|
|on|roleEligibilityScheduleInstanceFilterByCurrentUserOptions|Id of the current user.|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [unifiedRoleEligibilityScheduleInstance](../resources/unifiedroleeligibilityscheduleinstance.md) collection in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "unifiedroleeligibilityscheduleinstance_filterbycurrentuser"
}
-->
``` http
GET https://graph.microsoft.com/beta/roleManagement/directory/roleEligibilityScheduleInstances/filterByCurrentUser(on='5cfd7709-7709-5cfd-0977-fd5c0977fd5c')
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRoleEligibilityScheduleInstance)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "5cfd7709-7709-5cfd-0977-fd5c0977fd5c",
      "principalId": "5cfd7709-7709-5cfd-0977-fd5c0977fd5c",
      "roleDefinitionId": "5cfd7709-7709-5cfd-0977-fd5c0977fd5c",
      "directoryScopeId": "5cfd7709-7709-5cfd-0977-fd5c0977fd5c",
      "appScopeId": "5cfd7709-7709-5cfd-0977-fd5c0977fd5c",
      "startDateTime": "2020-09-09T21:35:27.91Z",
      "endDateTime": "2020-09-09T21:35:27.91Z",
      "memberType": "direct",
      "roleEligibilityScheduleId": "5cfd7709-7709-5cfd-0977-fd5c0977fd5c"
    }
  ]
}
```


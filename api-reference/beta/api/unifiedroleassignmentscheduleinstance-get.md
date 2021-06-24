---
title: "Get unifiedRoleAssignmentScheduleInstance"
description: "Read the properties and relationships of an unifiedRoleAssignmentScheduleInstance object."
author: "shauliu"
localization_priority: Normal
ms.prod: "governance"
doc_type: apiPageType
---

# Get unifiedRoleAssignmentScheduleInstance
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [unifiedRoleAssignmentScheduleInstance](../resources/unifiedroleassignmentscheduleinstance.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|PrivilegedAccess.ReadWrite.AzureAD|
|Delegated (personal Microsoft account)|Not supported|
|Application|PrivilegedAccess.Read.AzureAD|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /roleManagement/directory/roleAssignmentScheduleInstances/{unifiedRoleAssignmentScheduleInstancesId}
```

## Optional query parameters
This method supports all of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [unifiedRoleAssignmentScheduleInstance](../resources/unifiedroleassignmentscheduleinstance.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_unifiedroleassignmentscheduleinstance"
}
-->
``` http
GET https://graph.microsoft.com/beta/roleManagement/directory/unifiedRoleAssignmentScheduleInstances/eb18c026-c026-eb18-26c0-18eb26c018eb
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleAssignmentScheduleInstance"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "id": "eb18c026-c026-eb18-26c0-18eb26c018eb",
    "principalId": "eb18c026-c026-eb18-26c0-18eb26c018eb",
    "roleDefinitionId": "eb18c026-c026-eb18-26c0-18eb26c018eb",
    "directoryScopeId": "eb18c026-c026-eb18-26c0-18eb26c018eb",
    "appScopeId": "eb18c026-c026-eb18-26c0-18eb26c018eb",
    "startDateTime": "2020-09-09T21:35:27.91Z",
    "endDateTime": "2020-09-09T21:35:27.91Z",
    "assignmentType": "eligible",
    "memberType": "direct",
    "roleAssignmentOriginId": "eb18c026-c026-eb18-26c0-18eb26c018eb",
    "roleAssignmentScheduleId": "eb18c026-c026-eb18-26c0-18eb26c018eb"
  }
}
```


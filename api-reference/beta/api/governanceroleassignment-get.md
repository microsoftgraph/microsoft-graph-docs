---
title: "Get governanceRoleAssignment"
description: "Retrieve the properties and relationships of a governanceRoleAssignment."
localization_priority: Normal
doc_type: apiPageType
ms.prod: "governance"
author: "shauliu"
---

# Get governanceRoleAssignment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of a [governanceRoleAssignment](../resources/governanceroleassignment.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference#privileged-access-permissions).

### Azure resources

| Permission type | Permissions |
|:--------------- |:----------- |
| Delegated (work or school account) | PrivilegedAccess.ReadWrite.AzureResources |
| Delegated (personal Microsoft account) | Not supported. |
| Application | PrivilegedAccess.Read.AzureResources |

### Azure AD

| Permission type | Permissions |
|:--------------- |:----------- |
| Delegated (work or school account) | PrivilegedAccess.ReadWrite.AzureAD |
| Delegated (personal Microsoft account) | Not supported. |
| Application | PrivilegedAccess.Read.AzureAD |

### Groups

|Permission type | Permissions |
|:-------------- |:----------- |
| Delegated (work or school account) | PrivilegedAccess.ReadWrite.AzureADGroup |
| Delegated (personal Microsoft account) | Not supported. |
| Application | PrivilegedAccess.Read.AzureADGroup |

## HTTP request
<!-- { "blockType": "ignored" } -->
1. Get a [governanceRoleAssignment](../resources/governanceroleassignment.md) on a resource

    *Note: Besides the permission scope, it requires the requestor to have at least one role assignment on the resource.* 
```http
GET /privilegedAccess/azureResources/resources/{resourceId}/roleAssignments/{id}
GET /privilegedAccess/azureResources/roleAssignments/{id}?$filter=resourceId+eq+'{resourceId}'
```
2. Get a [governanceRoleAssignment](../resources/governanceroleassignment.md) of mine
```http
GET /privilegedAccess/azureResources/roleAssignments/{id}?$filter=subjectId+eq+'{myId}'
```

## Optional query parameters
This method does **not** supports [OData Query Parameters](/graph/query-parameters) other than `$filter` to help customize the response.

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}|

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and [governanceRoleAssignment](../resources/governanceroleassignment.md) object in the response body.
## Example
<!-- {
  "blockType": "request",
  "name": "get_governanceroleassignment"
}-->
Get a [governanceRoleAssignment](../resources/governanceroleassignment.md) on subscription "Wingtip Toys - Prod"
##### Request
```http
GET https://graph.microsoft.com/beta/privilegedAccess/azureResources/roleAssignments/0ba78f41-ee7a-4227-adb9-1499431b2164?$filter=resourceId+eq+'e5e7d29d-5465-45ac-885f-4716a5ee74b5'
```
##### Response
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.governanceRoleAssignment"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 182

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#governanceRoleAssignments/$entity",
    "id": "0ba78f41-ee7a-4227-adb9-1499431b2164",
    "resourceId": "e5e7d29d-5465-45ac-885f-4716a5ee74b5",
    "roleDefinitionId": "8b4d1d51-08e9-4254-b0a6-b16177aae376",
    "subjectId": "74487eb5-1630-4fa8-9581-0bb076ea5de3",
    "linkedEligibleRoleAssignmentId": null,
    "externalId": null,
    "startDateTime": "2018-01-22T23:47:19.687Z",
    "endDateTime": "2018-07-21T23:47:02.887Z",
    "memberType": "Direct",
    "assignmentState": "Eligible",
    "status": "Provisioned"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get governanceRoleAssignment",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->



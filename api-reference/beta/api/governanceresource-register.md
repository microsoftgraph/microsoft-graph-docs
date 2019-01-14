---
title: "Register governanceResource"
description: "Register an unmanaged governanceResource object in PIM."
localization_priority: Normal
---

# Register governanceResource

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Register an unmanaged [governanceResource](../resources/governanceresource.md) object in Privileged Identity Management.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

>**Note:** This API also requires that the requester have at least one active role assignment on the resource.

|Permission type      | Permissions              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | PrivilegedAccess.ReadWrite.AzureResources  |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | PrivilegedAccess.ReadWrite.AzureResources |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /privilegedAccess/azureResources/resources/register
```

### Optional query parameters
This method **only** supports the `$select` and `$expand` [OData query parameters](/graph/query-parameters) to help customize the response.

### Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}|
| Content-type  | application/json|

### Request body

|Parameters	     |Type	               |Required |Description|
|:-------------|:----------------------|:--------|:----------|
|externalId    |String                 |✓        |The externalId of the resource to be registered in PIM.|

### Response
If successful, this method returns a `200 OK` response.

### Example
This example shows how to register an Azure subscription Wingtip Toys - Prod.
<!-- {
  "blockType": "request",
  "name": "get_governanceresource"
}-->
##### Request
```http
POST https://graph.microsoft.com/beta/privilegedAccess/azureResources/resources/register
```
##### Response
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.governanceResource"
} -->
```http
HTTP/1.1 200 OK
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Register governanceResource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

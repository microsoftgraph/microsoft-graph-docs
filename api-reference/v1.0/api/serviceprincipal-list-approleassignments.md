---
title: "List appRoleAssignments granted to a service principal"
description: "Retrieve the list of app role assignments granted to a service principal."
localization_priority: Priority
doc_type: apiPageType
ms.prod: "applications"
author: "sureshja"
---

# List appRoleAssignments granted to a service principal

Namespace: microsoft.graph


Retrieve the list of [appRoleAssignment](../resources/approleassignment.md) that have been granted to a service principal.

App roles that are assigned to service principals are also known as [application permissions](/azure/active-directory/develop/v2-permissions-and-consent#permission-types). Application permissions can be granted directly by creating app role assignments, or through a [consent experience](/azure/active-directory/develop/application-consent-experience).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Application.Read.All, Directory.Read.All, Application.ReadWrite.All, Directory.ReadWrite.All, Directory.AccessAsUser.All  |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Application.Read.All, Directory.Read.All, Application.ReadWrite.All, Directory.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /servicePrincipals/{id}/appRoleAssignments
```

## Optional query parameters

This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Name           | Description                |
|:---------------|:---------------------------|
| Authorization  | Bearer {token}. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [appRoleAssignment](../resources/approleassignment.md) objects in the response body.

## Example

### Request

The following is an example of a request to retrieve the app roles that have been assigned to a service principal.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "serviceprincipal_get_approleassignments"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/servicePrincipals/8e881353-1735-45af-af21-ee1344582a4d/appRoleAssignments
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/serviceprincipal-get-approleassignments-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/serviceprincipal-get-approleassignments-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/serviceprincipal-get-approleassignments-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/serviceprincipal-get-approleassignments-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

Here is an example of the response. 

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.appRoleAssignment",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#appRoleAssignments",
  "value": [
    {
      "id": "UxOIjjUXr0WvIe4TRFgqTY4z9Wu5KxpBtlEpoTGjw-A",
      "createdDateTime": "2021-02-02T04:22:45.4980259Z",
      "appRoleId": "e2a3a72e-5f79-4c64-b1b1-878b674786c9",
      "principalDisplayName": "dxprovisioning-graphapi-client",
      "principalId": "8e881353-1735-45af-af21-ee1344582a4d",
      "principalType": "ServicePrincipal",
      "resourceDisplayName": "Microsoft Graph",
      "resourceId": "fea94d6d-b5bf-44d2-a887-4f72a8d74f44"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List appRoleAssignments",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

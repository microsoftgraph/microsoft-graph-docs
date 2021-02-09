---
title: "List riskyUsers"
description: "Retrieve the properties and relationships of a collection of **riskyUser** objects."
localization_priority: Normal
author: "cloudhandler"
doc_type: apiPageType
ms.prod: "microsoft-identity-platform"
---
# List riskyUsers

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of a collection of **riskyUser** objects.

>**Note:** Using the riskyUsers API requires an Azure AD Premium P2 license.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | IdentityRiskyUser.Read.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | IdentityRiskyUser.Read.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /riskyUsers
GET /identityProtection/riskyUsers
```
## Optional query parameters
This method supports `$filter` to customize the query response. See the example later in this topic. 

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required. |
| Workbook-Session-Id  | Workbook session ID that determines whether changes are persisted. Optional.|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [riskyUser](../resources/riskyuser.md) objects in the response body.

## Examples
### Example 1: List risky users
#### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_riskyusers"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/riskyUsers
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-riskyusers-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-riskyusers-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/list-riskyusers-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-riskyusers-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "isCollection": true,
  "@odata.type": "microsoft.graph.riskyUser"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value":[
        {
            "id": "c2b6c2b9-dddc-acd0-2b39-d519d803dbc3",
            "riskLastUpdatedDateTime": "2016-01-29T20:03:57.7872426Z",
            "isProcessing": true,
            "isDeleted": true,
            "riskDetail": "adminConfirmedSigninCompromised",
            "riskLevel": "high",
            "riskState": "atRisk",
            "userDisplayName": "Alex Wilbur",
            "userPrincipalName": "alexw@contoso.com"
        }
    ]
}
```

### Example 2: List risky users and filter the results
#### Request
The following example shows how to use `$filter` to get the collection of riskyUser whose aggregate risk level is Medium.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_filter_riskyusers"
} -->
```msgraph-interactive
GET https://graph.microsoft.com/beta/identityProtection/riskyUsers?$filter=riskLevel eq microsoft.graph.riskLevel'medium'
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-filter-riskyusers-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-filter-riskyusers-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/list-filter-riskyusers-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-filter-riskyusers-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "isCollection": true,
  "@odata.type": "microsoft.graph.riskyUser"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id": "c2b6c2b9-dddc-acd0-2b39-d519d803dbc3",
            "riskLastUpdatedDateTime": "2018-09-22T00:04:49.1195968Z",
            "isProcessing": true,
            "isDeleted": false,
            "riskDetail": "none",
            "riskLevel": "medium",
            "riskState": "atRisk",
            "userDisplayName": "Alex Wilbur",
            "userPrincipalName": "alexw@contoso.com",
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List riskyUsers",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->



---
title: "List agreementAcceptances"
description: "Retrieve a list of a user's agreementAcceptance objects."
localization_priority: Normal
author: "jpettere"
ms.prod: "users"
doc_type: apiPageType
---

# List agreementAcceptances

Namespace: microsoft.graph

Retrieve a list of a user's [agreementAcceptance](../resources/agreementacceptance.md) objects.
## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | AgreementAcceptance.Read |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/agreementAcceptances
GET /users/{id | userPrincipalName}/agreementAcceptances
```

## Optional query parameters
This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and a collection of [agreementAcceptance](../resources/agreementacceptance.md) objects in the response body.
## Example
### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_agreementacceptances"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/agreementAcceptances

GET https://graph.microsoft.com/v1.0/users/f2f4f8e9-c99d-4c73-b990-34f81fbf7fcf/agreementAcceptances
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-agreementacceptances-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-agreementacceptances-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-agreementacceptances-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
>**Note:** The response object shown here might be shortened for readability. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.agreementAcceptance",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 303

{
  "value": [
    {
      "agreementId": "093b947f-8363-4979-a47d-4c52b33ee1be",
      "userId": "f2f4f8e9-c99d-4c73-b990-34f81fbf7fcf",
      "agreementFileId": "f2f4f8e9-c99d-4c73-b990-34f81fbf7fcf",
      "recordedDateTime": "2021-03-10T00:39:56.0523527Z",
      "userDisplayName": "Test_User",
      "userPrincipalName": "Test_User@TestTenant.onmicrosoft.com"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List agreementAcceptances",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

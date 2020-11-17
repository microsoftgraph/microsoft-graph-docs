---
title: "List credentialUserRegistrationDetails"
description: "Get a list of credentialUserRegistrationDetails objects for a given tenant."
localization_priority: Normal
author: "khotz"
ms.prod: "reports"
doc_type: "apiPageType"
---

# List credentialUserRegistrationDetails

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [credentialUserRegistrationDetails](../resources/credentialuserregistrationdetails.md) objects for a given tenant.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Reports.Read.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Reports.Read.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /reports/credentialUserRegistrationDetails
```

## Optional query parameters

This function supports the optional OData query parameter **$filter**. You can apply **$filter** on one or more of the following properties of the [credentialUserRegistrationDetails](../resources/credentialuserregistrationdetails.md) resource.

| Properties | Description and example |
| --------- | ----------------------- |
| userDisplayName | Filter by user name. For example: `/reports/credentialUserRegistrationDetails?$filter=userDisplayName eq 'Contoso'`. Supported filter operators: `eq`, and `startswith()`. Supports case insensitive. |
| userPrincipalName | Filter by user principal name. For example: `/reports/credentialUserRegistrationDetails?$filter=userPrincipalName eq 'Contoso'`. Supported filter operators: `eq` and `startswith()`. Supports case insensitive. |
| authMethods | Filter by the authentication methods used during registration. For example: `/reports/credentialUserRegistrationDetails?$filter=authMethods/any(t:t eq microsoft.graph.registrationAuthMethod'email')`. Supported filter operators: `eq`. |
| isRegistered | Filter for users who have registered for self-service password reset (SSPR). For example: `/reports/credentialUserRegistrationDetails?$filter=isRegistered eq true`. Supported filter operators: `eq`. |
| isEnabled | Filter for users who have been enabled for SSPR. For example: `/reports/credentialUserRegistrationDetails?$filter=isEnabled eq true`. Supported filtter operators: `eq`. |
| isCapable | Filter for users who are ready to perform password reset or multi-factor authentication (MFA). For example: `/reports/credentialUserRegistrationDetails?$filter=isCapable eq true`. Supported filter operators: `eq` |
| isMfaRegistered | Filter for users who are registered for MFA. For example: `/reports/credentialUserRegistrationDetails?$filter=isMfaRegistered eq true`. Supported filter operators: `eq`. |

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token} |
| Content-Type | application/json |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [credentialUserRegistrationDetails](../resources/credentialuserregistrationdetails.md) objects in the response body.

## Examples

The following example shows how to call this API.

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_credentialuserregistrationdetails"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/credentialUserRegistrationDetails
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-credentialuserregistrationdetails-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-credentialuserregistrationdetails-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-credentialuserregistrationdetails-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-credentialuserregistrationdetails-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties are returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.credentialUserRegistrationDetails",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/reports/$metadata#Collection(microsoft.graph.credentialUserRegistrationDetails)",
  "value":[
    {
      "id" : "id-value",
      "userPrincipalName":"userPrincipalName",
      "userDisplayName": "userDisplayName-value",
      "authMethods": ["email", "mobileSMS"],
      "isRegistered" : false,
      "isEnabled" : true,
      "isCapable" : false,
      "isMfaRegistered" : true
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List credentialUserRegistrationDetails",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->



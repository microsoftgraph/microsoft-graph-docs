---
<<<<<<< HEAD
title: "List userCredentialUsageDetails"
description: "Get a list of userCredentialUsageDetails objects for a given tenant."
localization_priority: Normal
author: "khotz"
ms.prod: "reports"
doc_type: "apiPageType"
---

# List userCredentialUsageDetails

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [userCredentialUsageDetails](../resources/usercredentialusagedetails.md) objects for a given tenant. Details include user information, status of the reset, and the reason for failure.

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
GET /reports/userCredentialUsageDetails
```

## Optional query parameters

This function supports the optional OData query parameter **$filter**. You can apply **$filter** on one or more of the following properties of the [userCredentialUsageDetails](../resources/usercredentialusagedetails.md) resource.

| Properties | Description and example |
|:--------- |:----------- |
| feature | Filter by type of usage data that you want (registration vs reset). For example: `/reports/userCredentialUsageDetails?$filter=feature eq 'registration'`. Supported filter operators: `eq` |
| userDisplayName | Filter by user display name. For example: `/reports/userCredentialUsageDetails?$filter=userDisplayName eq 'Contoso'`. Supported filter operators: `eq` and `startswith()`. Supports case insensitive. |
| userPrincipalName  | Filter by user principal name. For example: `/reports/userCredentialUsageDetails?$filter=userPrincipalName eq 'Contoso'`.	Supported filter  operators: `eq` and `startswith()`. Supports case insensitive. |
| isSuccess | Filter by status of the activity. For example: `/reports/userCredentialUsageDetails?$filter=isSuccess eq true`. Supported filter operators: `eq` and `orderby`. |
| authMethod  | Filter by the authentication methods using during registration. For example: `/reports/userCredentialUsageDetails?$filter=authMethod eq microsoft.graph.usageAuthMethod'email'`. Supported filter operators: `eq`. |
| failureReason | Filter by failure reason (if the activity has failed). For example: `/reports/userCredentialUsageDetails?$filter=failureReason eq 'Contoso'`. Supported filter operators: `eq` and `startswith()`. Supports case insensitive. |


## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token} |
| Content-Type | application/json |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [userCredentialUsageDetails](../resources/usercredentialusagedetails.md) objects in the response body.

## Examples

The following example shows how to call this API.

### Request

The following is an example of the request.

# [HTTP](#tab/http)
=======
author: dkershaw
localization_priority: Normal
ms.prod: identity and access reports
ms.date: 04/25/2019
---

# List Credentials Usage Details 

Provides the details of self-service password reset usage for a given tenant. Details include User, status of the reset, reason for failure etc.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     |Reports.Read.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            |Reports.Read.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /reports/userCredentialUsageDetails
```
## Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

| Name      |Description|Example|Supported Operators|
|:----------|:----------|:-------|:-------------------|
|Period|Filter using time period for which you need the usage data|/reports/getCredentialUsageSummary(period='D30') /reports/getCredentialUsageSummary(period='d30')|D1, D7,D30. Period is case insensitive
|feature|Filter by type of usage data you want (registration vs. reset)|/reports/getCredentialUsageSummary(period='D30') ?$filter=feature eq Microsoft.AAD.Reporting.featureType'registration'|Eq|


## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {code} |

## Response
If successful, this method returns a `200 OK` response code and collection of [userCredentialUsageDetails](../resources/usercredentialusagedetails.md) objects in the response body.
## Example
##### Request
The following is an example of the request.
>>>>>>> master
<!-- {
  "blockType": "request",
  "name": "get_usercredentialusagedetails"
}-->
<<<<<<< HEAD

```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/userCredentialUsageDetails
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-usercredentialusagedetails-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-usercredentialusagedetails-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-usercredentialusagedetails-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties are returned from an actual call.

=======
```http
GET https://graph.microsoft.com/beta/reports/userCredentialUsageDetails
```
##### Response
The following is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
>>>>>>> master
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userCredentialUsageDetails",
  "isCollection": true
} -->
<<<<<<< HEAD

=======
>>>>>>> master
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 258

<<<<<<< HEAD
=======
Content-Type: application/json
>>>>>>> master
{
  "@odata.context":"https://graph.microsoft.com/beta/reports/$metadata#Collection(microsoft.graph.getUserCredentialUsageDetails)",
  "value":[
    {
<<<<<<< HEAD
      "id" : "id-value",
      "feature":"registration",
      "userPrincipalName":"userPrincipalName-value",
      "userDisplayName": "userDisplayName-value",
=======
      "id" : "d3590ed6-52b3-4102-aeff-aad2292ab01234",
      "feature":"registration",
      "userPrincipalName":"abc@cd.com",
      "userDisplayName": "abc",
>>>>>>> master
      "isSuccess" : true,
      "authMethod": "email",
      "failureReason": "User contacted an admin after trying the email verification option",
      "eventDateTime" : "2019-04-01T00:00:00Z"
<<<<<<< HEAD
    }
=======
    },
>>>>>>> master
  ]
}
```

<<<<<<< HEAD
<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
=======
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
>>>>>>> master
<!-- {
  "type": "#page.annotation",
  "description": "List userCredentialUsageDetails",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

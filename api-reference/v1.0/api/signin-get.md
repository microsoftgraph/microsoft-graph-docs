---
title: "Get signIn"
description: "Describes the get method of the signIn resource (entity) from the Microsoft Graph API."
localization_priority: Normal
author: "dhanyahk"
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Get signIn

Retrieve a specific Azure AD user sign-in event for your tenant. Sign-ins that are interactive in nature (where a username/password is passed as part of auth token) and successful federated sign-ins are currently included in the sign-in logs.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions_reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | AuditLog.Read.All and Directory.Read.All |
|Delegated (personal Microsoft account) | Not supported   |
|Application | AuditLog.Read.All and Directory.Read.All |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /auditLogs/signIns/{id}
```

## Optional query parameters

This method supports OData query parameters to help customize the response. For details about how to use these parameters, see [OData query parameters](/graph/query_parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [signIn](../resources/signin.md) object in the response body.

## Example

### Request

Here is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_signin"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/auditLogs/signIns/{id}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-signin-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-signin-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-signin-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-signin-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

Here is an example of the response.
>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.signIn"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 211
```

```json
{
	"@odata.context": "https://graph.microsoft.com/v1.0/$metadata#auditLogs/signIns",
	"id": "id",
	"appId": "d3590ed6-52b3-4102-aeff-aad2292ab01c",
	"appDisplayName": "Azure",
	"createdDateTime": "2018-01-09T21:17:21.5077253Z",
	"clientAppUsed": null,
	"conditionalAccessApplied": true,
	"conditionalAccessPolicies": [{
		"id": "26490ed6-52b3-4102-aeff-aad2292abacf",
		"displayName": "capPolicy",
		"enforcedAccessControls": ["MFA", "TOU"],
		"enforcedSessionControls": ["CloudAppSecurity"],
		"result": "success"
	}],
	"correlationId": "17444d3c-563d-4b08-ac20-815892b87e42",
	"deviceDetail": {
		"deviceId": "34390ed6-52b3-4102-aeff-aad2292abac3",
		"displayName": "DeviceName",
		"operatingSystem": "Windows 10",
		"browser": "Rich Client v3.14.1592.7",
		"isCompliant": true,
		"isManaged": true,
		"trustType": ""
	},
	"ipAddress": "127.0.0.1",
	"location": {
		"city": "Redmond",
		"state": "WA",
		"countryOrRegion": "USA",
		"geoCoordinates": {
			"altitude": 41.589,
			"latitude": 41.589,
			"longitude": -93.6151
		}
	},
	"status": {
		"errorCode": 0,
		"failureReason": null,
		"additionalDetails": "SignIn Success & CA Success"
	},
	"userDisplayName": "Jamie Doe",
	"userPrincipalName": "jdoe@wingtiptoys.com",
	"userId": "bbb3b4b5-e6e6-f7f5-f7f5-090805040302"
}

```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get signIn",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

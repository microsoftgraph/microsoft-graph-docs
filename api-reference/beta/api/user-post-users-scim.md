---
title: "Create user"
description: "Create a new user."
author: "ArvindHarinder1"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Create user

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create users in Azure AD using a SCIM compliant endpoint. 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users
```
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/scim+json  |

## Request body
The request body should include the SCIM specific user attribute. Use the table below to map SCIM attributes to the Azure AD schema.

SCIM User (I've included 2 but there are a lot more)

| SCIM Attribute| Azure AD attribute|
|:---------------|:--------|
| userName  | userPrincipalName  |
| name.givenName  | givenName  |

SCIM Enterprise User (I've included 2 but there are a lot more)

| SCIM Attribute| Azure AD attribute |
|:---------------|:--------|
| manager  | manager  |
| department  | department  |

All attributes not in the user or enterprise user will be part of a custom user schema. 

## Response

If successful, this method returns a `201 Created` response code and a [user](../resources/user.md) object in the response body.

## Example

### Example 1: Create a user

#### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- {	
  "blockType": "request",	
  "name": "create_user_from_users_2"	
}-->

```http
POST https://graph.microsoft.com/beta/users
Content-type: application/scim+json

{
	"schemas": [
	    "urn:ietf:params:scim:schemas:core:2.0:User",
	    "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User"],
	"externalId": "0a21f0f2-8d2a-4f8e-bf98-7363c4aed4ef",
	"userName": "Test_User_ab6490ee-1e48-479e-a20b-2d77186b5dd1",
	"active": true,
	"emails": [{
		"primary": true,
		"type": "work",
		"value": "Test_User_fd0ea19b-0777-472c-9f96-4f70d2226f2e@testuser.com"
	}],
	"meta": {
		"resourceType": "User"
	},
	"name": {
		"formatted": "givenName familyName",
		"familyName": "familyName",
		"givenName": "givenName"
	},
	"roles": []
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-user-from-users-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-user-from-users-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-user-from-users-2-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

In the request body, supply a JSON representation of [user](../resources/user.md) object.
##### Response
Here is an example of the response. 

>[!NOTE]
>The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/scim+json

{
	"schemas": ["urn:ietf:params:scim:schemas:core:2.0:User"],
	"id": "48af03ac28ad4fb88478",
	"externalId": "0a21f0f2-8d2a-4f8e-bf98-7363c4aed4ef",
	"meta": {
		"resourceType": "User",
		"created": "2018-03-27T19:59:26.000Z",
		"lastModified": "2018-03-27T19:59:26.000Z"
	},
	"userName": "Test_User_ab6490ee-1e48-479e-a20b-2d77186b5dd1",
	"name": {
		"formatted": "givenName familyName",
		"familyName": "familyName",
		"givenName": "givenName",
	},
	"active": true,
	"emails": [{
		"value": "Test_User_fd0ea19b-0777-472c-9f96-4f70d2226f2e@testuser.com",
		"type": "work",
		"primary": true
	}]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Create User",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

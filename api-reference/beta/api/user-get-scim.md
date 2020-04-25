---
title: "Get a user"
description: "Retrieve the properties and relationships of user object."
author: "ArvindHarinder1"
localization_priority: Priority
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Get a user

Namespace: microsoft.graph


## HTTP request
For a specific user:
<!-- { "blockType": "ignored" } -->
```http
GET /users/{id}
```

## Optional query parameters
Filtering by userName is supported. 

## Request headers
| Header       | Value|
|:-----------|:------|
| Authorization  | Bearer {token}. Required. |
| Content-Type   | application/scim+json |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [user](../resources/user.md) object in the response body.

## Examples

### Example 1: Standard users request

<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/v1.0/scim/users/{id}
```

##### Response

<!-- { "blockType": "ignored" } -->
```http
HTTP/1.1 200 OK
Content-type: application/scim+json
Content-length: 491

{
	"schemas": ["urn:ietf:params:scim:schemas:core:2.0:User"],
	"id": "5d48a0a8e9f04aa38008",
	"externalId": "58342554-38d6-4ec8-948c-50044d0a33fd",
	"meta": {
		"resourceType": "User",
		"created": "2018-03-27T19:59:26.000Z",
		"lastModified": "2018-03-27T19:59:26.000Z"
	},
	"userName": "Test_User_feed3ace-693c-4e5a-82e2-694be1b39934",
	"name": {
		"formatted": "givenName familyName",
		"familyName": "familyName",
		"givenName": "givenName",
	},
	"active": true,
	"emails": [{
		"value": "Test_User_22370c1a-9012-42b2-bf64-86099c2a1c22@testuser.com",
		"type": "work",
		"primary": true
	}]
}
```


### Example 2: Get user by query

Get a user by userName

##### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_user"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/scim/Users?filter=userName eq "Test_User_dfeef4c5-5681-4387-b016-bdf221e82081"
```
##### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 491

{
	"schemas": ["urn:ietf:params:scim:api:messages:2.0:ListResponse"],
	"totalResults": 1,
	"Resources": [{
		"schemas": ["urn:ietf:params:scim:schemas:core:2.0:User"],
		"id": "2441309d85324e7793ae",
		"externalId": "7fce0092-d52e-4f76-b727-3955bd72c939",
		"meta": {
			"resourceType": "User",
			"created": "2018-03-27T19:59:26.000Z",
			"lastModified": "2018-03-27T19:59:26.000Z"
			
		},
		"userName": "Test_User_dfeef4c5-5681-4387-b016-bdf221e82081",
		"name": {
			"familyName": "familyName",
			"givenName": "givenName"
		},
		"active": true,
		"emails": [{
			"value": "Test_User_91b67701-697b-46de-b864-bd0bbe4f99c1@testuser.com",
			"type": "work",
			"primary": true
		}]
	}],
	"startIndex": 1,
	"itemsPerPage": 20
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get user",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

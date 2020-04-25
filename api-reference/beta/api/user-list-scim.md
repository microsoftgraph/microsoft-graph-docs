---
title: "List users"
description: "Retrieve a list of user objects."
author: "ArvindHarinder1"
localization_priority: Priority
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# List users

Namespace: microsoft.graph

Retrieve a list of [user](../resources/user.md) objects.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /scim/users
```

## Request headers

| Header        | Value                      |
|:--------------|:---------------------------|
| Authorization | Bearer {token} (required)  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [user](../resources/user.md) objects in the response body. If a large user collection is returned, you can use [paging in your app](/graph/paging).

## Examples

### Example 1: Standard users request

By default, only only the id and userName are returned. 

##### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_users"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/scim/users
```

##### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/scim+json
Content-length: 608

  {
     "schemas":["urn:ietf:params:scim:api:messages:2.0:ListResponse"],
     "totalResults":2,
     "Resources":[
       {
         "id":"2819c223-7f76-453a-919d-413861904646",
         "userName":"bjensen"
       },
       {
         "id":"c75ad752-64ae-4823-840d-ffa80929976c",
         "userName":"jsmith"
       }
     ]
   }
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List users",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

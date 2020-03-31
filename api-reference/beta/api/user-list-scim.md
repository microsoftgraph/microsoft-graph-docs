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
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/scim+json  |

## Request body
Empty body. 

## Response

If successful, this method returns a `200 OK` response code and collection of [user](../resources/user.md) objects in the response body. If a large user collection is returned, you can use [paging in your app](/graph/paging).

## Example

### Example 1: List users

#### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- {	
  "blockType": "request",	
  "name": "create_user_from_users_2"	
}-->

```http
GET https://graph.microsoft.com/v1.0/scim/users
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


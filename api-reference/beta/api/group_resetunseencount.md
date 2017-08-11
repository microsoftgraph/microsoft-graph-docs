# group: resetUnseenCount

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Reset the unseenCount of all the posts that the current user has not seen since their last visit. Supported for 
only Office 365 groups.

## Prerequisites
One of the following **scopes** is required to execute this API: *Group.ReadWrite.All* 
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groups/{id}/resetUnseenCount
```
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns `200, OK` response code. It does not return anything in the response body.

## Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "group_resetunseencount"
}-->
```http
POST https://graph.microsoft.com/beta/groups/{id}/resetUnseenCount
```

##### Response
Here is an example of the response. 
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 200 OK
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "group: resetUnseenCount",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

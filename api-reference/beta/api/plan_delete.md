# Delete plan

>**Important:** This API is deprecated and will be removed on May 26th, 2017. We recommend that you use [Delete plannerPlan](plannerplan_delete.md) API.

Delete plan.
## Prerequisites
One of the following **scopes** is required to execute this API:
 
Group.ReadWrite.All

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /plans/{id}

```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| If-Match | string | Value should be set to the ETag of the object |

## Request body
Do not supply a request body for this method.


## Response
If successful, this method returns `204, No Content` response code. It does not return anything in the response body.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "delete_plan"
}-->
```http
DELETE https://graph.microsoft.com/beta/plans/{id}
If-Match: W/"JzEtMDAwMDAwMDAwMDAwMDAwOC8yMDE1LTEwLTIyVDE4OjExOjU2LjExMzU1NDYrMDA6MDAn"
```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Delete plan",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
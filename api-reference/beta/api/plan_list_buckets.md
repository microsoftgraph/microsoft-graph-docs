# List buckets

>**Important:** This API is deprecated and will be removed on May 26th, 2017. We recommend that you use [List plannerBuckets](plannerPlan_list buckets.md) API.

Retrieve a list of bucket objects.
## Prerequisites
One of the following **scopes** is required to execute this API:
 
Group.Read.All, Group.ReadWrite.All

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /plans/{id}/buckets
```
## Optional query parameters
None

## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Value should be set to "Bearer (access-token)" |

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and collection of [bucket](../resources/bucket.md) objects in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_buckets"
}-->
```http
GET https://graph.microsoft.com/beta/plans/{id}/buckets
```
##### Response
Here is an example of the response. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bucket",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 153

{
  "value": [
    {
      "name": "name-value",
      "planId": "planId-value",
      "orderHint": "orderHint-value",
      "id": "id-value"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List buckets",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
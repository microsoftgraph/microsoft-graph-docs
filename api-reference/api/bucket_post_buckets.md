# Create bucket

Use this API to create a new bucket.
### Prerequisites
The following **scopes** are required to execute this API: 

Group.ReadWrite.All AND Tasks.ReadWrite

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /buckets

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Value should be set to "Bearer (access-token)" |

### Request body
In the request body, supply a JSON representation of [bucket](../resources/bucket.md) object.


### Response
If successful, this method returns `201, Created` response code and [bucket](../resources/bucket.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_bucket_from_buckets"
}-->
```http
POST https://graph.microsoft.com/beta/buckets
Content-type: application/json
Content-length: 88

{
  "name": "name-value",
  "planId": "planId-value",
  "orderHint": "orderHint-value"
}
```
In the request body, supply a JSON representation of [bucket](../resources/bucket.md) object.
##### Response
Here is an example of the response. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bucket"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 108

{
  "name": "name-value",
  "planId": "planId-value",
  "orderHint": "orderHint-value",
  "id": "id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create bucket",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
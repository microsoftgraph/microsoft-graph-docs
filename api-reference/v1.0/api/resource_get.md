# Get resource

Retrieve the binary data of a file or image [resource](../resources/resource.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:  

Notes.Read, Notes.ReadWrite, Notes.Read.All, or Notes.ReadWrite.All

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/onenote/resources/{id}/content
GET /users/{id | userPrincipalName}/onenote/resources/{id}/content
GET /groups/{id}/onenote/resources/{id}/content
```

## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | `Bearer <token>` A valid OAuth token provided to the app based on the user credentials and the user having authorized access. |

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and the image or file binary data in the response body.

Note: Images won't render directly in a browser because they require authorization to retrieve them, like the rest of the page content.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_resource"
}-->
```http
GET https://graph.microsoft.com/v1.0/me/onenote/resources/{id}/content
```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
} -->
```http
HTTP/1.1 200 OK

...binary data...
```
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.onenoteResource"
} -->

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

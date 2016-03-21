# Get page

Retrieve the properties and relationships of a [page](../resources/page.md) object.

**Getting page content**

You can use the page's `content` endpoint to get the HTML content of a page:

```
GET /me/notes/pages/<id>/content[?includeIDs=true]
```

The `includeIDs=true` query option is used to [update pages](../api/page_update.md).

### Prerequisites
One of the following **scopes** is required to execute this API:  
Notes.Read, Notes.ReadWrite.CreatedByApp, Notes.ReadWrite, Notes.Read.All, or Notes.ReadWrite.All
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/notes/pages/<id>
GET /users/<id | userPrincipalName>/notes/pages/<id>
GET /groups/<id>/notes/pages/<id>
```
### Optional query parameters
This method supports the `select` and `expand` [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

The default response expands `parentSection` and selects the section's `id`, `name`, and `self` properties. Valid `expand` values for pages are `parentNotebook` and `parentSection`.

### Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | `Bearer <token>` A valid OAuth token provided to the app based on the user credentials and the user having authorized access. |
| Accept | string | `application/json` |

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and the [page](../resources/page.md) object in the response body.
### Example
##### Request
Here is an example of the request.
 <!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/beta/me/notes/pages/<id>
```
##### Response
Here is an example of the response. Note: The response object shown here is truncated for brevity. All of the properties will be returned from an actual call.
 <!-- { "blockType": "ignored" } -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 312

{
  "title": "title-value",
  "createdByAppId": "createdByAppId-value",
  "links": {
    "oneNoteClientUrl": {
      "href": "href-value"
    },
    "oneNoteWebUrl": {
      "href": "href-value"
    }
  },
  "contentUrl": "contentUrl-value",
  "content": "content-value",
  "lastModifiedTime": "datetime-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get page",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
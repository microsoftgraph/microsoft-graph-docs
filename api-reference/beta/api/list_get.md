# Get metadata for a list

Returns the metadata for a [list][].

[list]: ../resources/list.md

## Prerequisites

One of the following scopes are required to execute this request:

* Sites.Read.All
* Sites.ReadWrite.All
* Sites.Manage.All
* Sites.FullControl.All

### HTTP request

```http
GET https://graph.microsoft.com/beta/sharepoint/sites/{site-id}/lists/{list-id}
GET https://graph.microsoft.com/beta/sharepoint:/{list-path}
```

### Request body

Do not supply a request body with this method.

### Example

#### Request

<!-- { "blockType": "request", "name": "get-list" } -->

```http
GET /sharepoint/sites/{site-id}/lists/{list-id}
```

#### Response

<!-- { "blockType": "response", "@type": "microsoft.graph.list", "truncated": true, "scopes": "sites.read.all service.sharepoint" } -->

```json
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "1234-112-112-4",
  "name": "MicroFeed",
  "createdDateTime": "2016-08-30T08:32:00Z",
  "lastModifiedDateTime": "2016-08-30T08:32:00Z",
  "list": {
    "hidden": false,
    "baseTemplate": "generic"
    }
}
```

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Lists/Get metadata"
} -->

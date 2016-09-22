# Get a site resource

Returns metadata for a SharePoint [site][].

[site]: ../resources/site.md

## Prerequisites

One of the following scopes is required to execute this request:

* Sites.Read.All
* Sites.ReadWrite.All

## HTTP request

```http
GET https://graph.microsoft.com/beta/sharepoint/sites/{site-id}
GET https://graph.microsoft.com/beta/sharepoint:/{site-path}
GET https://graph.microsoft.com/beta/sharepoint/site
```

## Example

### Request

<!-- { "blockType": "request", "name": "get-site", "scopes": "sites.read.all service.sharepoint" } -->

```http
GET https://graph.microsoft.com/beta/sharepoint/sites/{site-id}
```

### Response

<!-- { "blockType": "response", "@type": "microsoft.graph.site", "truncated": true } -->

```json
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": "d297964f-d325-424b-a002-f54048a4622e",
    "name": "OneDrive / SharePoint Team",
    "description": "Collaboration site for the OneDrive and SharePoint team",
}
```

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Site/Get site by ID"
} -->

# Enumerate subsites

Get a collection of subsites defined for a [site][].

[site]: ../resources/site.md

## Prerequisites

One of the following scopes is required to execute this request:

* Sites.Read.All
* Sites.ReadWrite.All

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET https://graph.microsoft.com/beta/sharepoint/sites/{site-id}/sites
```

### Example

#### Request

<!-- { "blockType": "request", "name": "list-subsites" } -->

```http
GET https://graph.microsoft.com/beta/sharepoint/sites/{site-id}/sites
```

#### Response

<!-- { "blockType": "response", "@type": "microsoft.graph.site", "isCollection": true, "truncated": true } -->

```json
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "1919-1991-112-1",
      "name": "Team A Subsite"
    },
    {
      "id": "1919-1991-122-2",
      "name": "Team B Subsite"
    }
  ]
}
```

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Site/Enumerate subsites"
} -->

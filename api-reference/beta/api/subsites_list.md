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
GET https://graph.microsoft.com/beta/sites/{site-id}/sites
```

### Example

#### Request

<!-- { "blockType": "request", "name": "list-subsites" } -->

```http
GET https://graph.microsoft.com/beta/sites/{site-id}/sites
```

#### Response

<!-- { "blockType": "response", "@type": "microsoft.graph.site", "isCollection": true, "truncated": true } -->

```json
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740",
      "name": "Team A Subsite",
      "description": "",
      "createdDateTime": "2016-10-18T03:05:59Z",
      "lastModifiedDateTime": "2016-10-18T10:40:59Z",
      "webUrl": "https://contoso.sharepoint.com/sites/site/subsiteA",
      "siteCollectionId": "da60e844-ba1d-49bc-b4d4-d5e36bae9019",
      "siteId": "712a596e-90a1-49e3-9b48-bfa80bee8740"
    },
    {
      "id": "da60e844-ba1d-49bc-b4d4-d5e36bae9019,0271110f-634f-4300-a841-3a8a2e851851",
      "name": "Team B Subsite",
      "description": "",
      "createdDateTime": "2016-10-18T03:05:59Z",
      "lastModifiedDateTime": "2016-10-18T10:40:59Z",
      "webUrl": "https://contoso.sharepoint.com/sites/site/subsiteB",
      "siteCollectionId": "da60e844-ba1d-49bc-b4d4-d5e36bae9019",
      "siteId": "0271110f-634f-4300-a841-3a8a2e851851"
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

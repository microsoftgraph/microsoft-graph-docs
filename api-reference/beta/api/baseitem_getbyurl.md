# Get a SharePoint resource by URL

Returns metadata for a SharePoint site, site collection, or list from a SharePoint URL.

## Prerequisites

One of the following scopes is required to execute this request:

* Sites.Read.All
* Sites.ReadWrite.All

### HTTP request

```http
GET https://graph.microsoft.com/beta/sharepoint:/{item-path}
```

### Request parameters

In the request URL, provide the following parameters with values.

| Parameter     | Type   | Description
|:--------------|:-------|:----------------------------------------------------
| **item-path** | string | A relative path within the default site collection (eg. /teams/hr/Documents)

### Example

#### Request

<!-- { "blockType": "request", "name": "get-site-by-id", "scopes": "sites.read.all service.sharepoint" } -->

```http
GET https://graph.microsoft.com/beta/sharepoint:/{item-path}
```

##### Response

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.site", "truncated": true } -->

```json
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": "d297964f-d325-424b-a002-f54048a4622e",
    "name": "OneDrive / SharePoint Team",
    "description": "Collaboration site for the OneDrive and SharePoint team"
}
```

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Site/Get site by URL"
} -->

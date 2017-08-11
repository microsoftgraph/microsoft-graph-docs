# Get a site resource

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve properties and relationships for a [site][] resource.
A **site** resource represents a team site in SharePoint.

[site]: ../resources/site.md

A **site** is addressed be a unique identifier which is a composite ID of the following values:

* Site collection hostname (contoso.sharepoint.com)
* Site collection unique ID (guid)
* Site unique ID (guid)

There is also a reserved site identifier, `root`, which always references the root site for a given target, as follows:

* `/sites/root`: The tenant root site.
* `/groups/{group-id}/sites/root`: The group's team site.

## Prerequisites

One of the following scopes is required to execute this request:

* Sites.Read.All
* Sites.ReadWrite.All

## Get the tenant's root site

To access the root SharePoint site within a tenant:

```http
GET /sites/root
GET /sites/contoso.sharepoint.com
```

## Access a site by server-relative URL

If you have the server-relative URL for a **site** resource, you can construct a request as follows:

```http
GET /sites/{hostname}:/{server-relative-path}
```

## Access a group team site

To access the team site for a [group](../resources/group.md):

```http
GET /groups/{group-id}/sites/root
```

## Example

##### Request

<!-- { "blockType": "request", "name": "get-site", "scopes": "sites.read.all service.sharepoint" } -->

```http
GET https://graph.microsoft.com/beta/sites/{site-id}
```

##### Response

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

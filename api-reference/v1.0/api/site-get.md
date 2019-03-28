---
author: JeremyKelley
ms.author: JeremyKelley
ms.date: 09/10/2017
title: Get a SharePoint Site
localization_priority: Priority
ms.prod: "sharepoint"
---
# Get a site resource

Retrieve properties and relationships for a [site][] resource.
A **site** resource represents a team site in SharePoint.

[site]: ../resources/site.md

A **site** is addressed be a unique identifier which is a composite ID of the following values:

* Site collection hostname (contoso.sharepoint.com)
* Site collection unique ID (GUID)
* Site unique ID (GUID)

There is also a reserved site identifier, `root`, which always references the root site for a given target, as follows:

* `/sites/root`: The tenant root site.
* `/groups/{group-id}/sites/root`: The group's team site.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Sites.Read.All, Sites.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Sites.Read.All, Sites.ReadWrite.All |

## Get the tenant's root site

To access the root SharePoint site within a tenant:

<!-- { "blockType": "ignored" } -->

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

To access the team site for a group:

```http
GET /groups/{group-id}/sites/root
```

## Example

### Request

<!-- { "blockType": "request", "name": "get-site", "scopes": "sites.read.all" } -->

```http
GET /sites/{site-id}
```

### Response

<!-- { "blockType": "response", "@type": "microsoft.graph.site", "truncated": true } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "contoso.sharepoint.com,2C712604-1370-44E7-A1F5-426573FDA80A,2D2244C3-251A-49EA-93A8-39E1C3A060FE",
  "displayName": "OneDrive Team Site",
  "name": "1drvteam",
  "createdDateTime": "2017-05-09T20:56:00Z",
  "lastModifiedDateTime": "2017-05-09T20:56:01Z",
  "webUrl": "https://contoso.sharepoint.com/teams/1drvteam"
}
```
#### Sample Code
# [C#](#tab/CS)
[!INCLUDE [Sample Code]( ../includes/get-site-C#-snippets.md)]

# [Javascript](#tab/Javascript)
[!INCLUDE [Sample Code]( ../includes/get-site-Javascript-snippets.md)]

---


<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Sites/Get by ID"
} -->

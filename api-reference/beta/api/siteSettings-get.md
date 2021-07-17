---
author: k-tsoi
description: "Returns the metadata for a sitePage in the site pages list in a site"
ms.date: 12/22/2020
title: Get a Site's Settings
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: apiPageType
---
# Get the settings of a site

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the settings of the [site]. This resource is currently only available on SharePoint and OneDrive for Business.

[site]: ../resources/site.md

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged) |
|:--------------------------------------|:--------------------------------------------|
|Delegated (work or school account)     | Sites.Read.All, Sites.ReadWrite.All         |
|Delegated (personal Microsoft account) | Not supported.                              |
|Application                            | Sites.Read.All, Sites.ReadWrite.All         |

## Example

### Request

<!-- { "blockType": "request", "name": "get-siteSettings" } -->
GET /sites/{site-id}/settings

### Response

<!-- { "blockType": "response", "@type": "microsoft.graph.siteSettings", "truncated": true } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "languageTag": "en-US",
  "timeZone": "(UTC-08:00) Pacific Time (US and Canada)"
}
```

<!-- {
  "type": "#page.annotation",
  "section": "documentation",
  "tocPath": "Sites/Get site settings"
} -->
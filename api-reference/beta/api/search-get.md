---
title: "Search"
description: "Retrieve the search resource used to execute queries"
localization_priority: Normal
author: "nmoreau"
ms.prod: "search"
doc_type: "apiPageType"
---

# Search

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The search resource is the top level object representing the search endpoint. It does not behave as any other resource in Graph, but serves as an anchor to Search actions (Query). It has no resource representation in graph.

[!INCLUDE [search-api-preview](../../includes/search-api-preview-signup.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Mail.Read, Files.Read.All, Calendars.Read, ExternalItem.Read.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /search
```

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token} |

## Request body

Do not supply a request body for this method.

## Response

This resource is not expected to be called as such. Any request on the resource will incur a Bad Request.

## Next steps

- Explore the [/query](search-query.md) action on Search.


<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get search",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

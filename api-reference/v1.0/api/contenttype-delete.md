---
author: swapnil1993
title: "Delete contentType"
description: "Delete a content type from a sharepoint list or a site."
localization_priority: Normal
doc_type: apiPageType
ms.prod: "sites-and-lists"
---

# Delete contentType
Namespace: microsoft.graph



Remove a [content type][contentType] from a [list][] or a [site][].


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Sites.Manage.All, Sites.FullControl.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Sites.Manage.All, Sites.FullControl.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /sites/{site-id}/contentTypes/{contentType-id}
DELETE /sites/{site-id}/lists/{list-id}/contentTypes/{contentType-id}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|


## Request body

Do not supply a request body with this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Example

### Request

<!-- {
  "blockType": "request",
  "name": "delete_contenttype"
}
-->

```http
DELETE https://graph.microsoft.com/v1.0/sites/{site-id}/contentTypes/{contentType-id}
```

### Response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->

```http
HTTP/1.1 204 No Content
```

[list]: ../resources/list.md
[contentType]: ../resources/contentType.md
[site]: ../resources/site.md

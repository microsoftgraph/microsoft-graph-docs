---
author: swapnil1993
title: "Get columnDefinition"
description: " Get a site, list or content type column."
localization_priority: Normal
doc_type: apiPageType
ms.prod: "sites-and-lists"
---

# Get columnDefinition
Namespace: microsoft.graph


Retrieve the metadata for a [site][], [list][] or [contentType][] [column][columnDefinition].

  

## Permissions

  

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions_reference.md).

  

|Permission type | Permissions (from least to most privileged) |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Sites.Read.All, Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All  |
|Delegated (personal Microsoft account) | Not supported. |
|Application | Sites.Read.All, Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All  |

  

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /sites/{site-id}/columns/{column-id}
GET /sites/{site-id}/lists/{list-id}/columns/{column-id}
GET /sites/{site-id}/contentTypes/{contentType-id}/columns/{column-id}
GET /sites/{site-id}/lists/{list-id}/contentTypes/{contentType-id}/columns/{column-id}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|  

## Request body

  

Do not supply a request body with this method.

  

## Example

  

### Request

<!-- { "blockType": "request", "name": "get_column_from_contenttype" } -->

  

``http
GET /sites/{site-id}/contentTypes/{contentType-id}/columns/{column-id}
```

#### Response

  

<!-- { "blockType": "response", "@type": "microsoft.graph.columnDefinition", "truncated": true } -->

  

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "description": "",
  "displayName": "Title",
  "hidden": false,
  "id": "99ddcf45-e2f7-4f17-82b0-6fba34445103",
  "indexed": false,
  "name": "Title",
  "readOnly": false,
  "required": false,
  "text": {
    "allowMultipleLines": false,
    "appendChangesToExistingText": false,
    "linesForEditing": 0,
    "maxLength": 255
  }
}
```

  

[columnDefinition]: ../resources/columnDefinition.md

[list]: ../resources/list.md

[site]: ../resources/site.md

[contentType]: ../resources/contentType.md
  

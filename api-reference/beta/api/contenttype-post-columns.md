---
author: swapnil1993
ms.date: 08/30/2020
title: "Create columnDefinition in a content type"
description: "Add column to a content type."
localization_priority: Normal
doc_type: apiPageType
ms.prod: "sites-and-lists"
---

# Create columnDefinition for a content type
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Add a column to a [content type][contentType] in a site or list by specifying a [columnDefinition][columnDefinition].

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/concepts/permissions_reference.md).

  

|Permission type | Permissions (from least to most privileged) |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Sites.Manage.All, Sites.FullControl.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application | Sites.Manage.All, Sites.FullControl.All |

  

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /sites/{site-id}/contentTypes/{contentType-id}/columns
POST /sites/{site-id}/lists/{list-id}/contentTypes/{contentType-id}/columns
```

## Request body

In the request body, supply a JSON representation of the [columnDefinition][] resource to add.  

## Response

If successful, this method returns a `200 OK` response code and [columnDefinition][] object in the response body.

## Example

### Request
<!-- { "blockType": "request" } -->
```http
POST https://graph.microsoft.com/beta/sites/{site-id}/contentTypes/{contentType-id}/columns
Content-Type: application/json

{
	"sourceColumn@odata.bind": "https://graph.microsoft.com/beta/sites/root/columns/99ddcf45-e2f7-4f17-82b0-6fba34445103",
}
```

### Response

The response returns the column added to a content type.

<!-- { "blockType": "response", "@type": "microsoft.graph.columnDefinition", "truncated": true} -->

  

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "description": "",
  "displayName": "Title",
  "enforceUniqueValues": false,
  "hidden": false,
  "id": "99ddcf45-e2f7-4f17-82b0-6fba34445103",
  "indexed": false,
  "name": "Title",
  "text": {
    "allowMultipleLines": false,
    "appendChangesToExistingText": false,
    "linesForEditing": 0,
    "maxLength": 255
  }
}

```

  

[columnDefinition]: ../resources/columnDefinition.md
[contentType]: ../resources/contentType.md
  


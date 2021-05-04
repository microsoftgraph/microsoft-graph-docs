---
author: swapnil1993
ms.date: 08/30/2020
title: "Create columnDefinition in a list"
description: "Create a list column."
localization_priority: Normal
doc_type: apiPageType
ms.prod: "sites-and-lists"
---

# Create columnDefinition for a list
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Create a column for a [list][list] by specifying a [columnDefinition][columnDefinition].

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
POST /sites/{site-id}/lists/{list-id}/columns
```

## Request body

In the request body, supply a JSON representation of the [columnDefinition][] resource to add.  

## Response

If successful, this method returns a `201 Created` response code and [columnDefinition][] object in the response body.

## Example

### Request
<!-- { "blockType": "request" } -->
```http
POST https://graph.microsoft.com/beta/sites/{site-id}/lists/{list-id}/columns
Content-Type: application/json

{
  "description": "test",
  "enforceUniqueValues": false,
  "hidden": false,
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

### Response

<!-- { "blockType": "response", "@type": "microsoft.graph.columnDefinition", "truncated": true } -->

  

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "description": "test",
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
[list]: ../resources/list.md
  


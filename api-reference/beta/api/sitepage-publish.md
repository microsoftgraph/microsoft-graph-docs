---
author: rahmit
description: "Publish the latest version of a sitePage resource, which makes the version of the page available to all users. If the page is checked out, check in the page and publish it. If the page is checked out to the caller of this API, the page is automatically checked in and then published."
ms.date: 09/10/2018
title: Publish Page
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: apiPageType
---
# sitePage: publish

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Publish the latest version of a [sitePage][] resource, which makes the version of the page available to all users. If the page is checked out, check in the page and publish it. If the page is checked out to the caller of this API, the page is automatically checked in and then published.

[sitePage]: ../resources/sitepage.md

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Files.ReadWrite, Files.ReadWrite.All, Sites.ReadWrite.All    |
|Delegated (personal Microsoft account) | Files.ReadWrite, Files.ReadWrite.All    |
|Application | Files.ReadWrite.All, Sites.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /sites/{siteId}/pages/{pageId}/publish
```

## Request body

This message does not have a request body. Any request body sent will be ignored.

## Response

If successful, the API call returns a `204 No Content`.

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```


<!--
{
  "type": "#page.annotation",
  "description": "Publish a page.",
  "keywords": "publish page",
  "section": "documentation",
  "tocPath": "Pages/Publish",
  "suppressions": []
}
-->



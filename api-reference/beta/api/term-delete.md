---
author: mpathak123
ms.author: mopathak
ms.date: 18/06/2020
title: Delete a Taxonomy term in termStore
doc_type: "apiPageType"
description: "Delete a given term in the termStore"
localization_priority: Normal
ms.prod: "sharepoint-taxonomy"
---
# Delete microsoft.graph.termStore.term

Delete a [microsoft.graph.termStore.term][] within a termSet.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated            | TermStore.ReadWrite.All |


## HTTP request

```http
DELETE /termStore/sets/{set-id}/terms/{term-id}
```
## Response

If successful, this method returns `204 No Content` response.

## Example

### Request

Here is an example of the request to get a term within a termSet

```http
DELETE /termStore/sets/{set-id}/terms/{term-id}
```

## Response

If successful, this call returns a `204 No Content` response to indicate that resource was deleted and there was nothing to return.

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```


[microsoft.graph.termStore.term]: ../resources/term.md

<!--
{
  "type": "#page.annotation",
  "description": "Delete a term entity in termStore",
  "keywords": "term,termStore",
  "section": "documentation",
  "tocPath": "termStore/Delete term",
  "suppressions": [
  ]
}
-->

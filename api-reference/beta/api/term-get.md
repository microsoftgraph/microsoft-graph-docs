---
author: mpathak123
ms.author: mopathak
ms.date: 18/06/2020
title: Get a Taxonomy term in termStore
doc_type: "apiPageType"
description: "Retrieves a given term in the termStore"
localization_priority: Normal
---
# Get microsoft.graph.termStore.term

Return a [microsoft.graph.termStore.term][] within a termSet.

## Permissions

One of the following permissions is required to call this API. 

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated | TermStore.Read.All, TermStore.ReadWrite.All |


## HTTP request

```http
GET /termStore/sets/{set-id}/terms/{term-id}
GET /termStore/groups/{group-id}/sets/{set-id}/terms/{term-id}
```
## Response

If successful, this method returns the [microsoft.graph.termStore.term] resource in the response body.

## Example

### Request

Here is an example of the request to get a term within a termSet

```http
GET /termStore/sets/{set-id}/terms/{term-id}
```

### Response

Here is an example of the response.

```json
HTTP/1.1 200 OK
Content-type: application/json

{
  "createdDateTime": "2019-06-21T20:01:37Z",
  "id": "1FFD3F87-9464-488A-A0EC-8FB90911182C",
  "labels" : [
      {
          "name" : "Copy of myTerm",
          "languageTag" : "en-US",
          "isDefault" : true
      }
  ],
  "lastModifiedDateTime": "2019-06-21T20:01:37Z"
}
```

[microsoft.graph.termStore.term]: ../resources/term.md

<!--
{
  "type": "#page.annotation",
  "description": "Get term entity in termStore",
  "keywords": "term,termStore",
  "section": "documentation",
  "tocPath": "termStore/Get term",
  "suppressions": [
  ]
}
-->

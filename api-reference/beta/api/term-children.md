---
author: mpathak123
ms.author: mopathak
ms.date: 18/06/2020
title: Get children of a term
doc_type: "apiPageType"
description: "Get children of a given term in the termStore"
localization_priority: Normal
ms.prod: "sharepoint-taxonomy"
---
# Get children of microsoft.graph.termStore.term

Return all children of a [microsoft.graph.termStore.term][].

## Permissions

One of the following permissions is required to call this API. 

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated | TermStore.Read.All, TermStore.ReadWrite.All |


## HTTP request

```http
GET /termStore/sets/{set-id}/terms/{term-id}/children
GET /termStore/groups/{group-id}/sets/{set-id}/terms/{term-id}/children
```

## Response

If successful, this method returns the [microsoft.graph.termStore.term] collection in the response body, which are the set of children of that term.


## Example

### Request

Here is an example of the request to get a term within a [microsoft.graph.termStore.set]

```http
GET /termStore/sets/{set-id}/terms/{term-id}/children
```

### Response

Here is an example of the response.

```json
HTTP/1.1 200 OK
Content-type: application/json
[
{
  "createdDateTime": "2019-06-21T20:01:37Z",
  "id": "1FFD3F87-9464-488A-A0EC-8FB90911182C",
  "labels" : [
      {
          "name" : "Car",
          "languageTag" : "en-US",
          "isDefault" : true
      }
  ],
  "lastModifiedDateTime": "2019-06-21T20:01:37Z"
},
{
  "createdDateTime": "2019-09-21T20:41:37Z",
  "id": "3CEB0050-69A1-40E7-A427-83E2FAC80C27",
  "labels" : [
      {
          "name" : "bike",
          "languageTag" : "en-US",
          "isDefault" : true
      }
  ],
  "lastModifiedDateTime": "2019-11-21T23:41:37Z"
}
]
```

[microsoft.graph.termStore.term]: ../resources/term.md
[microsoft.graph.termStore.set]: ../resources/termSet.md

<!--
{
  "type": "#page.annotation",
  "description": "Get term entity in termStore",
  "keywords": "term,termStore",
  "section": "documentation",
  "tocPath": "termStore/Get term children",
  "suppressions": [
  ]
}

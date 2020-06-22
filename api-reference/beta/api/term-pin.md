---
author: mpathak123
ms.author: mopathak
ms.date: 18/06/2020
title: Pin a term under another term
doc_type: "apiPageType"
description: "Pin a given term in the termStore"
localization_priority: Normal
ms.prod: "sharepoint-taxonomy"
---
# Pin a microsoft.graph.termStore.term  under another microsoft.graph.termStore.term

Pin a [microsoft.graph.termStore.term] under another term by creating a new [microsoft.graph.termStore.relation] between the terms. For more details please look at [microsoft.graph.termStore.relation]

## Permissions

One of the following permissions is required to call this API. 

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated            | TermStore.ReadWrite.All |

## HTTP request

```http
POST /termStore/sets/{set-id}/terms/{term-id}/relations
```
## Request Body
In the request body, supply a JSON representation of the [microsoft.graph.termStore.relation][] resource to create. Details of the term under which the current term needs to be pinned should be provided.

## Example
Here is an example of how to create a new pinned relation between terms.

```http
POST /termStore/sets/{set-id}/terms/{term-id}/relations

Content-Type: application/json

{
    "type" : "pin",
    "fromTerm"  : {
        "id": "b49f64b3-4722-4336-9a5c-56c326b344d4",
    },
    "set" : {
        "95e553ae-a91a-4670-a139-67a6cea285b3"
    }
}
```

## Response
If successful, this method returns a [microsoft.graph.termStore.relation][] in the response body for the created term.


```json
HTTP/1.1 201 Created
Content-type: application/json

{
  "id": "1FFD3F87-9464-488A-A0EC-8FB90911182C",
  "type" : "pin",
  "fromTerm" : {
      "id" : "b49f64b3-4722-4336-9a5c-56c326b344d4"
  },
  "toTerm" : {
      "id" : "226e8ee3-f4b6-49d7-92d5-ec9d5475eec5"
  },
  "set" : {
      "id" : "95e553ae-a91a-4670-a139-67a6cea285b3"
  }
}
```
**Note:** Response objects are truncated for clarity.
All default properties will be returned from the actual call.

[microsoft.graph.termStore.set]: ../resources/termSet.md
[microsoft.graph.termStore.term]: ../resources/term.md
[microsoft.graph.termStore.relation]: ../resources/termRelation.md


<!--
{
  "type": "#page.annotation",
  "description": "Create a pinned term entity in termStore",
  "keywords": "term,termStore",
  "section": "documentation",
  "tocPath": "termStore/Pinned term",
  "suppressions": [
  ]
}
-->

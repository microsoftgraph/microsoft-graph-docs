---
author: mpathak123
ms.author: mopathak
ms.date: 06/18/2020
title: Get a termGroup
doc_type: "apiPageType"
description: "Get a termGroup in the termStore"
localization_priority: Normal
ms.prod: "sharepoint-taxonomy"
---
# Get a microsoft.graph.termStore.group

Get a [microsoft.graph.termStore.group] under [microsoft.graph.termStore.store][].

## Permissions

One of the following permissions is required to call this API. 

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated | TermStore.Read.All, TermStore.ReadWrite.All |


## HTTP request

```http
GET /termStore/groups/{group-id}
```

## Response

If successful, this method returns the [microsoft.graph.termStore.group] resource in the response body.

## Example
Here is an example of the request to get a [microsoft.graph.termStore.group] within a [microsoft.graph.termStore.store].

```http
GET /termStore/groups/{group-id}
```

### Response

Here is an example of the response.

```json
HTTP/1.1 201 Updated
Content-type: application/json

{
  "createdDateTime": "2019-06-21T20:01:37Z",
  "description": "My term group",
  "type" : "global",
  "id": "1FFD3F87-9464-488A-A0EC-8FB90911182C",
  "name": "myGroup"  
}
```


[microsoft.graph.termStore.store]: ../resources/termStore.md
[microsoft.graph.termStore.group]: ../resources/termGroup.md

<!--
{
  "type": "#page.annotation",
  "description": "Get termGroup entity in termStore",
  "keywords": "term,termStore",
  "section": "documentation",
  "tocPath": "termStore/Get termGroup",
  "suppressions": [
  ]
}
-->

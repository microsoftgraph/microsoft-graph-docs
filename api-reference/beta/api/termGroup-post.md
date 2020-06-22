---
author: mpathak123
ms.author: mopathak
ms.date: 05/17/2019
title: Create a termGroup
doc_type: "apiPageType"
description: "Create a termGroup in the termStore"
localization_priority: Normal
ms.prod: "sharepoint-taxonomy"
---
# Create a microsoft.graph.termStore.group

Create a new [microsoft.graph.termStore.group] under a [microsoft.graph.termStore.store][].



## Permissions

One of the following permissions is required to call this API. 

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated |  TermStore.ReadWrite.All |


## HTTP request

```http
POST /termStore/groups/
```

## Request Body
In the request body, supply a JSON representation of the [microsoft.graph.termStore.group][] resource to create.

## Example
Here is an example of how to create a new [microsoft.graph.termStore.group].

```json
POST /termStore/groups/
Content-Type: application/json

{
    "name" : "myGroup",
    "description" : "My term group"
}
```

### Response
If successful, this method returns a [microsoft.graph.termStore.group][] in the response body for the created group item.


```json
HTTP/1.1 201 Created
Content-type: application/json

{
  "createdDateTime": "2019-06-21T20:01:37Z",
  "description": "My term group",
  "type" : "global",
  "id": "1FFD3F87-9464-488A-A0EC-8FB90911182C",
  "name": "myGroup"  
}
```
**Note:** Response objects are truncated for clarity.
All default properties will be returned from the actual call.

[microsoft.graph.termStore.term]: ../resources/term.md
[microsoft.graph.termStore.group]: ../resources/termGroup.md
[microsoft.graph.termStore.store]: ../resources/termStore.md

<!--
{
  "type": "#page.annotation",
  "description": "Create a termGroup entity in termStore",
  "keywords": "term,termStore",
  "section": "documentation",
  "tocPath": "termStore/Create termGroup",
  "suppressions": [
  ]
}
-->

---
author: mpathak123
ms.author: mopathak
ms.date: 18/06/2020
title: Create a Taxonomy termSet in termStore
doc_type: "apiPageType"
description: "Create a termSet in the termStore"
localization_priority: Normal
ms.prod: "sharepoint-taxonomy"
---
# Create a new microsoft.graph.termStore.set

Create a new [microsoft.graph.termStore.set] under a [microsoft.graph.termStore.group][].

## Permissions

One of the following permissions is required to call this API. 

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated |TermStore.ReadWrite.All |


## HTTP request

```http
POST /termStore/groups/id/sets
```
## Request Body
In the request body, supply a JSON representation of the [microsoft.graph.termStore.set][] resource to create.

## Example
Here is an example of how to create a new [microsoft.graph.termStore.set].

```http
POST /termStore/groups/{group-id}/sets
Content-Type: application/json

{    
  "localizedNames" : [
      {
        "languageTag" : "en-US"
        "name" : "Department"
      }
  ]
}
```

## Response
If successful, this method returns a [microsoft.graph.termStore.set][] in the response body for the created set.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.term", "truncated": true } -->

```json
HTTP/1.1 201 Created
Content-type: application/json

{  
  "id" : "fc733b51-10f1-40fd-b784-dc6d1e42804b",
  "localizedNames" : [
      {
        "languageTag" : "en-US",
        "name" : "Department"
      }
  ]
}
```
**Note:** Response objects are truncated for clarity.
All default properties will be returned from the actual call.

[microsoft.graph.termStore.set]: ../resources/termSet.md
[microsoft.graph.termStore.group]: ../resources/termGroup.md
[microsoft.graph.termStore.term]: ../resources/term.md

<!--
{
  "type": "#page.annotation",
  "description": "Create a termSet entity in termStore",
  "keywords": "term,termStore",
  "section": "documentation",
  "tocPath": "termStore/Create termSet",
  "suppressions": [
  ]
}
-->


---
author: mpathak123
ms.author: mopathak
ms.date: 18/06/20200
title: Create a Taxonomy term in termStore
---
# Create a new microsoft.graph.termStore.term

Create a new [microsoft.graph.termStore.term] under a [microsoft.graph.termStore.set][].

## Permissions

One of the following permissions is required to call this API.

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated            | TermStore.ReadWrite.All |


## HTTP request

```http
POST /termStore/sets/{set-id}/terms/{term-id}/children
```
## Request Body
In the request body, supply a JSON representation of the [microsoft.graph.termStore.term][] resource to create.

## Example
Here is an example of how to create a new term.

```http
POST /termStore/sets/{set-id}/terms/{term-id}/children/
Content-Type: application/json

{
    "labels" :  
    [
      {
        "languageTag" : "en-US",
        "name" : "Car",
        "isDefault" : true
      }
    ]
}
```

## Response
If successful, this method returns a [microsoft.graph.termStore.term][] in the response body for the created term.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.term", "truncated": true } -->

```json
HTTP/1.1 201 Created
Content-type: application/json

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
}
```
**Note:** Response objects are truncated for clarity.
All default properties will be returned from the actual call.

[microsoft.graph.termStore.set]: ../resources/termSet.md
[microsoft.graph.termStore.term]: ../resources/term.md

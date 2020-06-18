---
author: Mohit Pathak
ms.author: Mohit Pathak
ms.date: 05/17/2019
title: Get a termStore
---
# Get a microsoft.graph.termStore.store

Get a [microsoft.graph.termStore.store] for taxonomy.

## Permissions

One of the following permissions is required to call this API. 

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated | TermStore.Read.All, TermStore.ReadWrite.All |


## HTTP request

```http
GET /termStore/
```

## Response

If successful, this method returns the [microsoft.graph.termStore.store] resource in the response body.

## Example
Here is an example of the request to get a a [microsoft.graph.termStore.store].

```http
GET /termStore/
```

### Response

Here is an example of the response.

```json
HTTP/1.1 200 OK
{
  "id" : "root",
  "name" : "taxonomy",
  "defaultLanguageTag" : "en-US",
  "languageTags" : ["en-US", "de-DE", "fr-FR"]
}
```


[microsoft.graph.termStore.store]: ../resources/termStore.md
[microsoft.graph.termStore.group]: ../resources/termGroup.md

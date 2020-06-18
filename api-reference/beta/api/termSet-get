---
author: mpathak123
ms.author: mopathak
ms.date: 06/18/2020
title: Get a termSet
---
# Get a microsoft.graph.termStore.set

Get a  [microsoft.graph.termStore.set] in a [microsoft.graph.termStore.store].

## Permissions

One of the following permissions is required to call this API. 

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Application | TermStore.Read.All, TermStore.ReadWrite.All |


## HTTP request

```http
GET /termStore/sets/{set-id}
```

## Optional request headers
| Name          | Type   | Description                                                             |
|:--------------|:-------|:---------------|
| Accept-Language | String | If this header is included and the language-tag matches one of the default language tags of the termStore then properties like `localizedNames` will be returned only in language-tag of the header.

## Response

If successful, this method returns the [microsoft.graph.termStore.set] resource in the response body.

## Example
Here is an example to get a [microsoft.graph.termStore.set] in a [microsoft.graph.termStore.store].

```http
GET /termStore/sets/{set-id}
Content-Type: application/json
```

### Response
Here is an example of the response.

```json
HTTP/1.1 201 Updated
Content-type: application/json

{
    "createdDateTime": "2019-06-21T20:01:37Z",  
    "description": "Starting term Set",
    "id": "8ed8c9ea-7052-4c1d-a4d7-b9c10bffea6f",
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

[microsoft.graph.termStore.group]: ../resources/termGroup.md
[microsoft.graph.termStore.set]: ../resources/termSet.md
[microsoft.graph.termStore.store]: ../resources/termStore.md



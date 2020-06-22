---
author: mpathak123
ms.author: mopathak
ms.date: 06/18/2020
title: Delete a termGroup
doc_type: "apiPageType"
description: "Delete a termGroup in the termStore"
localization_priority: Normal
ms.prod: "sharepoint-taxonomy"
---
# Delete a microsoft.graph.term.group

Delete a [microsoft.graph.termStore.group] under  [microsoft.graph.termStore.store][]. The group should be empty having no [microsoft.graph.termStore.set] under it.


## Permissions

One of the following permissions is required to call this API. 

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated | TermStore.ReadWrite.All |


## HTTP request

```http
DELETE /termStore/groups/{group-id}
```

## Example
Here is an example of how to delete a [microsoft.graph.termStore.group].


```http
DELETE termStore/groups/{group-id}
Content-Type: application/json
```

### Response

If successful, this call returns a `204 No Content` response to indicate that resource was deleted and there was nothing to return.

```http
HTTP/1.1 204 No Content
```

[microsoft.graph.termStore.group]: ../resources/termGroup.md
[microsoft.graph.termStore.store]: ../resources/termStore.md
[microsoft.graph.termStore.set]: ../resources/termSet.md

<!--
{
  "type": "#page.annotation",
  "description": "Delete a termGroup entity in termStore",
  "keywords": "term,termStore",
  "section": "documentation",
  "tocPath": "termStore/Delete termGroup",
  "suppressions": [
  ]
}
-->

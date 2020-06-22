---
author: mpathak123
ms.author: mopathak
ms.date: 06/18/2020
title: Delete a termSet
doc_type: "apiPageType"
description: "Delete a termSet in the termStore"
localization_priority: Normal
ms.prod: "sharepoint-taxonomy"
---
# Delete a microsoft.graph.termStore.set

Delete a [microsoft.graph.termStore.set]. All terms whose source is this given set and are being reused or pinned elsewhere will be placed in the orphaned set. 


## Permissions

One of the following permissions is required to call this API. 

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated | TermStore.ReadWrite.All |


## HTTP request

```http
DELETE /termStore/groups/{group-id}/sets/{set-id}/
```

## Example
Here is an example of how to delete a [microsoft.graph.termStore.set].


```http
DELETE /termStore/groups/{group-id}/sets/{set-id}
Content-Type: application/json
{    
}
```

### Response

If successful, this call returns a `204 No Content` response to indicate that resource was deleted and there was nothing to return.

```http
HTTP/1.1 204 No Content
```


[microsoft.graph.termStore.group]: ../resources/termGroup.md
[microsoft.graph.termStore.set]: ../resources/termSet.md

<!--
{
  "type": "#page.annotation",
  "description": "Delete a termSet entity in termStore",
  "keywords": "term,termStore",
  "section": "documentation",
  "tocPath": "termStore/Delete termSet",
  "suppressions": [
  ]
}
-->

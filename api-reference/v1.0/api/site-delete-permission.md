---
title: "Delete permission"
description: "Delete a permission object on a site."
author: "BarrySh"
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: apiPageType
---

# Delete permission
Namespace: microsoft.graph

Delete a [permission](../resources/permission.md) object on a site.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)
|:--------------------------------------|:-------------------------------------
|Delegated (work or school account)     | Not supported.
|Delegated (personal Microsoft account) | Not supported.
|Application                            | Sites.FullControl.All

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /sites/{sitesId}/permissions/{permissionId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns `204 No Content` response code. It does not return anything in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "delete_permission"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/sites/{sitesId}/permissions/{permissionId}
```


### Response
Here is an example of the response. 
<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

<!-- {
  "type": "#page.annotation",
  "section": "documentation",
  "tocPath": "Sites/Permissions/Delete site permission"
} -->

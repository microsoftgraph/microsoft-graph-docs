---
title: "Delete qna"
description: "Deletes a qna object."
author: "jakeost-msft"
localization_priority: Normal
ms.prod: "search"
doc_type: apiPageType
---

# Delete qna
Namespace: microsoft.graph.search

Deletes a [qna](../resources/qna.md) object.

## Permissions
One of the following permissions is required to call this api. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)| Global administrator, search administrator, search editor. |
|Delegated (personal Microsoft account)| Not supported. |
|Application| Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /qnas/{qnaId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "delete_qna"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/qnas/{qnaId}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```


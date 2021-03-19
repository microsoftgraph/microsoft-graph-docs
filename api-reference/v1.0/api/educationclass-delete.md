---
title: "Delete educationClass"
description: "Delete a class. Because a class is also a universal group, deleting a class deletes the group."
author: "mmast-msft"
ms.author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: apiPageType
---

# Delete a Class

Namespace: microsoft.graph

Deletes an [educationClass](../resources/educationclass.md) object.

> [!IMPORTANT]
> Because a class is also a universal group, deleting a class deletes the group.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | EduRoster.ReadWrite.All                     |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
DELETE /education/classes/{educationClassId}
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "delete_educationclass"
}
-->

```http
DELETE https://graph.microsoft.com/v1.0/education/classes/{educationClassId}
```

### Response

**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

```http
HTTP/1.1 204 No Content
```

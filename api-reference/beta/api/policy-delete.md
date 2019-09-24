---
title: "Delete Policy"
description: "Delete a policy."
localization_priority: Normal
doc_type: apiPageType
ms.prod: ""
author: ""
---

# Delete Policy

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [policy](../resources/policy.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

## HTTP request

```http
DELETE /policies/{id}
```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns `204 No Content` response code. If unsuccessful...

## Example
The following example deletes a policy.

##### Request
Here is an example of the request.

```http
DELETE https://graph.microsoft.com/beta/policies/{id}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 204 No Content
```

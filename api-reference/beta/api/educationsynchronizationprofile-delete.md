---
title: "Delete a educationSynchronizationProfile"
description: "Delete a school data synchronization profile in the tenant based on the identifier."
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
---

# Delete a educationSynchronizationProfile

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Delete a school data [synchronization profile](../resources/educationsynchronizationprofile.md) in the tenant based on the identifier.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions |
|:-----------|:----------|
| Delegated (work or school account) | EduAdministration.ReadWrite |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /synchronizationProfiles/{id}
```

## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required.  |
|Delegated (personal Microsoft account|Not supported.|
|Application|Not supported.|

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `202 Accepted` response code and no response body.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_synchronizationProfile"
}-->
```http
DELETE https://graph.microsoft.com/beta/education/synchronizationProfiles/{id}
```

##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 202 Accepted
```

---
title: "Reset sync on an educationSynchronizationProfile"
description: "Reset the sync of a specific school data synchronization profile in the tenant."
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
---

# Reset sync on an educationSynchronizationProfile

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Reset the sync of a specific school data [synchronization profile](../resources/educationsynchronizationprofile.md) in the tenant.

> **Note:** This operation will cause synchronization to restart. Any errors encountered will be deleted. No data will be deleted from Azure Active Directory (Azure AD). 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions |
|:-----------|:----------|
| Delegated (work or school account) | EduAdministration.ReadWrite |
|Delegated (personal Microsoft account|Not supported.|
|Application|Not supported.|

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /synchronizationProfiles/{id}/reset
```

## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required.  |

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code.

## Example
##### Request
The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "post_educationSynchronizationProfile_reset"
}-->
```http
POST https://graph.microsoft.com/beta/education/synchronizationProfiles/{id}/reset
```

##### Response

There is no response body.

<!-- {
  "blockType": "response",
  "name": "post_educationSynchronizationProfile_reset"
}-->
```
HTTP/1.1 200 OK
```

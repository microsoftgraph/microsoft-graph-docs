---
title: "Delete a educationSynchronizationProfile"
description: "Delete a school data synchronization profile in the tenant based on the identifier."
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: apiPageType
---

# Delete a educationSynchronizationProfile

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/api/educationsynchronizationprofile-delete.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->

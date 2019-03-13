---
title: "Delete bookingStaffMember"
description: "Delete a staff member in the specified bookingbusiness."
localization_priority: Normal
author: "angelgolfer-ms"
ms.prod: "bookings"
doc_type: apiPageType
---

# Delete bookingStaffMember

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [staff member](../resources/bookingstaffmember.md) in the specified [bookingbusiness](../resources/bookingbusiness.md).
## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  Bookings.ReadWrite.All, Bookings.Manage.All   |
|Delegated (personal Microsoft account) | Not supported.   |
|Application | Not supported.  |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /bookingBusinesses/{id}/staffMembers/{id}

```
## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {code}|

## Request body
Do not supply a request body for this method.


## Response
If successful, this method returns `204, No Content` response code. It does not return anything in the response body.

## Example
##### Request
The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "delete_bookingstaffmember"
}-->
```http
DELETE https://graph.microsoft.com/beta/bookingBusinesses/Contosolunchdelivery@M365B489948.onmicrosoft.com/staffmembers/5fae928f-6d2d-417a-ad96-4b0caeb362d6
```
##### Response
The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Delete bookingStaffMember",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/api/bookingstaffmember-delete.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->

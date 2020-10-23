---
title: "Update profilephoto"
description: "Update the photo for any user in the tenant including the signed-in user, or the specified group or contact. Since there"
localization_priority: Normal
doc_type: apiPageType
ms.prod: ""
author: "kevinbellinger"
---

# Update profilephoto

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the photo for any user in the tenant, including the signed-in user or the specified group or contact. Because there
is currently a limit of 8MB on the total size of each REST request, the size of the photo you can add is limited to under 8MB.

Only use PUT for this operation.

> **Note**:  When updating the **user** photo, this operation first attempts to update the photo in Microsoft 365. If that fails (due to the user not having a mailbox), this API will attempt to update the photo in Azure Active Directory.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | Profile photo of the signed-in **user**:<br/>User.ReadWrite, User.ReadWrite.All<br /><br />For **group** resource:<br />Group.ReadWrite.All<br /><br />For **contact** resource:<br />Contacts.ReadWrite |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            | For **user** resource:<br/>User.ReadWrite.All<br /><br />For **group** resource:<br />Group.ReadWrite.All<br /><br />For **contact** resource:<br />Contacts.ReadWrite |

> **Note** To update the photo of any user in the organization, your app must have the User.ReadWrite.All application permission and call this API under its own identity, not on behalf of a user. To learn more, see [get access without a signed-in user](/graph/auth-v2-service). Updating the photo of the signed-in user only requires User.ReadWrite permission.

> **Note:**  There is currently a [known issue](/graph/known-issues#groups) with accessing group photos using application permissions.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PUT /me/photo/$value
PUT /users/{id | userPrincipalName}/photo/$value
PUT /groups/{id}/photo/$value
PUT /me/contacts/{id}/photo/$value
PUT /users/{id | userPrincipalName}/contacts/{id}/photo/$value
PUT /me/contactfolders/{contactFolderId}/contacts/{id}/photo/$value
PUT /users/{id | userPrincipalName}/contactfolders/{contactFolderId}/contacts/{id}/photo/$value
```

To update the photo for a team:

<!-- { "blockType": "ignored" } -->
```http
PUT /groups/{teamId}/photo/$value`
```

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | image/jpeg. Required.  |

## Request body
In the request body, include the binary data of the photo in the request body.

## Response

If successful, this method returns a `200 OK` response code.

## Example
### Request
The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_profilephoto"
}-->
```http
PUT https://graph.microsoft.com/beta/me/photo/$value
Content-type: image/jpeg

Binary data for the image

```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-profilephoto-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-profilephoto-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.profilePhoto"
} -->
```http
HTTP/1.1 200 OK
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Update profilephoto",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->



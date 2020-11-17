---
author: JeremyKelley
description: "Return the effective sharing permission for a particular permission resource."
ms.date: 09/10/2017
title: Get permissions
localization_priority: Normal
doc_type: apiPageType
ms.prod: ""
---
# Get sharing permission for a file or folder

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Return the effective sharing permission for a particular permission resource.

Effective permissions of an item can come from two sources: permissions set directly on the item itself or permissions that are inherited from the item's ancestors.

Callers can differentiate if the permission is inherited or not by checking the `inheritedFrom` property.
This property is an [ItemReference](../resources/itemreference.md) resource referencing the ancestor that the permission is inherited from.

SharePoint permission levels set on an item are returned with an 'SP' prefix. For example, SP.View Only, SP.Limited Access, SP.View Web Analytics Data. See [Full list of SharePoint roles](/SharePoint/sites/user-permissions-and-permission-levels#section1).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All    |
|Delegated (personal Microsoft account) | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All    |
|Application | Files.Read.All, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /drives/{drive-id}/items/{item-id}/permissions/{perm-id}
GET /groups/{group-id}/drive/items/{item-id}/permissions/{perm-id}
GET /me/drive/items/{item-id}/permissions/{perm-id}
GET /sites/{site-id}/drive/items/{item-id}/permissions/{perm-id}
GET /users/{user-id}/drive/items/{item-id}/permissions/{perm-id}
```

## Optional query parameters

This method support the [$select query parameter](/graph/query-parameters) to shape the response.

## Response

If successful, this method returns a `200 OK` response code and [Permission](../resources/permission.md) resource in the response body.

## Example

### Request

Here is an example of the request to access a permission on a folder.


# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "get-item-permission", "scopes": "files.read" } -->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/drive/items/{item-id}/permissions/{perm-id}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-item-permission-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-item-permission-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-item-permission-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-item-permission-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

If successful, this method returns a [Permission](../resources/permission.md) resource for the specified ID. 

<!-- {"blockType": "response", "@odata.type": "microsoft.graph.permission", "truncated": true} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "grantedTo": {
    "user": {
      "displayName": "Ryan Gregg",
      "id": "efee1b77-fb3b-4f65-99d6-274c11914d12"
    }
  },
  "id": "1",
  "roles": [ "write" ]
}
```

## Remarks

The [Permission](../resources/permission.md) resource uses _facets_ to provide information about the kind of permission represented by the resource.

Permissions with a [**link**](../resources/sharinglink.md) facet represent sharing links created on the item. 
Sharing links contain a unique token that provides access to the item for anyone with the link.

Permissions with a [**invitation**](../resources/sharinginvitation.md) facet represent permissions added by inviting specific users or groups to have access to the file.

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get a DriveItem's sharing permissions",
  "keywords": "permission, permissions, sharing",
  "section": "documentation",
  "tocPath": "OneDrive/Item/Get permission",
  "suppressions": [
  ]
}
-->

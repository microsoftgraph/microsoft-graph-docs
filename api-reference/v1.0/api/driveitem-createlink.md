---
author: JeremyKelley
ms.date: 09/10/2017
title: Share a file with a link
localization_priority: Normal
ms.prod: "sharepoint"
description: "You can use createLink action to share a DriveItem via a sharing link."
doc_type: apiPageType
---
# driveItem: createLink

Namespace: microsoft.graph

Share a [driveItem](../resources/driveitem.md) by creating a [permission](../resources/permission.md) with a sharing link.

The **createLink** action creates a new [sharingLink](../resources/sharinglink.md) resource if the specified link type doesn't already exist for the calling application.
If a sharing link of the specified type already exists for the app, the existing sharing link will be returned.

**driveItem** resources inherit sharing permissions from their ancestors.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Files.ReadWrite, Files.ReadWrite.All, Sites.ReadWrite.All    |
|Delegated (personal Microsoft account) | Files.ReadWrite, Files.ReadWrite.All    |
|Application | Files.ReadWrite.All, Sites.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /drives/{driveId}/items/{itemId}/createLink
POST /groups/{groupId}/drive/items/{itemId}/createLink
POST /me/drive/items/{itemId}/createLink
POST /sites/{siteId}/drive/items/{itemId}/createLink
POST /users/{userId}/drive/items/{itemId}/createLink
```

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json  |

## Request body

The body of the request defines properties of the sharing link your application is requesting.
The request should be a JSON object with the following properties.

|   Name       |  Type  |                                 Description                                  |
| :------------| :----- | :--------------------------------------------------------------------------- |
| **type**     | string | The type of sharing link to create. Either `view`, `edit`, or `embed`.       |
| **password** | string | The password of the sharing link that is set by the creator. Optional and OneDrive Personal only.
| **expirationDateTime** | string | A String with format of yyyy-MM-ddTHH:mm:ssZ of DateTime indicates the expiration time of the permission. |
| **scope** | string | Optional. The scope of link to create. Either `anonymous` or `organization`. |


### Link types

The following values are allowed for the **type** parameter.

| Type value | Description                                                                                  |
|:-----------|:---------------------------------------------------------------------------------------------|
| `view`     | Creates a read-only link to the DriveItem.                                                        |
| `edit`     | Creates a read-write link to the DriveItem.                                                       |
| `embed`    | Creates an embeddable link to the DriveItem. This option is only available for files in OneDrive personal. See an example in [Create embeddable links](/graph/files-share-driveitems-overview#create-embeddable-links). |

### Scope types

The following values are allowed for the **scope** parameter.
If the **scope** parameter is not specified, the default link type for the organization is created.

| Value          | Description
|:---------------|:------------------------------------------------------------
| `anonymous`    | Anyone with the link has access, without needing to sign in. This may include people outside of your organization. Anonymous link support may be disabled by an administrator.
| `organization` | Anyone signed into your organization (tenant) can use the link to get access. Only available in OneDrive for Business and SharePoint. See an example in [Create company sharable links](/graph/files-share-driveitems-overview#create-company-sharable-links).


## Response

If successful, this method returns a single [permission](../resources/permission.md) resource in the response body that represents the requested sharing permission.

The response will be `201 Created` if a new sharing link is created for the item or `200 OK` if an existing link is returned.

## Example

The following example requests a sharing link to be created for the DriveItem specified by {itemId} in the user's OneDrive.
The sharing link is configured to be read-only and usable by anyone with the link.

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create-link"
}-->

```http
POST /me/drive/items/{item-id}/createLink
Content-type: application/json

{
  "type": "view",
  "password": "ThisIsMyPrivatePassword",
  "scope": "anonymous"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-link-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-link-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-link-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-link-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.permission" } -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "123ABC",
  "roles": ["write"],
  "link": {
    "type": "view",
    "scope": "anonymous",
    "webUrl": "https://1drv.ms/A6913278E564460AA616C71B28AD6EB6",
    "application": {
      "id": "1234",
      "displayName": "Sample Application"
    },
  },
  "hasPassword": true
}
```


## Remarks

* Links created using this action do not expire unless a default expiration policy is enforced for the organization.
* Links are visible in the sharing permissions for the item and can be removed by an owner of the item.
* Links always point to the current version of a item unless the item is checked out (SharePoint only).

<!-- {
  "type": "#page.annotation",
  "description": "Create a new sharing link for an item.",
  "keywords": "create,sharing,sharing link",
  "section": "documentation",
  "tocPath": "Sharing/Create link",
  "suppressions": [
  ]
} -->


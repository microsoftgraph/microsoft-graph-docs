---
author: JeremyKelley
description: "You can use createLink action to share a DriveItem via a sharing link."
ms.date: 09/10/2017
title: Share a file with a link
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: apiPageType
---
# Create a sharing link for a DriveItem

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

You can use **createLink** action to share a [DriveItem](../resources/driveitem.md) via a sharing link.

The **createLink** action will create a new sharing link if the specified link type doesn't already exist for the calling application.
If a sharing link of the specified type already exists for the app, the existing sharing link will be returned.

DriveItem resources inherit sharing permissions from their ancestors.

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

### Request body

The body of the request defines properties of the sharing link your application is requesting.
The request should be a JSON object with the following properties.

|   Property                 |  Type  |                                 Description                                                               |
| :----------------------| :----- | :---------------------------------------------------------------------------------------------------------|
|type               | string | The type of sharing link to create. Either view, edit, or embed.                                    |
|password           | string | The password of the sharing link that is set by the creator. Optional and OneDrive Personal only.         |
|expirationDateTime | string | A String with format of yyyy-MM-ddTHH:mm:ssZ of DateTime indicates the expiration time of the permission. |
|scope              | string | Optional. The scope of link to create. Either anonymous or organization.                              |


### Link types

The following values are allowed for the **type** parameter.

| Type value | Description                                                                                  |
|:-----------|:---------------------------------------------------------------------------------------------|
| view     | Creates a read-only link to the DriveItem.                                                        |
| edit     | Creates a read-write link to the DriveItem.                                                       |
| embed    | Creates an embeddable link to the DriveItem. This option is only available for files in OneDrive personal. |

### Scope types

The following values are allowed for the **scope** parameter.
If the **scope** parameter is not specified, the default link type for the organization is created.

| Value          | Description
|:---------------|:------------------------------------------------------------
| anonymous    | Anyone with the link has access, without needing to sign in. This may include people outside of your organization. Anonymous link support may be disabled by an administrator.
| organization | Anyone signed into your organization (tenant) can use the link to get access. Only available in OneDrive for Business and SharePoint.


## Response

If successful, this method returns a single [Permission](../resources/permission.md) resource in the response body that represents the requested sharing permissions.

The response will be `201 Created` if a new sharing link is created for the item or `200 OK` if an existing link is returned.

## Example

The following example requests a sharing link to be created for the DriveItem specified by {itemId} in the user's OneDrive.
The sharing link is configured to be read-only and usable by anyone with the link.

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "item_createlink"
}-->

```http
POST /me/drive/items/{itemId}/createLink
Content-type: application/json

{
  "type": "view",
  "password": "ThisIsMyPrivatePassword",
  "scope": "anonymous"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/item-createlink-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/item-createlink-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/item-createlink-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/item-createlink-java-snippets.md)]
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

## Creating company sharable links

OneDrive for Business and SharePoint support company sharable links.
These are similar to anonymous links, except they only work for members of the owning organization.
To create a company sharable link, use the **scope** parameter with a value of `organization`.

### Request


# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "create-link-scoped", "scopes": "files.readwrite service.sharepoint" } -->

```http
POST /me/drive/items/{item-id}/createLink
Content-Type: application/json

{
  "type": "edit",
  "scope": "organization"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-link-scoped-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-link-scoped-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-link-scoped-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-link-scoped-java-snippets.md)]
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
    "type": "edit",
    "scope": "organization",
    "webUrl": "https://contoso-my.sharepoint.com/personal/ellen_contoso_com/...",
    "application": {
      "id": "1234",
      "displayName": "Sample Application"
    },
  }
}
```

## Creating embeddable links

When using the `embed` link type, the webUrl returned can be embedded in an `<iframe>` HTML element.
When an embed link is created the `webHtml` property contains the HTML code for an `<iframe>` to host the content.

**Note:** Embed links are only supported for OneDrive personal.

### Request


# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "create-embedded-link", "scopes": "files.readwrite service.onedrive" } -->

```http
POST /me/drive/items/{item-id}/createLink
Content-Type: application/json

{
  "type": "embed"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-embedded-link-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-embedded-link-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-embedded-link-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-embedded-link-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.permission" } -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "123ABC",
  "roles": ["read"],
  "link": {
    "type": "embed",
    "webHtml": "<IFRAME src=\"https://onedrive.live.com/...\"></IFRAME>",
    "webUrl": "https://onedive.live.com/...",
    "application": {
      "id": "1234",
      "displayName": "Sample Application"
    },
  }
}
```

## Remarks

* Links created using this action do not expire unless a default expiration policy is enforced for the organization.
* Links are visible in the sharing permissions for the item and can be removed by an owner of the item.
* Links always point to the current version of a item unless the item is checked out (SharePoint only).

<!--
{
  "type": "#page.annotation",
  "description": "Create a new sharing link for an item.",
  "keywords": "create,sharing,sharing link",
  "section": "documentation",
  "tocPath": "Sharing/Create link",
  "suppressions": [
  ]
}
-->



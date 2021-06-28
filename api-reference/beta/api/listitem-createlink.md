---
title: "listItem: createLink"
description: "Create a link to share a listItem"
author: "learafa"
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: apiPageType
---

# listItem: createLink

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a sharing link for a [listItem](../resources/listitem.md).

The **createLink** action creates a new sharing link if the specified link type doesn't already exist for the calling application.
If a sharing link of the specified type already exists for the app, this action will return the existing sharing link.

**listItem** resources inherit sharing permissions from the [list](../resources/list.md) the item resides in.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account) | Files.ReadWrite, Files.ReadWrite.All, Sites.ReadWrite.All    |
|Delegated (personal Microsoft account) | Files.ReadWrite, Files.ReadWrite.All    |
|Application | Files.ReadWrite.All, Sites.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored",
  "sampleKeys": ["contoso.sharepoint.com,2288913C-B09C-46C4-BD1D-AEBB3A6E08EB,133A857A-DC2E-4A41-BCF7-D2B9BBC016AF", "A90E03FB-8446-4E0F-82E7-810FA7595A66", "3"]
}
-->
``` http
POST /sites/{siteId}/lists/{listId}/items/{itemId}/createLink
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, provide a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|   Property             |  Type  |           Description                        |
| :----------------------| :----- | :--------------------------------------------|
|type|String|The type of sharing link to create. Optional. |
|scope|String|The scope of link to create. Either `anonymous`, `organization` or `users`. Optional. |
|expirationDateTime|DateTimeOffset|A string with format of yyyy-MM-ddTHH:mm:ssZ of DateTime indicates the expiration time of the permission. Optional. |
|password|String|The password of the sharing link that is set by the creator. Optional. |
|recipients|[driveRecipient](../resources/driverecipient.md) collection|A collection of recipients who will receive access to the sharing link. Optional. |

### Link types

The following values are allowed for the **type** parameter.

| Type value | Description                                                                                  |
|:-----------|:---------------------------------------------------------------------------------------------|
| view           | Creates a read-only link to the item.                                                                        |
| review         | Creates a review link to the item. This option is only available for files in OneDrive for Business and SharePoint.                   |
| edit           | Creates an read-write link to the item.                                                                       |
| embed          | Creates an embeddable link to the item.                                                                      |
| blocksDownload | Creates a read-only link that blocks download to the item. This option is only available for files in OneDrive for Business and SharePoint.  |
| createOnly     | Creates an upload-only link to the item. This option is only available for folders in OneDrive for Business and SharePoint.             |
| addressBar     | Creates the default link that is shown in the browser address bars for newly created files. Only available in OneDrive for Business and SharePoint. The organization admin configures whether this link type is supported, and what features are supported by this link type. |
| adminDefault   | Creates the default link to the item as determined by the administrator of the organization. Only available in OneDrive for Business and SharePoint. The policy is enforced for the organization by the admin |

### Scope types

The following values are allowed for the **scope** parameter.

| Value          | Description
|:---------------|:------------------------------------------------------------
| anonymous    | Anyone with the link has access, without needing to sign in. This may include people outside of your organization. Anonymous link support may be disabled by an administrator.
| organization | Anyone signed into your organization (tenant) can use the link to get access. Only available in OneDrive for Business and SharePoint.
| users        | Specific people in the recipients collection can use the link to get access. Only available in OneDrive for Business and SharePoint.

## Response

If successful, this method returns a single [permission](../resources/permission.md) resource in the response body that represents the requested sharing permissions.

The response will be `201 Created` if a new sharing link is created for the listItem or `200 OK` if an existing link is returned.

## Examples

### Example 1: Create an anonymous sharing link
The following example requests a sharing link to be created for the listItem specified by {itemId} in the list specified {listId}.
The sharing link is configured to be read-only and usable by anyone with the link.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "listItem_createlink",
  "sampleKeys": ["contoso.sharepoint.com,2288913C-B09C-46C4-BD1D-AEBB3A6E08EB,133A857A-DC2E-4A41-BCF7-D2B9BBC016AF", "A90E03FB-8446-4E0F-82E7-810FA7595A66", "3"]
}-->

```http
POST sites/{siteId}/lists/{listId}/items/{itemId}/createLink
Content-Type: application/json
Content-length: 212

{
  "type": "view",
  "scope": "anonymous",
  "password": "String",
  "recipients": [
    {
      "@odata.type": "microsoft.graph.driveRecipient"
    }
  ]
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/listitem-createlink-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/listitem-createlink-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/listitem-createlink-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/listitem-createlink-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permission"
}
-->
``` http
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

### Example 2: Creating company sharable links

OneDrive for Business and SharePoint support company sharable links.
These are similar to anonymous links, except they only work for members of the owning organization.
To create a company sharable link, use the **scope** parameter with a value of `organization`.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "listItem_createlink",
  "sampleKeys": ["contoso.sharepoint.com,2288913C-B09C-46C4-BD1D-AEBB3A6E08EB,133A857A-DC2E-4A41-BCF7-D2B9BBC016AF", "A90E03FB-8446-4E0F-82E7-810FA7595A66", "3"]
}-->

```http
POST /sites/{siteId}/lists/{listId}/items/{itemId}/createLink
Content-Type: application/json

{
  "type": "edit",
  "scope": "organization"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/listitem-createlink-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/listitem-createlink-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/listitem-createlink-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/listitem-createlink-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

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

### Example 3: Creating embeddable links

When using the `embed` link type, the webUrl returned can be embedded in an `<iframe>` HTML element.
When an embed link is created the `webHtml` property contains the HTML code for an `<iframe>` to host the content.

>**Note:** Embed links are only supported for OneDrive personal.

#### Request

<!-- {
  "blockType": "request",
  "name": "listItem_createlink",
  "sampleKeys": ["contoso.sharepoint.com,2288913C-B09C-46C4-BD1D-AEBB3A6E08EB,133A857A-DC2E-4A41-BCF7-D2B9BBC016AF", "A90E03FB-8446-4E0F-82E7-810FA7595A66", "3"]
}-->

```http
POST /sites/{siteId}/lists/{listId}/items/{itemId}/createLink
Content-Type: application/json

{
  "type": "embed"
}
```

#### Response

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

* To create a link based on the organization's default policy and the caller's permissions on the listItem, omit the scope and type parameters
* Links created using this action do not expire unless a default expiration policy is enforced for the organization.
* Links are visible in the sharing permissions for the listItem and can be removed by an owner of the listItem.
* Links always point to the current version of a listItem unless the listItem is checked out (SharePoint only).

<!--
{
  "type": "#page.annotation",
  "description": "Create a new sharing link for an listItem.",
  "keywords": "create,sharing,sharing link",
  "section": "documentation",
  "tocPath": "Sharing/Create link",
  "suppressions": [
  ]
}
-->

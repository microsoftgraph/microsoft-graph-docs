---
author: rgregg
ms.author: rgregg
ms.date: 09/10/2017
title: Send an invite to access an item
localization_priority: Normal
ms.prod: "sharepoint"
---
# Send a sharing invitation

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Sends a sharing invitation for a **DriveItem**.
A sharing invitation provides permissions to the recipients and optionally sends an email to the recipients to notify them the item was shared.

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
POST /drives/{drive-id}/items/{item-id}/invite
POST /groups/{group-id}/drive/items/{item-id}/invite
POST /me/drive/items/{item-id}/invite
POST /sites/{siteId}/drive/items/{itemId}/invite
POST /users/{userId}/drive/items/{itemId}/invite
```

## Request body

In the request body, provide a JSON object with the following parameters.

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.inviteParameters", "scopes": "files.readwrite" } -->

```json
{
  "requireSignIn": false,
  "sendInvitation": false,
  "roles": [ "read | write"],
  "recipients": [
    { "@odata.type": "microsoft.graph.driveRecipient" },
    { "@odata.type": "microsoft.graph.driveRecipient" }
  ],
  "message": "string"
}
```

| Parameter        | Type                                            | Description                                                                                                |
|:-----------------|:------------------------------------------------|:-----------------------------------------------------------------------------------------------------------|
| recipients       | Collection([DriveRecipient](../resources/driverecipient.md)) | A collection of recipients who will receive access and the sharing invitation.                                            |
| message          | String                                          | A plain text formatted message that is included in the sharing invitation. Maximum length 2000 characters. |
| requireSignIn    | Boolean                                         | Specifies where the recipient of the invitation is required to sign-in to view the shared item.            |
| sendInvitation   | Boolean                                         | Specifies if an email or post is generated (false) or if the permission is just created (true).            |
| roles            | Collection(String)                              | Specify the roles that are be granted to the recipients of the sharing invitation.                         |

## Example

This example sends a sharing invitation to a user with email address "ryan@contoso.org" with a message about a file being collaborated on.
The invitation grants Ryan read-write access to the file.

### HTTP Request

If successful, this method returns `200 OK` response code and [permission](../resources/permission.md) collection object in the response body.

<!-- { "blockType": "request", "name": "send-sharing-invite", "@odata.type": "microsoft.graph.inviteParameters", "scopes": "files.readwrite", "target": "action" } -->

```http
POST /me/drive/items/{item-id}/invite
Content-type: application/json

{
  "recipients": [
    {
      "email": "ryan@contoso.org"
    }
  ],
  "message": "Here's the file that we're collaborating on.",
  "requireSignIn": true,
  "sendInvitation": true,
  "roles": [ "write" ]
}
```

### Response

Here is an example of the response.

<!-- { "blockType": "response", "@odata.type": "Collection(microsoft.graph.permission)", "truncated": true } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "grantedTo": {
        "user": {
          "displayName": "Ryan Gregg",
          "id": "42F177F1-22C0-4BE3-900D-4507125C5C20"
        }
      },
      "id": "CCFC7CA3-7A19-4D57-8CEF-149DB9DDFA62",
      "invitation": {
        "email": "ryan@contoso.com",
        "signInRequired": true
      },
      "roles": [ "write" ]
    }
  ]
}
```

## Remarks

* [Drives](../resources/drive.md) with a **driveType** of `personal` (OneDrive personal) cannot create or modify permissions on the root DriveItem.
* For a list of available roles, see [Roles enumeration](../resources/permission.md#roles-enumeration-values).

## Error Responses

Read the [Error Responses][error-response] topic for more information about
how errors are returned.


[error-response]: /graph/errors

<!-- {
  "type": "#page.annotation",
  "description": "Add permissions to an item and optionally send a sharing notification.",
  "keywords": "retrieve,item,metadata",
  "section": "documentation",
  "tocPath": "Sharing/Add permissions"
} -->

---
author: JeremyKelley
description: "Sends a sharing invitation for a DriveItem."
ms.date: 09/10/2017
title: Send an invite to access an item
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: apiPageType
---
# Send a sharing invitation

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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
| expirationDateTime | DateTimeOffset                       | Specify the DateTime after which the permission expires. Available on OneDrive for Business, SharePoint, and premium personal OneDrive accounts.
| password           | String                         | The password set on the invite by the creator. Optional and OneDrive Personal only

## Example

This example sends a sharing invitation to a user with email address "ryan@contoso.org" with a message about a file being collaborated on.
The invitation grants Ryan read-write access to the file.

### HTTP request

If successful, this method returns `200 OK` response code and [permission](../resources/permission.md) collection object in the response body.


# [HTTP](#tab/http)
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
  "roles": [ "write" ],
  "password": "password123",
  "expirationDateTime": "2018-07-15T14:00:00.000Z"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/send-sharing-invite-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/send-sharing-invite-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/send-sharing-invite-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/send-sharing-invite-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

Here is an example of the response.

<!-- { "blockType": "response", "@odata.type": "Collection(microsoft.graph.permission)", "truncated": true } -->

```json
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
      "hasPassword": true,
      "id": "CCFC7CA3-7A19-4D57-8CEF-149DB9DDFA62",
      "invitation": {
        "email": "ryan@contoso.com",
        "signInRequired": true
      },
      "roles": [ "write" ],
      "expirationDateTime": "2018-07-15T14:00:00.000Z"
    }
  ]
}
```
### Partial success response

When inviting multiple recipients, it's possible for the notification to succeed for some and fail for others.
In this case, the service returns a partial success response with an HTTP status code of 207.
When partial success is returned, the response for each failed recipient will contain an `error` object with information about what went wrong and how to fix it.

Here is an example of the partial response.  

<!-- { "blockType": "response", "@odata.type": "Collection(microsoft.graph.permission)", "truncated": true } -->

```json
HTTP/1.1 207 Multi-Status
Content-type: application/json

{
  "value": [
    {
      "grantedTo": {
        "user": {
          "displayName": "John Adams",
          "id": "5D8CA5D0-FFF8-4A97-B0A6-8F5AEA339681"
        }
      },
      "id": "1EFG7CA3-7A19-4D57-8CEF-149DB9DDFA62",
      "invitation": {
        "email": "adams@contoso.com",
        "signInRequired": true
      },
      "roles": [ "write" ],
      "error": {
        "code":"notAllowed",
        "message":"Account verification needed to unblock sending emails.",
        "localizedMessage": "Kontobestätigung erforderlich, um das Senden von E-Mails zu entsperren.",
        "fixItUrl":"http://g.live.com/8SESkydrive/VerifyAccount",
        "innererror":{  
          "code":"accountVerificationRequired" 
        }
      }
    },
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
      "roles": [ "write" ],
      "expirationDateTime": "2018-07-15T14:00:00.000Z"
    }
  ]
}
```
### SendNotification errors
The following are some additional errors that your app might encounter within the nested `innererror` objects when sending notification fails. 
Apps are not required to handle these.

| Code                           | Description
|:-------------------------------|:--------------------------------------------------------------------------------------
| accountVerificationRequired    | Account verification is required to unblock sending notifications.
| hipCheckRequired               | Need to solve HIP (Host Intrusion Prevention) check to unblock sending notifications.
| exchangeInvalidUser            | Current user's mailbox was not found.
| exchangeOutOfMailboxQuota      | Out of quota.
| exchangeMaxRecipients          | Exceeded maximum number of recipients that can be sent notifications at the same time.

>**Note:** The service can add new error codes or stop returning old ones at any time.

## Remarks

* [Drives](../resources/drive.md) with a **driveType** of `personal` (OneDrive personal) cannot create or modify permissions on the root DriveItem.
* For a list of available roles, see [roles property values](../resources/permission.md#roles-property-values).

## Error responses

Read the [Error Responses][error-response] topic for more information about
how errors are returned.


[error-response]: /graph/errors

<!--
{
  "type": "#page.annotation",
  "description": "Add permissions to an item and optionally send a sharing notification.",
  "keywords": "retrieve,item,metadata",
  "section": "documentation",
  "tocPath": "Sharing/Add permissions",
  "suppressions": [
  ]
}
-->



# Send a sharing invitation

Sends a sharing invitation for a **DriveItem**.
A sharing invitation provides permissions to the recipients and optionally sends an email to the recipients to notify them the item was shared.

## Prerequisites
One of the following **scopes** is required to execute this API:

* Files.ReadWrite
* Files.ReadWrite.All
* Sites.ReadWrite.All

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/drive/items/{item-id}/invite
POST /drive/items/{item-id}/invite
POST /drives/{drive-id}/items/{item-id}/invite
POST /groups/{group-id}/drive/items/{item-id}/invite
```

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter        | Type                                            | Description                                                                                                |
|:-----------------|:------------------------------------------------|:-----------------------------------------------------------------------------------------------------------|
| recipients       | Collection([DriveRecipient](../resources/driverecipient.md)) | A collection of recipients who will receive access and the sharing invitation.                                            |
| message          | String                                          | A plain text formatted message that is included in the sharing invitation. Maximum length 2000 characters. |
| requireSignIn    | Boolean                                         | Specifies where the recipient of the invitation is required to sign-in to view the shared item.            |
| sendInvitation   | Boolean                                         | Specifies if an email or post is generated (false) or if the permission is just created (true).            |
| roles            | Collection(String)                              | Specify the roles that are be granted to the recipients of the sharing invitation.                         |

## Response

If successful, this method returns `200 OK` response code and [permission](../resources/permission.md) collection object in the response body.

## Example
Here is an example of how to call this API.

##### Request
Here is an example of the request.

<!-- {
  "blockType": "request",
  "name": "item_invite"
}-->
```http
POST https://graph.microsoft.com/v1.0/drive/items/{item-id}/invite
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

##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permission",
  "isCollection": true
} -->
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

* [Drives](../resources/drive.md) with a **driveType** of `personal` (OneDrive Personal) cannot create or modify permissions on the root DriveItem. 
* For a list of available roles, see [Roles enumeration](../resources/permission.md#roles-enumeration).

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->

<!-- {
  "type": "#page.annotation",
  "description": "item: invite",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

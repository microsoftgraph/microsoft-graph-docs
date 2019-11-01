---
title: "Create and send a notification"
description: "Create and send a notification targeting a user through Microsoft Graph."
localization_priority: Normal
ms.prod: "notifications"
doc_type: apiPageType
author: "merzink"
---

# Create and send a notification
[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create and send a notification targeting a user through Microsoft Graph. The notification is stored in the Microsoft Graph notification feed store, and is sent to all app clients on all device endpoints that the user is signed in to.  

## Permissions
Your application service does not require any additional permissions to post notifications to your targeted user.  

> [!IMPORTANT]
> If you choose to post notifications on behalf of a user via delegated permissions instead, one of the following permissions is required to call this API. We don't recommend this option for posting notifications but if you'd like to learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Notifications.ReadWrite.CreatedByApp    |
|Delegated (personal Microsoft account) | Notifications.ReadWrite.CreatedByApp    |
| Application                           | Not supported. |


## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /me/notifications/
```
## Request headers
|Name | Type | Description|
|:----|:-----|:-----------|
|Authorization | string |The authorization header is used to pass the credentials of the calling party. Bearer {token}. Required. |
|X-UNS-ID | string |The UserNotificationSubscriptionId that is returned by the Microsoft Graph notification service after creating a subscription on the client-side, and is used to target the specific user. Required. |
|Content-type| application/json. Required.|

## Request body
In the request body, supply a JSON representation of a [notification](../resources/projectrome-notification.md) object.

## Response
If successful, this method returns a `201 Created` response code that indicates that the notification was successfully created and stored. The notification will be subsequently fanned-out to all specified endpoints with a valid subscription. 

## Example
### Request
The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "create_notification_from_user"
}-->

```http
POST https://graph.microsoft.com/beta/me/notifications
Content-type: application/json

{
  "notification": {
    "targetHostName": "targetHostName-value",
    "appNotificationId": "appNotificationID-value",
    "expirationDateTime": "datetime-value",
    "targetPolicy": {
	  "platformTypes": [
		"platformTypes-value"
		]
      }, 
    "payload": {
      "rawContent": "rawContent-value",
      "visualContent": {
        "title": "title-value",
        "body": "body-value"
      }
    },
    "displayTimeToLive": 99,
    "priority": "priority-value",
    "groupName": "groupName-value"
  }
}
```

### Response
The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.notification"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "notification": {
    "targetHostName": "targetHostName-value",
    "expirationDateTime": "datetime-value",
    "payload": {
      "rawContent": "rawContent-value",
      "visualContent": {
        "title": "title-value",
        "body": "body-value"
      }
    },
    "displayTimeToLive": 99,
    "priority": "priority-value",
    "groupName": "groupName-value"
  }
}
```

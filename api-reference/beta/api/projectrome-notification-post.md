---
title: "Create and send a notification"
description: "Create and send a notification targeting a user through Microsoft Graph. The notification is stored in the Microsoft Graph notification feed store, and is sent to all app clients on all device endpoints that the user is signed in to.  "
localization_priority: Normal
ms.prod: "project-rome"
---

# Create and send a notification
> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Create and send a notification targeting a user through Microsoft Graph. The notification is stored in the Microsoft Graph notification feed store, and is sent to all app clients on all device endpoints that the user is signed in to.  
## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Notifications.ReadWrite.CreatedByApp    |
|Delegated (personal Microsoft account) | Notifications.ReadWrite.CreatedByApp    |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /me/notifications/
```
## Request headers
|Name | Type | Description|
|:----|:-----|:-----------|
|Authorization | string |The authorization header is used to pass the credentials of the calling party. Bearer {token}. Required. |
## Request body
In the request body, supply a JSON representation of a [notification](../resources/projectrome-notification.md) object.

## Response
If successful, this method returns the `201 Created` response code that indicates that the notification was successfully created and stored. 
## Example
#### Request
The following is an example of the request.

```http
POST https://graph.microsoft.com/beta/me/notifications/
Content-type: application/json

{
    "targetHostName": "graphnotifications.sample.windows.com",
    "appNotificationId": "testDirectToastNotification",
    "expirationDateTime": "2018-08-29T23:51:33.000Z",
    "payload": {
        "visualContent": {
            "title": "Hello World!",
            "body": "Notifications are Great!"
        }
    },
    "targetPolicy": {
        "platformTypes": [
        "windows",
        "android"
        ]
    },
    "priority": "High",
    "groupName": "TestGroup",
    "displayTimeToLive": "23"
}
```

#### Response
The following is an example of the response.

```http
HTTP/1.1 201
Content-Type: application/json
location: https://graph.microsoft.com/beta/me/notifications/518c4fb1-c565-4d67-95c4-bcc3eb8eda1b

{
    "@odata.context": "https://graph.microsoft.com/test872018/$metadata#users('graphNotificationsUser%40contoso.com')/notifications/$entity",
    "appNotificationId": "testDirectToastNotification",
    "displayTimeToLive": 23,
    "expirationDateTime": "2018-08-24T12:31:53.858Z",
    "groupName": "TestGroup",
    "id": "cd5c5e6a-99ce-470a-9982-c47635e73620",
    "priority": "1",
    "payload": {
        "visualContent": {
            "title": "Hello World!",
            "body": "Notifications are Great!"
        }
    }
}
```



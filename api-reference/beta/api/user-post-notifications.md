---
title: "Create and send a notification"
description: "Create and send a notification targeting a user through Microsoft Graph."
localization_priority: Normal
ms.prod: "notifications"
doc_type: apiPageType
author: "merzink"
---

# Create and send a notification

Namespace: microsoft.graph
[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create and send a notification targeting a user through Microsoft Graph. The notification is stored in the Microsoft Graph notification feed store, and is sent to all app clients on all device endpoints that the user is signed in to.  

## Permissions
Your application service does not require any additional permissions to post notifications to your targeted user.  

> [!IMPORTANT]
> If you choose to post notifications on behalf of a user via delegated permissions instead, one of the following permissions is required to call this API. We don't recommend this option for creating notifications. If you'd like to learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Notifications.ReadWrite.CreatedByApp    |
|Delegated (personal Microsoft account) | Notifications.ReadWrite.CreatedByApp    |
|Application | Not supported.|



## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /me/notifications/
```
## Request headers
|Name | Description|
|:----|:-----------|
|Authorization | The authorization header is used to pass the credentials of the calling party. Bearer {token}. Required. |
|X-UNS-ID | The UserNotificationSubscriptionId that is returned by the Microsoft Graph notification service after creating a subscription and is used to target the specific user. Required. |
|Content-type | application/json. Required.|

## Request body
In the request body, supply a JSON representation of a [notification](../resources/projectrome-notification.md) object.

## Response
If successful, this method returns a `201 Created` response code that indicates that the notification was successfully created and stored. The notification will be subsequently fanned-out to all specified endpoints with a valid subscription. 

The following table lists the possible error and response codes that can be returned.

|Error code             | Descrition             		         |
|:-----------------------------------|:----------------------------------------------------------|
|HttpStatusCode.BadRequest           | Body is an array (multiple notifications is not supported).|
|HttpStatusCode.BadRequest           | Body doesn't match the contract for the API.               |
|HttpStatusCode.Forbidden            | Caller is on the blocked list.                          |
|HttpStatusCode.MethodNotAllowed     | The HTTP method used is not supported.                     |
|HttpStatusCode.BadRequest           | Unsupported headers are present in the request. Two headers are not supported:<br/><br/>If-Modified-Since<br/>If-Range |                    
|HttpStatusCode.UnsupportedMediaType | The header Content-Encoding is present and has compression algorithm values other than `Deflate` or `Gzip`.  |
|HttpStatusCode.BadRequest           | Invalid payload.                                           |
|HttpStatusCode.Forbidden            | Caller is not authorized to act on behalf of the user or send notification to the user.                         |
|HttpStatusCode.Unauthorized         |	Request body contains invalid activity data types.        |
|HttpStatusCode.OK                   | 	Activity successfully created.                            |
|HttpStatusCode.NotAcceptable        |	Request has been throttled or the server is busy.    |


## Example
### Request
The following is an example of a request.

```http
POST https://graph.microsoft.com/beta/me/notifications/
Content-type: application/json

{
    "targetHostName": "graphnotifications.sample.windows.com",
    "appNotificationId": "testDirectToastNotification",
    "expirationDateTime": "2019-10-30T23:59:00.000Z",
    "payload": {
        "visualContent": {
            "title": "Hello World!",
            "body": "Notifications are Great!"
        }
    },
    "targetPolicy": {
        "platformTypes": [
	"windows",
	"ios",
	"android"
        ]
	},
    "priority": "High",
    "groupName": "TestGroup",
    "displayTimeToLive": "60"
}
```

### Response
The following is an example of the corresponding response.

```http
HTTP/1.1 201
client-request-id: 71e62feb-8d72-4912-8b2c-4cee9d89e781
content-length: 356
content-type: application/json
location: https://graph.microsoft.com/beta/me/activities/119081f2-f19d-4fa8-817c-7e01092c0f7d
request-id: 71e62feb-8d72-4912-8b2c-4cee9d89e781

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('graphnotify%40contoso.com')/notifications/$entity",
    "displayTimeToLive": 59,
    "expirationDateTime": "2019-10-28T22:05:36.25Z",
    "groupName": "TestGroup",
    "id": "119081f2-f19d-4fa8-817c-7e01092c0f7d",
    "priority": "High",
    "payload": {
        "visualContent": {
            "title": "Hello World!",
            "body": "Notifications are Great!"
        }
    }
}
```



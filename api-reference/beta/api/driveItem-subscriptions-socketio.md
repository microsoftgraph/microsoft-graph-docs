---
title: "Get websocket endpoint"
description: "Use of these APIs in production applications is not supported."
localization_priority: Normal
ms.prod: "sharepoint"
---

# Get websocket endpoint

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change.
Use of these APIs in production applications is not supported.

Allows you to receive near-real-time change notifications for a [drive][] using [socket.io][].
Socket.io is a popular notifications library for JavaScript that utilizes WebSockets. To learn more, see [socket.io](https://socket.io).

[drive]: ../resources/drive.md
[socket.io]: https://socket.io/

## Permissions

One of the following permissions is required to call this API.
To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)
|:---------------------------------------|:-------------------------------------------
| Delegated (work or school account)     | Files.Read, Files.ReadWrite, Files.ReadWrite.All, Sites.ReadWrite.All
| Delegated (personal Microsoft account) | Files.Read, Files.ReadWrite, Files.ReadWrite.All
| Application                            | Not supported.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /me/drive/root/subscriptions/socketIo
GET /drives/{driveId}/root/subscriptions/socketIo
GET /groups/{groupId}/drive/root/subscriptions/socketIo
GET /sites/{siteId}/lists/{listId}/drive/root/subscriptions/socketIo
```

## Example

### Request

<!-- { "blockType": "request", "name": "drive_root_subscriptions_socketIo" } -->
```http
GET /me/drive/root/subscriptions/socketIo
```

### Response

If successful, this method returns a `200 OK` response code and a [subscription](../resources/subscription.md) object in the response body.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.subscription"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "opaqueId-fj3hd7yf283jfk193726nvc2w3i2diemdu8",
  "notificationUrl": "https://f3hb0mpua.svc.ms/zbaehwg/callback?snthgk=1ff3-2345672zz831837523"
}
```

The `notificationUrl` returned is a socket.io endpoint URL.
To use it with a socket.io client, split the string on the `/callback?` token.
The part of the string before `/callback?` is the socket.io endpoint URL and the part of the string after is an opaque query string that must be given to the libary.

The following example shows how to use the `notificationUrl` with socket.io in JavaScript.

```javascript
// this is the notificationUrl returned from this API
var notificationUrl = "https://f3hb0mpua.svc.ms/zbaehwg/callback?snthgk=1ff3-2345672zz831837523";

// after the split, split[0] will be everything leading up to '/callback?' and split[1] will be everything after.
var split = notificationUrl.split("/callback?");

// 'io' comes from the socket.io client library
var socket = io(split[0], { query: split[1] });

// these examples log to the console.
// your app would provide its own callbacks
socket.on("connect", ()=>console.log("Connected!"));
socket.on("notification", (data)=>console.log("Notification!", data));
```

<!-- {
  "type": "#page.annotation"
}-->

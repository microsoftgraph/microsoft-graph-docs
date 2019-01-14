---
title: "notification resource type"
description: "Represents a notification that is published by an app server that targets a specified user. The notification is stored in Microsoft Graph and is distributed to different device endpoints owned by the user. "
localization_priority: Normal
ms.prod: "project-rome"
---

# notification resource type
> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents a notification that is published by an app server that targets a specified user. The notification is stored in Microsoft Graph and is distributed to different device endpoints owned by the user. 

A notification can be a visual notification payload that can be interpreted by the operating system, including Windows, Android, and iOS platforms. It can also be a data payload that's delivered to and handled by app clients, which then determine the corresponding user experience on each device – usually, a visual notification UI that corresponds to the content in the original data payload that's generated locally. 

When a user acts on a visual notification, the app client can then use client-side Project Rome SDK to update the state of the corresponding notification feed in Microsoft Graph - for example, by marking a notification as dismissed. The update will then be distributed to all other app client endpoints, and the clients handle the change accordingly, for example by dismissing the notification to prevent the user from seeing redundant information. App clients can access the same notification resource at a later time before it expires (even after it is marked as dismissed), as notification history, via the [Project Rome SDK](https://github.com/Microsoft/project-rome). 

## Methods
|Method | Return Type | Description|
|:------|:------------|:-----------|
|[Create notification](../api/projectrome-notification-post.md) | [notification](projectrome-notification.md) |Create and send a notification. |

## Properties
|Name | Type | Description|
|:----|:-----|:-----------|
| targetHostName | String | Represents the host name of the app to which the calling service wants to post the notification, for the given user. |
| appNotificationId | String | The unique id set by the app server of a notification that is used to identify and target an individual notification. |
| expirationDateTime | DateTimeOffset | Sets a UTC expiration time on a user notification - when time is up, the notification is removed from the Microsoft Graph notification feed store completely and is no longer part of notification history. Max value is 30 days. |
| payload | Edm.ComplexType, JSON object | This is the data content of a raw or visual user notification that will be delivered to and consumed by the app client receiving this notification. |
| payload.rawContent | String | The notification content of a raw user notification that will be delivered to and consumed by the app client receiving this notification. At least one of Payload.RawContent and Payload.VisualContent needs to be valid for a POST Notification request. |
| payload.visual | Edm.ComplexType, JSON object | The visual content of a visual user notification, which will be consumed by the notification platform on each mobile platform and rendered for the users. At least one of Content and VisualContent needs to be valid for a POST Notification request. |
| payload.visual.title | String | The title of a visual user notification. Must have either title or body. |
| payload.visual.body | String | The body of a visual user notification. Must have either title or body. |
| displayTimeToLive | Int | Sets how long (in seconds) this notification content will stay in each platform’s notification viewer. For example, when the notification is delivered to a Windows device, the value of this property is passed on to ToastNotification.ExpirationTime, which determines how long the toast notification will stay in the user’s Windows Action Center. |
| priority | EnumType | Indicates the priority of a raw user notification. Visual notifications are sent with high priority by default. Valid values are High and Low. |
| groupName | String | The name of the group that this notification belongs to. It is set by the developer for the purpose of grouping notifications together. |
| targetPolicy | Edm.ComplexType, JSON object | Target policy object handles notification delivery policy at two different levels - endpoint types (Windows, iOS and Android) that should be targeted, and specific endpoints (identified by subscription ids) that should be targeted. |
| targetPolicy.platformTypes | Edm.ComplexType, Collection (EnumType) | Use to filter the notification distribution to a specific platform or platforms. By default, all push endpoint types (iOS, Windows, and Android) are enabled. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource when you publish a direct visual notification that is delivered to the destination operating system.

```json
{	
  "targetHostName": "String",
  "appNotificationId": "String",
  "expirationDateTime": "DateTimeOffset",
  "payload":  
  {
    "visualContent": 
    {
      "title": "String",
      "body": "String"
    },
  },
  "displayTimeToLive": "Int",
  "priority": "Enum",
  "groupName": "String",
  "targetPolicy":
  {
    "platformTypes": [ 
      "Enum"
    ]
  }
}
```

The following is a JSON representation of the resource when you publish a raw data notification that is delivered to app clients.
```json
{	
  "targetHostName": "String",
  "appNotificationId": "String",
  "expirationDateTime": "DateTimeOffset",
  "payload":  
  {
    "rawContent": "String"
  },
  "displayTimeToLive": "Int",
  "priority": "Enum",
  "groupName": "String",
  "targetPolicy":
  {
    "platformTypes": [ 
      "Enum"
    ]
  }
}
```

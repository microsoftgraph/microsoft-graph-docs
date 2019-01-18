---
title: "Using the notifications API in Microsoft Graph to enable human-centric notification experiences "
description: "Notifications are the most effective way to re-engage your users. They can catch your users' attention and bring the user back to your app. In a multi-device world, your users can access your apps and services from anywhere, across different platforms and devices where your apps have a presence. "
localization_priority: Priority
ms.prod: "project-rome"
---

# Using the notifications API in Microsoft Graph to enable human-centric notification experiences 

Notifications are the most effective way to re-engage your users. They can catch your users' attention and bring the user back to your app. In a multi-device world, your users can access your apps and services from anywhere, across different platforms and devices where your apps have a presence. 

Your notification scenarios should be designed in a "human-centric" way, in which the primary goal is to notify the user, wherever he or she is. Existing notification solutions provided by major platforms are excellent at targeting devices. Microsoft Graph notifications  improve on this by allowing you to target users. Microsoft Graph notifications will take care of the heavy lifting, including mapping between users and endpoints, syncing notification state across users' different endpoints, and more. 

## Why integrate with Microsoft Graph notifications?
### Deliver notifications to a user across different endpoints
As part of Microsoft Graph, the notifications API allows you to target a Microsoft account or a work or school (Azure AD) account to deliver a notification. The platform distributes this notification to all the users' endpoints, including Windows UWP, Android, and iOS. 

### Manage notifications across endpoints
The Microsoft Graph notifications API allows you to update the state of a notification and sync that state across all endpoints. For example, when a user acts on a notification on one device, you can update the state of this notification (such as marking it as read or dismissed), and the same state change will be distributed to all other endpoints. The Microsoft Graph notifications API tracks the state of your users' notifications in a centralized way, making it easy for you to ensure that your notifications are handled once, and dismissed everywhere.

### Retrieve notification history
You can use the notifications API to retrieve notification history based on an expiration time you define (up to 30 days). Notifications that are marked as read or dismissed are still retrievable from the history, enabling in-app views of notification history and other  scenarios. 

## Integrating with the notifications API in Microsoft Graph

You can integrate your apps with Microsoft Graph notifications with a few simple steps - onboard your app via Windows Dev Center, use the [Create notification](/graph/api/projectrome-notification-post?view=graph-rest-beta) method to publish notifications, and use the Project Rome SDK to receive and manage notifications on your app clients.  

To learn more about how to publish user notifications via Microsoft Graph, see the [notifications API reference](/graph/api/resources/notifications-api-overview?view=graph-rest-beta).
 
To learn more about receiving and managing notifications by integrating with the Project Rome SDK, see the [Project Rome SDK documentation](https://docs.microsoft.com/en-us/windows/project-rome/) 

## See also

- [Cross-device experiences in Microsoft Graph](cross-device-concept-overview.md)
- [Project Rome Dev Center](https://aka.ms/projectrome)

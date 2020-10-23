---
title: "Use the Microsoft Graph API to work with Project Rome "
description: "Project Rome is a Microsoft initiative to build a platform that enables app developers to build great cross-device experiences. Project Rome enables different capabilities that connect different services and client endpoints when the user signs in with the same Microsoft account or work or school account. This allows you to implement cross-device and cross-platform experiences that are centered around user tasks rather than devices. "
localization_priority: Normal
doc_type: conceptualPageType
ms.prod: ""
author: "ailae"
---

# Use the Microsoft Graph API to work with Project Rome

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[Project Rome](https://developer.microsoft.com/en-us/windows/project-rome) is a Microsoft initiative to build a platform that enables app developers to build great cross-device experiences. Project Rome enables different capabilities that connect different services and client endpoints when the user signs in with the same Microsoft account or work or school account. This allows you to implement cross-device and cross-platform experiences that are centered around user tasks rather than devices.

Three key Project Rome capabilities are exposed via Microsoft Graph to help you enable great cross-device experiences: activities, devices, and notifications.

## Activities

Activities in Microsoft Graph enable you to drive user engagement with your apps across devices and platforms. An activity is the unit of user engagement, and consists of three components:

- A deep link
- A visual representation
- Content metadata that describes the activity, using the [https://schema.org/](https://schema.org/) shared vocabulary

When a session is created by an application, a history item is added to the activity to reflect the period of user engagement. Each time a user reengages with an activity, a new history item is added to the activity to accrue user engagement.

When an application publishes user activity objects, the object will show up in some of the new UI surfaces in Windows; for example, Cortana Notifications and Timeline. You can specify both rich metadata (to allow activities to be presented in just the right context) and rich visuals (using [Adaptive Card](https://adaptivecards.io/) markup) in your activity objects.

You can use the following Microsoft Graph APIs to create and retrieve user activities:

- [Create or replace activity](../api/projectrome-put-activity.md)
- [Get activities](../api/projectrome-get-activities.md)
- [Get recent activities](../api/projectrome-get-recent-activities.md)
- [Delete an activity](../api/projectrome-delete-activity.md)
- [Create or replace a history item](../api/projectrome-put-historyitem.md)
- [Delete a history item](../api/projectrome-delete-historyitem.md)

## Devices

You can use Project Rome APIs in Microsoft Graph to:

- Discover and connect to user's devices
- Remotely launch apps on those devices
- Send messages to your apps on those devices

With these APIs, you can build apps that create rich experiences that transcend a single device. For example, you can extend your app to launch on a bigger screen. Or you can create a companion experience for an app on another of the user's devices.

You can use the following Microsoft Graph APIs to communicate with other Windows devices:

- [List the user's devices](../api/user-list-devices.md)
- [Send a command to a device](../api/send-device-command.md)
- [Get command status](../api/get-device-command-status.md)

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.


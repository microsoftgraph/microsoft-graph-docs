---
title: "Use the Microsoft Graph API to get change notifications"
description: "The Microsoft Graph REST API uses a webhook mechanism to deliver change notifications to clients. A client is a web service that configures its own URL to receive notifications. Client apps use notifications to update their state upon changes. For more details, including how to subscribe to and handle incoming notifications, see Set up notifications for changes in user data."
localization_priority: Normal
author: "davidmu1"
doc_type: conceptualPageType
ms.prod: ""
---

# Use the Microsoft Graph API to get change notifications

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Microsoft Graph REST API uses a webhook mechanism to deliver change notifications to clients. A client is a web service that configures its own URL to receive notifications. Client apps use notifications to update their state upon changes. For more details, including how to subscribe to and handle incoming notifications, see [Set up notifications for changes in user data](/graph/webhooks).

Using the Microsoft Graph API, an app can subscribe to changes on the following resources:

| **Resource** | **Supported resource paths** | **Resource data can be included in notifications**                  |
|:----------------|:------------|:-----------------------------------------|
| Outlook [message][] | Changes to all messages in a user's mailbox: <br>`/users/{id}/messages`<br>Changes to messages in a user's Inbox:<br>`/users/{id}/mailFolders('inbox')/messages` | No |
| Outlook [event][] | Changes to all events in a user's mailbox:<br>`/users/{id}/events` | No |
| Outlook personal [contact][] | Changes to all personal contacts in a user's mailbox:<br>`/users/{id}/contacts` | No |
| [user][] | Changes to all users:<br>`/users` <br>Changes to a specific user:<br>`/users/{id}`| No |
| [group][] | Changes to all groups:<br>`/groups` <br>Changes to a specific group:<br>`/groups/{id}`<br>Changes to owners of a specific group:<br>`/groups/{id}/owners`<br>Changes to members of a specific group:<br>`/groups/{id}/members` | No |
| Microsoft 365 group [conversation][] | Changes to a group's conversations:<br>`groups/{id}/conversations` | No |
| [driveItem][] on OneDrive (personal) | Changes to content within the hierarchy of _any folder_:<br>`/users/{id}/drive/root` | No |
| [driveItem][] on OneDrive for Business | Changes to content within the hierarchy of the _root folder_:<br>`/drives/{id}/root`<br> `/users/{id}/drive/root` | No |
| [list][] under a SharePoint [site][] | `/sites/{id}/lists/{id}` | No |
| Security [alert][] | Changes to a specific alert:<br>`/security/alerts/{id}` <br>Changes to filtered alerts:<br> `/security/alerts/?$filter`| No |
| Teams [callRecord][] | Changes to _all_ call records: `/communications/callRecords` | No |
| Teams [chatmessage][] | Changes to chat messages in all channels in all teams:<br>`/teams/getAllMessages` <br>Changes to chat messages in a specific channel:<br>`/teams/{id}/channels/{id}/messages`<br>Changes to chat messages in all chats:<br>`/chats/getAllMessages` <br>Changes to chat messages in a specific chat:<br>`/chats/{id}/messages` | Yes |
| Teams [presence][] | Changes to a single user's presence: `/communications/presences/{id}` <br> Changes to multiple user presences:<br> `/communications/presences?$filter=id in ({id},{id}...)` | Yes |

> **Note**: Any resource path that begins with `/users/{id}` can also accept `/me` to reference the signed-in user.

## Permissions

In general, subscription operations require read permission to the resource. For example, to get notifications for messages, your app needs the `Mail.Read` permission. The [create subscription](../api/subscription-post-subscriptions.md) article lists permissions needed for each resource type. The following table lists the types of permissions your app can request to use webhooks for specific resource types.

| Permission type                        | Supported resource types                                                      |
| :------------------------------------- | :------------------------------------------------------------------------------------ |
| Delegated - work or school account     | [alert][], [contact][], [conversation][], [driveItem][], [list][], [event][], [group][], [message][], [user][], [presence][], [chatMessage][] (preview) |
| Delegated - personal Microsoft account | [contact][], [driveItem][], [list][], [event][], [message][]                                        |
| Application                            | [alert][], [contact][], [driveItem][], [list][], [event][], [group][], [message][], [user][], [callRecord][], [chatMessage][]|

## See also

- [Subscription resource type](subscription.md)
- [List subscriptions](../api/subscription-list.md)
- [Get subscription](../api/subscription-get.md)
- [Create subscription](../api/subscription-post-subscriptions.md)
- [Update subscription](../api/subscription-update.md)
- [Delete subscription](../api/subscription-delete.md)

[chatMessage]: ./chatmessage.md
[contact]: ./contact.md
[conversation]: ./conversation.md
[driveItem]: ./driveitem.md
[list]: ./list.md
[site]: ./site.md
[event]: ./event.md
[group]: ./group.md
[message]: ./message.md
[user]: ./user.md
[callRecord]: ./callrecords-callrecord.md
[alert]: ./alert.md
[presence]: ./presence.md



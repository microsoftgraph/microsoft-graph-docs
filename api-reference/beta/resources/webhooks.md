---
title: "Use the Microsoft Graph API to get change notifications"
description: "The Microsoft Graph REST API uses a webhook mechanism to deliver change notifications to clients. A client is a web service that configures its own URL to receive notifications. Client apps use notifications to update their state upon changes. For more details, including how to subscribe to and handle incoming notifications, see Set up notifications for changes in user data."
localization_priority: Normal
author: "piotrci"
doc_type: conceptualPageType
---

# Use the Microsoft Graph API to get change notifications

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Microsoft Graph REST API uses a webhook mechanism to deliver change notifications to clients. A client is a web service that configures its own URL to receive notifications. Client apps use notifications to update their state upon changes. For more details, including how to subscribe to and handle incoming notifications, see [Set up notifications for changes in user data](/graph/webhooks).

Using the Microsoft Graph API, an app can subscribe to changes on the following resources:

- Outlook [message][]
- Outlook [event][]
- Outlook personal [contact][]
- [user][]
- [group][]
- Office 365 group [conversation][]
- Content within the hierarchy of _any folder_ [driveItem][] on a user's personal OneDrive
- Content within the hierarchy of the _root folder_ [driveItem][] on OneDrive for Business
- Security [alert][]

## Permissions

In general, subscription operations require read permission to the resource. For example, to get notifications for messages, your app needs the `Mail.Read` permission. The [create subscription](../api/subscription-post-subscriptions.md) article lists permissions needed for each resource type. The following table lists the types of permissions your app can request to use webhooks for specific resource types.

| Permission type                        | Supported resource types                                                      |
| :------------------------------------- | :------------------------------------------------------------------------------------ |
| Delegated - work or school account     | [alert][], [contact][], [conversation][], [driveItem][], [event][], [group][], [message][], [user][]|
| Delegated - personal Microsoft account | [contact][], [driveItem][], [event][], [message][]                                        |
| Application                            | [alert][], [contact][], [driveItem][], [event][], [group][], [message][], [user][]|

## See also

- [Subscription resource type](subscription.md)
- [List subscriptions](../api/subscription-list.md)
- [Get subscription](../api/subscription-get.md)
- [Create subscription](../api/subscription-post-subscriptions.md)
- [Update subscription](../api/subscription-update.md)
- [Delete subscription](../api/subscription-delete.md)

[contact]: ./contact.md
[conversation]: ./conversation.md
[driveItem]: ./driveitem.md
[event]: ./event.md
[group]: ./group.md
[message]: ./message.md
[user]: ./user.md
[alert]: ./alert.md
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/webhooks.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->

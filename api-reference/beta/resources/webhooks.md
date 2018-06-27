# Use the Microsoft Graph API to get change notifications

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The Microsoft Graph REST API uses a webhook mechanism to deliver notifications to clients. A client is a web service that configures its own URL to receive notifications. Client apps use notifications to update their state upon changes. For more details, including how to subscribe to and handle incoming notifications, see [Set up notifications for changes in user data](../../../concepts/webhooks.md).

Using the Microsoft Graph API, an app can subscribe to changes on the following resources:

- Messages
- Events
- Contacts
- Users
- Groups
- Group conversations
- Content shared on OneDrive, including drives associated with SharePoint sites
- Users' personal OneDrive folders

## Permissions

In general, subscription operations require read permission to the resource. For example, to get notifications for messages, your app needs the `Mail.Read` permission. The [create subscription](../api/subscription_post_subscriptions.md) article lists permissions needed for each resource type. The following table lists the types of permissions your app can request to use webhooks for specific resource types.

| Permission type                        | Supported resource types in beta                                                      |
| :------------------------------------- | :------------------------------------------------------------------------------------ |
| Delegated - work or school account     | [contact][], [conversation][], [drive][], [event][], [group][], [message][], [user][] |
| Delegated - personal Microsoft account | [contact][], [drive][], [event][], [message][]                                        |
| Application                            | [contact][], [conversation][], [drive][], [event][], [group][], [message][], [user][] |

## See also

- [Subscription resource type](subscription.md)
- [List subscriptions](../api/subscription_list.md)
- [Get subscription](../api/subscription_get.md)
- [Create subscription](../api/subscription_post_subscriptions.md)
- [Update subscription](../api/subscription_update.md)
- [Delete subscription](../api/subscription_delete.md)

[contact]: ./contact.md
[conversation]: ./conversation.md
[drive]: ./drive.md
[event]: ./event.md
[group]: ./group.md
[message]: ./message.md
[user]: ./user.md

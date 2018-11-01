---
apiDocType: conceptualPageType
---
# Use the Microsoft Graph API to get change notifications

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
- Security alerts

## Permissions

In general, subscription operations require read permission to the resource. For example, to get notifications for messages, your app needs the `Mail.Read` permission. The [create subscription](../api/subscription_post_subscriptions.md) article lists permissions needed for each resource type. The following table lists the types of permissions your app can request to use webhooks for specific resource types.

| Permission type                        | Supported resource types in v1.0                                 |
| :------------------------------------- | :--------------------------------------------------------------- |
| Delegated - work or school account     | [contact][], [conversation][], [drive][], [event][], [message][], [alert][] |
| Delegated - personal Microsoft account | None                                                             |
| Application                            | [contact][], [conversation][], [event][], [message][], [alert][]           |

## See also

- [Subscription resource type](./subscription.md)
- [Get subscription](../api/subscription_get.md)
- [Create subscription](../api/subscription_post_subscriptions.md)
- [Update subscription](../api/subscription_update.md)
- [Delete subscription](../api/subscription_delete.md)

[contact]: ./contact.md
[conversation]: ./conversation.md
[drive]: ./drive.md
[event]: ./event.md
[message]: ./message.md
[alert]: ./alert.md
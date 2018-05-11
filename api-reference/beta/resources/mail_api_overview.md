# Use the Outlook mail REST API

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Microsoft Graph lets your app get authorized access to a user's Outlook mail data in a personal or organization account. 
With the [appropriate delegated or application permissions](../../../concepts/permissions_reference.md), your app can access the mail data of 
the signed-in user or any user in a tenant. The mail data can be in the cloud on Exchange Online as part of Office 365, or on 
Exchange on-premises in a [hybrid deployment](../../../concepts/hybrid_rest_support.md).

## Using the mail REST API
Mail API requests are performed on behalf of a [user](../resources/user.md) which can be identified by the user's **id** property (a unique GUID), email address, 
or the `me` shortcut alias for the signed-in user.

Email messages are represented by the [message](../resources/message.md) resource and organized in a [mailFolder](../resources/mailfolder.md).
Messages and mail folders are identified by their **id** property, obtainable from `GET` operations. 

>**Note:** In general, do not assume that **message** and **mailfolder** IDs are unique and immutable within a mailbox. They might change after certain 
actions such as copy, move, or send. 

Message bodies can be in HTML or text format.

You can use well-known folder names such as `Inbox`, `Drafts`, `SentItems`, or `DeletedItems` to identify certain mail folders that exist by default for all users.
For example, you can get messages in the Outlook **Sent Items** folder of the signed-in user, without first getting the folder ID:
```
GET /me/mailFolders('SentItems')/messages?$select=sender,subject
```

## Common use cases 

The **message** resource exposes properties such as **categories**, **conversationId**, **flag**, and **importance** that correspond to features 
available in the UI, allowing apps to automate or integrate with the built-in Outlook user experience. 

The Microsoft Graph API also provides methods and actions that support common use cases of messages.

| Use cases		   | REST resources	| See also |
|:---------------|:--------|:----------|
| **User-centric actions** | | |
| Draft, read, reply, forward, send, update, or delete messages | [message](../resources/message.md) | [Methods of message](../resources/message.md#methods) |
| Delegate another user to send messages on behalf of the mailbox owner | [message](../resources/message.md) | Set the **from** and **sender** properties in a [message](../resources/message.md) |
| Let user view more important messages first | [inferenceClassificationOverride](../resources/inferenceClassificationOverride.md) | [Focused Inbox](../resources/manage_focused_inbox.md) |
| Add, get, or delete attachments of a message | [attachment](../resources/attachment.md), <br> [fileAttachment](../resources/fileattachment.md), <br> [itemAttachment](../resources/itemattachment.md), <br> [referenceAttachment](../resources/referenceattachment.md), <br> [message](../resources/message.md) | [Methods of attachment](../resources/attachment.md#methods) |
| Get language and time zone choices for a user | [localeInfo](localeinfo.md), <br> [timeZoneInformation](timezoneinformation.md) | [supportedLanguages](../api/outlookuser_supportedlanguages.md), <br> [supportedTimeZones](../api/outlookuser_supportedtimezones.md) |
| Get or update a user's automatic reply, locale, time zone, or working hours | [mailboxSettings](../resources/mailboxsettings.md), <br> [automaticRepliesSetting](../resources/automaticrepliessetting.md), <br> [localeInfo](../resources/localeinfo.md), <br> [workingHours](../resources/workinghours.md) | [Get user's mailbox settings](../api/user_get_mailboxsettings.md), <br> [Update user's mailbox settings](../api/user_update_mailboxsettings.md) |
| Get MailTips of other recipients' special status, such as out-of-office (preview) | [user (preview)](../resources/user.md), <br> [mailTips (preview)](../resources/mailtips.md) | [Get MailTips](../api/user_getmailtips.md) |
| Alert user if mentioned in other messages (preview) | [mention (preview)](../resources/mention.md) | [Get details of @-mentions in a message](../api/message_get.md#request-2) |
| Unsubscribe user from an email distribution list (preview) | [message (preview)](../resources/message.md) | [Unsubscribe](../api/message_unsubscribe.md) |
| **Mail and folder management** | | |
| Organize messages in a mail folder hierarchy | [mailFolder](../resources/mailfolder.md)  | [Methods of mailFolder](../resources/mailfolder.md#methods) |
| Categorize messages | [outlookCategory (preview)](../resources/outlookcategory.md) | [Methods of outlookCategory](../resources/outlookcategory.md#methods) |
| Use Inbox rules to automate actions such as forwarding specific incoming messages | [messageRule (preview)](../resources/messagerule.md) | [Methods of messageRule](../resources/messagerule.md#methods) |
| Get Internet message headers of a message | [message (preview)](../resources/message.md) | [Get the **internetMessageHeaders** property of a message](../api/message_get.md#request-4). |
| Search and filter messages | [message](../resources/message.md) | [Query parameters](../../../concepts/query_parameters.md)  |
| Get notified of changes to messages in a folder | [subscription](../resources/subscription.md) | [Working with webhooks in Microsoft Graph](../resources/webhooks.md) |
| Synchronize messages or mail folder hierarchy | [message](../resources/message.md) | [Get incremental changes to messages in a folder](../../../concepts/delta_query_messages.md) |
| **App development** | | |
| Add custom app data to a message by using extensions | [openTypeExtension](../resources/opentypeextension.md), <br>[schemaExtension](../resources/schemaextension.md) | [Add custom data to resources using extensions](../../../concepts/extensibility_overview.md) |
| Access custom data for under-exposed Outlook MAPI properties | [singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md), <br> [multiValueLegacyExtendedProperty](../resources/multivaluelegacyextendedproperty.md) | [Outlook extended properties overview](../resources/extended-properties-overview.md) |

## Next steps
The mail API can open up new ways for you to engage with users: 

- [Outlook mail API overview](../../../concepts/outlook-mail-concept-overview.md)
- Drill down on the [methods](../resources/message.md#methods), [properties](../resources/message.md#properties), and [relationships](../resources/message.md#relationships) 
of the [message](../resources/message.md) and [mailFolder](../resources/mailfolder.md) resources.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer).

Need more ideas? See [how some of our partners are using Microsoft Graph](https://developer.microsoft.com/en-us/graph/graph/examples#partners).



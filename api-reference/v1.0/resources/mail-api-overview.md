---
title: "Use the Outlook mail REST API"
description: "Microsoft Graph lets your app get authorized access to a user's Outlook mail data in a personal or organization account."
localization_priority: Priority
author: "angelgolfer-ms"
ms.prod: "outlook"
doc_type: conceptualPageType
---

# Use the Outlook mail REST API

Microsoft Graph lets your app get authorized access to a user's Outlook mail data in a personal or organization account.
With the [appropriate delegated or application permissions](/graph/permissions-reference), your app can access the mail data of
the signed-in user or any user in a tenant. 

[!INCLUDE [outlook-mailbox-type-support](../../includes/outlook-mailbox-type-support.md)]

## Using the mail REST API

Mail API requests are performed on behalf of a [user](../resources/user.md) which can be identified by the user's **id** property (a unique GUID), email address,
or the `me` shortcut alias for the signed-in user.

Email messages are represented by the [message](../resources/message.md) resource and organized in a [mailFolder](../resources/mailfolder.md).
Messages and mail folders are identified by their **id** property, obtainable from `GET` operations.

>[!IMPORTANT] 
> In general, do not assume that **message** and **mailfolder** IDs are unique and always remain the same within a mailbox. They might change after certain
actions such as copy or move. You can choose to use [immutable IDs](/graph/outlook-immutable-id) to retain the same ID as long as the message remains in the same mailbox, _with the exception of sending a draft message, and a few other scenarios_. See [lifetime of immutable IDs](/graph/outlook-immutable-id#lifetime-of-immutable-ids) for details.

Message bodies can be in HTML or text format.

You can use well-known folder names such as `Inbox`, `Drafts`, `SentItems`, or `DeletedItems` to identify certain mail folders that exist by default for all users. For a list of supported well-known folder names, see [mailFolder resource type](../resources/mailfolder.md).

For example, you can get messages in the Outlook **Sent Items** folder of the signed-in user, without first getting the folder ID:

```http
GET /me/mailFolders('SentItems')/messages?$select=sender,subject
```

## Common use cases

The **message** resource exposes properties such as **categories**, **conversationId**, **flag**, and **importance** that correspond to features
available in the UI, allowing apps to automate or integrate with the built-in Outlook user experience.

The Microsoft Graph API also provides methods and actions that support common use cases of messages.

| Use cases | REST resources | See also |
|:----------|:---------------|:---------|
| **User-centric actions** | | |
| Draft, read, reply, forward, send, update, or delete messages | [message](../resources/message.md) | [Methods of message](../resources/message.md#methods) |
| Delegate another user to send messages on behalf of the mailbox owner | [message](../resources/message.md) | Setting the **from** and **sender** properties in a [message](../resources/message.md) |
| Let user view more important messages first | [inferenceClassificationOverride](../resources/inferenceclassificationoverride.md) | [Focused Inbox](../resources/manage-focused-inbox.md) |
| Query for messages and get them in a search folder  | [mailSearchFolder](../resources/mailsearchfolder.md) | [Methods of mailSearchFolder](../resources/mailsearchfolder.md#methods) |
| Get the MIME content of a message or message attachment | [message](../resources/message.md) | [Get MIME content](/graph/outlook-get-mime-message) |
| Add, get, or delete attachments of a message | [attachment](../resources/attachment.md), <br> [fileAttachment](../resources/fileattachment.md), <br> [itemAttachment](../resources/itemattachment.md), <br> [referenceAttachment](../resources/referenceattachment.md), <br> [message](../resources/message.md) | [Methods of attachment](../resources/attachment.md#methods) |
| Get language and time zone choices for a user | [localeInfo](localeinfo.md), <br> [timeZoneInformation](timezoneinformation.md) | [supportedLanguages](../api/outlookuser-supportedlanguages.md), <br> [supportedTimeZones](../api/outlookuser-supportedtimezones.md) |
| Get or update a user's automatic reply, locale, time zone, or working hours | [mailboxSettings](../resources/mailboxsettings.md), <br> [automaticRepliesSetting](../resources/automaticrepliessetting.md), <br> [localeInfo](../resources/localeinfo.md), <br> [workingHours](../resources/workinghours.md) | [Get user's mailbox settings](../api/user-get-mailboxsettings.md), <br> [Update user's mailbox settings](../api/user-update-mailboxsettings.md) |
| Get MailTips of other recipients' special status, such as out-of-office | [user](../resources/user.md), <br> [mailTips](../resources/mailtips.md) | [Get MailTips](../api/user-getmailtips.md) |
| **Mail and folder management** | | |
| Organize messages in a mail folder hierarchy | [mailFolder](../resources/mailfolder.md)  | [Methods of mailFolder](../resources/mailfolder.md#methods) |
| Categorize messages | [outlookCategory](../resources/outlookcategory.md) | [Methods of outlookCategory](../resources/outlookcategory.md#methods) |
| Use Inbox rules to automate actions such as forwarding specific incoming messages | [messageRule](../resources/messagerule.md) | [Methods of messageRule](../resources/messagerule.md#methods) |
| Get Internet message headers of a message | [message](../resources/message.md) | [Get the **internetMessageHeaders** property of a message](../api/message-get.md#example-2). |
| Search and filter messages | [message](../resources/message.md) | [Query parameters](/graph/query-parameters)  |
| Get notified of changes to messages in a folder | [subscription](../resources/subscription.md) | [Working with webhooks in Microsoft Graph](../resources/webhooks.md) |
| Synchronize messages or mail folder hierarchy | [message](../resources/message.md) | [Get incremental changes to messages in a folder](/graph/delta-query-messages) |
| **App development** | | |
| Add custom app data as Internet message headers of a message | [message](../resources/message.md) | Add custom data to the **internetMessageHeaders** property of the message. |
| Add custom app data to a message by using extensions | [openTypeExtension](../resources/opentypeextension.md), <br>[schemaExtension](../resources/schemaextension.md) | [Add custom data to resources using extensions](/graph/extensibility-overview) |
| Access custom data for under-exposed Outlook MAPI properties | [singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md), <br> [multiValueLegacyExtendedProperty](../resources/multivaluelegacyextendedproperty.md) | [Outlook extended properties overview](../resources/extended-properties-overview.md) |

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.

## Next steps

The mail API can open up new ways for you to engage with users:

- [Outlook mail API overview](/graph/outlook-mail-concept-overview)
- Drill down on the [methods](../resources/message.md#methods), [properties](../resources/message.md#properties), and [relationships](../resources/message.md#relationships) of the [message](../resources/message.md) and [mailFolder](../resources/mailfolder.md) resources.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).

Need more ideas? See [how some of our partners are using Microsoft Graph](https://developer.microsoft.com/graph/graph/examples#partners).


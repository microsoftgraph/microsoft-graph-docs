---
title: "mailFolder resource type"
description: "A mail folder in a user's mailbox, such as Inbox and Drafts. Mail folders can contain messages, other Outlook items, and child mail folders."
localization_priority: Normal
author: "svpsiva"
ms.prod: "outlook"
doc_type: resourcePageType
---

# mailFolder resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A mail folder in a user's mailbox, such as Inbox and Drafts. Mail folders can contain messages, other Outlook items, and child mail folders.

This resource supports using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates,
by providing a [delta](../api/mailfolder-delta.md) function.

**Well-known folder names**

Outlook creates certain folders for users by default. Instead of using the corresponding folder **id** value, for convenience, you can use
the well-known folder names from the table below when accessing these folders. For example, you can get the Drafts folder using its well-known name with the following query.

<!-- { "blockType": "ignored" } -->
```http
GET /me/mailFolders/drafts
```

Well-known names work regardless of the locale of the user's mailbox, so the above query will always return the user's Drafts folder regardless of how it is named.

| Well-known folder name | Description |
|:-----------------------|:------------|
| archive | The archive folder messages are sent to when using the One_Click Archive feature in Outlook clients that support it. **Note:** this is not the same as the Archive Mailbox feature of Exchange online. |
| clutter | The clutter folder low-priority messages are moved to when using the Clutter feature. |
| conflicts | The folder that contains conflicting items in the mailbox. |
| conversationhistory | The folder where Skype saves IM conversations (if Skype is configured to do so). |
| deleteditems | The folder items are moved to when they are deleted. |
| drafts | The folder that contains unsent messages. |
| inbox | The inbox folder. |
| junkemail | The junk email folder. |
| localfailures | The folder that contains items that exist on the local client but could not be uploaded to the server. |
| msgfolderroot | The "Top of Information Store" folder. This folder is the parent folder for folders that are displayed in normal mail clients, such as the inbox. |
| outbox | The outbox folder. |
| recoverableitemsdeletions | The folder that contains soft-deleted items: deleted either from the Deleted Items folder, or by pressing shift+delete in Outlook. This folder is not visible in any Outlook email client, but end users can interact with it through the **Recover Deleted Items from Server** feature in Outlook or Outlook on the web. |
| scheduled | The folder that contains messages that are scheduled to reappear in the inbox using the Schedule feature in Outlook for iOS. |
| searchfolders | The parent folder for all search folders defined in the user's mailbox. |
| sentitems | The sent items folder. |
| serverfailures | The folder that contains items that exist on the server but could not be synchronized to the local client. |
| syncissues | The folder that contains synchronization logs created by Outlook. |

## Methods

| Method | Return Type | Description |
|:-------|:------------|:------------|
|[Get mailFolder](../api/mailfolder-get.md) | [mailFolder](mailfolder.md) |Read properties and relationships of mailFolder object.|
|[Create MailFolder](../api/mailfolder-post-childfolders.md) |[mailFolder](mailfolder.md)| Create a new mailFolder under the current one by posting to the childFolders collection.|
|[List childFolders](../api/mailfolder-list-childfolders.md) |[mailFolder](mailfolder.md) collection| Get the folder collection under the specified folder. You can use the `.../me/MailFolders` shortcut to get the top-level folder collection and navigate to another folder.|
|[Create Message](../api/mailfolder-post-messages.md) |[message](message.md)| Create a new message in the current mailFolder by posting to the messages collection.|
|[List messages](../api/mailfolder-list-messages.md) |[message](message.md) collection| Get all the messages in the signed-in user's mailbox, or those messages in a specified folder in the mailbox.|
|[Update](../api/mailfolder-update.md) | [mailFolder](mailfolder.md)|Update the specified mailFolder object. |
|[Delete](../api/mailfolder-delete.md) | None |Delete the specified mailFolder object. |
|[copy](../api/mailfolder-copy.md)|[mailFolder](mailfolder.md)|Copy a mailFolder and its contents to another mailFolder.|
|[delta](../api/mailfolder-delta.md)|[mailFolder](mailfolder.md) collection|Get a set of mail folders that have been added, deleted, or removed from the user's mailbox.|
|[move](../api/mailfolder-move.md)|[mailFolder](mailfolder.md)|Move a mailFolder and its contents to another mailFolder.|
|**Extended properties**| | |
|[Create single-value extended property](../api/singlevaluelegacyextendedproperty-post-singlevalueextendedproperties.md) |[mailFolder](mailfolder.md)  |Create one or more single-value extended properties in a new or existing mailFolder.   |
|[Get mailFolder with single-value extended property](../api/singlevaluelegacyextendedproperty-get.md)  | [mailFolder](mailfolder.md) | Get mailFolders that contain a single-value extended property by using `$expand` or `$filter`. |
|[Create multi-value extended property](../api/multivaluelegacyextendedproperty-post-multivalueextendedproperties.md) | [mailFolder](mailfolder.md) | Create one or more multi-value extended properties in a new or existing mailFolder.  |
|[Get mailFolder with multi-value extended property](../api/multivaluelegacyextendedproperty-get.md)  | [mailFolder](mailfolder.md) | Get a mailFolder that contains a multi-value extended property by using `$expand`. |

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
|childFolderCount|Int32|The number of immediate child mailFolders in the current mailFolder.|
|displayName|String|The mailFolder's display name.|
|id|String|The mailFolder's unique identifier.|
|parentFolderId|String|The unique identifier for the mailFolder's parent mailFolder.|
|totalItemCount|Int32|The number of items in the mailFolder.|
|unreadItemCount|Int32|The number of items in the mailFolder marked as unread.|
|wellKnownName|String|The well-known folder name for the folder. The possible values are listed above. This property is only set for default folders created by Outlook. For other folders, this property is **null**.|

**Access item counts efficiently**

The `TotalItemCount` and `UnreadItemCount` properties of a folder allow you to conveniently compute the number of read items in the folder.
They let you avoid queries like the following that can incur significant latency:

```http
https://outlook.office.com/api/beta/me/folders/inbox/messages?$count=true&$filter=isread%20eq%20false
```

Mail folders in Outlook can contain more than one type of items, for example, the Inbox can contain meeting request items which are distinct from mail items. `TotalItemCount` and `UnreadItemCount` include items in a mail folder irrespective of their item types.

## Relationships

| Relationship | Type | Description |
|:-------------|:-----|:------------|
|childFolders|[MailFolder](mailfolder.md) collection|The collection of child folders in the mailFolder.|
|messageRules | [messageRule](messagerule.md) collection | The collection of rules that apply to the user's Inbox folder. |
|messages|[Message](message.md) collection|The collection of messages in the mailFolder.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "childFolders",
    "messageRules",
    "messages",
    "multiValueExtendedProperties",
    "singleValueExtendedProperties"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mailFolder"
}-->

```json
{
  "childFolderCount": 1024,
  "displayName": "string",
  "id": "string (identifier)",
  "parentFolderId": "string",
  "totalItemCount": 1024,
  "unreadItemCount": 1024,
  "wellKnownName": "string",
  "childFolders": [ { "@odata.type": "microsoft.graph.mailFolder" } ],
  "messageRules": [ { "@odata.type": "microsoft.graph.messageRule" } ],
  "messages": [ { "@odata.type": "microsoft.graph.message" } ],
  "multiValueExtendedProperties": [ { "@odata.type": "microsoft.graph.multiValueLegacyExtendedProperty" }],
  "singleValueExtendedProperties": [ { "@odata.type": "microsoft.graph.singleValueLegacyExtendedProperty" }]
}
```

## See also

- [Use delta query to track changes in Microsoft Graph data](/graph/delta-query-overview)
- [Get incremental changes to messages in a folder](/graph/delta-query-messages)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "mailFolder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->



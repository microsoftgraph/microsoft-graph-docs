# mailFolder resource type

A mailFolder in a user's mailbox, such as Inbox, Drafts, and Sent Items. MailFolders can contain messages and child mailFolders.


## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get mailFolder](../api/mailfolder_get.md) | [mailFolder](mailfolder.md) |Read properties and relationships of mailFolder object.|
|[Create MailFolder](../api/mailfolder_post_childfolders.md) |[MailFolder](mailfolder.md)| Create a new mailFolder under the current one by posting to the childFolders collection.|
|[List childFolders](../api/mailfolder_list_childfolders.md) |[MailFolder](mailfolder.md) collection| Get the folder collection under the specified folder. You can use the `.../me/MailFolders` shortcut to get the top-level folder collection and navigate to another folder.|
|[Create Message](../api/mailfolder_post_messages.md) |[Message](message.md)| Create a new message in the current mailFolder by posting to the messages collection.|
|[List messages](../api/mailfolder_list_messages.md) |[Message](message.md) collection| Get all the messages in the signed-in user's mailbox, or those messages in a specified folder in the mailbox.|
|[Update](../api/mailfolder_update.md) | [mailFolder](mailfolder.md)|Update the specified mailFolder object. |
|[Delete](../api/mailfolder_delete.md) | None |Delete the specified mailFolder object. |
|[copy](../api/mailfolder_copy.md)|[MailFolder](mailfolder.md)|Copy a mailFolder and its contents to another mailFolder.|
|[move](../api/mailfolder_move.md)|[MailFolder](mailfolder.md)|Move a mailFolder and its contents to another mailFolder.|


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|childFolderCount|Int32|The number of immediate child mailFolders in the current mailFolder.|
|displayName|String|The mailFolder's display name.|
|id|String|The mailFolder's unique identifier. You can use the following well-known names to access the corresponding folder: Inbox, Drafts, SentItems, DeletedItems.|
|parentFolderId|String|The unique identifier for the mailFolder's parent mailFolder.|
|totalItemCount|Int32|The number of items in the mailFolder.|
|unreadItemCount|Int32|The number of items in the mailFolder marked as unread.|

**Access item counts efficiently**

The TotalItemCount and UnreadItemCount properties of a folder allow you to conveniently compute the number of read items in the folder.
They let you avoid queries like the following that can incur significant latency:
```
https://outlook.office.com/api/v1.0/me/folders/inbox/messages?$count=true&$filter=isread%20eq%20false
```
MailFolders in Outlook can contain more than one type of items, for example, the Inbox can contain meeting request items which are distinct from mail items. TotalItemCount and UnreadItemCount include items in a mailFolder irrespective of their item types.


## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|childFolders|[MailFolder](mailfolder.md) collection|The collection of child folders in the mailFolder.|
|messages|[Message](message.md) collection|The collection of messages in the mailFolder.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| The collection of multi-value extended properties defined for the mailFolder. Read-only. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| The collection of single-value extended properties defined for the mailFolder. Read-only. Nullable.|


## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "childFolders",
    "messages"
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
  "unreadItemCount": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "mailFolder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

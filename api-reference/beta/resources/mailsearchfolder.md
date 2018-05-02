# mailSearchFolder resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A mailSearchFolder is a virtual folder in the user's mailbox that contains all the email items matching specified search criteria. mailSearchFolder inherits from [mailFolder](mailfolder.md).

## Methods

| Method | Return Type  | Description |
|:---------------|:--------|:----------|
| [Create a search folder](../api/mailsearchfolder_post.md) | [mailSearchFolder](mailsearchfolder.md) | Create a search folder in this user's mailbox. |
| [List search folders](../api/mailfolder_list_childfolders.md) | [mailFolder](mailfolder.md) collection | List all the folders in this user's mailbox, including search folders. |
| [Get a search folder](../api/mailfolder_get.md) | [mailSearchFolder](mailsearchfolder.md) | Get the specified search folder. |
| [Update a search folder](../api/mailsearchfolder_update.md) | [mailSearchFolder](mailsearchfolder.md) | Update the specified search folder. |
| [Delete a search folder](../api/mailfolder_delete.md) | None | Delete the specified search folder. |
| [List all messages in a search folder](../api/mailfolder_list_messages.md) | [message](message.md) collection | List all the messages in the specified search folder. |

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
| isSupported | Boolean | Indicates whether a search folder is editable using REST APIs. |
| includeNestedFolders | Boolean | Indicates how the mailbox folder hierarchy should be traversed. `true` means that a deep search should be done while `false` means a shallow search should be done instead. |
| sourceFolderIDs | String collection | The mailbox folders that should be mined. |
| filterQuery | String | The OData query to filter the messages. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.mailSearchFolder"
}-->

```json
{
  "isSupported": true,
  "includeNestedFolders": true,
  "sourceFolderIDs": ["string"],
  "filterQuery": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2018-01-23 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "mailSearchFolder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

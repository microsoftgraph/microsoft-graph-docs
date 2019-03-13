---
title: "mailSearchFolder resource type"
description: "A mailSearchFolder is a virtual folder in the user's mailbox that contains all the email items matching specified search criteria. mailSearchFolder inherits from mailFolder."
localization_priority: Normal
author: "angelgolfer-ms"
ms.prod: "outlook"
doc_type: resourcePageType
---

# mailSearchFolder resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A mailSearchFolder is a virtual folder in the user's mailbox that contains all the email items matching specified search criteria. mailSearchFolder inherits from [mailFolder](mailfolder.md).

## Methods

| Method | Return Type  | Description |
|:---------------|:--------|:----------|
| [Create a search folder](../api/mailsearchfolder-post.md) | [mailSearchFolder](mailsearchfolder.md) | Create a search folder in this user's mailbox. |
| [List search folders](../api/mailfolder-list-childfolders.md) | [mailFolder](mailfolder.md) collection | List all the folders in this user's mailbox, including search folders. |
| [Get a search folder](../api/mailfolder-get.md) | [mailSearchFolder](mailsearchfolder.md) | Get the specified search folder. |
| [Update a search folder](../api/mailsearchfolder-update.md) | [mailSearchFolder](mailsearchfolder.md) | Update the specified search folder. |
| [Delete a search folder](../api/mailfolder-delete.md) | None | Delete the specified search folder. |
| [List all messages in a search folder](../api/mailfolder-list-messages.md) | [message](message.md) collection | List all the messages in the specified search folder. |

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
<!--
{
  "type": "#page.annotation",
  "description": "mailSearchFolder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/mailsearchfolder.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->

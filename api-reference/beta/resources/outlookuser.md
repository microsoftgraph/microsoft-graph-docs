# outlookUser resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents the Outlook task services available to a user.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create outlookTaskFolder](../api/outlookuser_post_taskfolders.md) |[outlookTaskFolder](outlooktaskfolder.md)| Create a task folder in the default task group (`My Tasks`) of the user's mailbox.|
|[List taskFolders](../api/outlookuser_list_taskfolders.md) |[outlookTaskFolder](outlooktaskfolder.md) collection| Get all the Outlook task folders in the user's mailbox.|
|[Create outlookTaskGroup](../api/outlookuser_post_taskgroups.md) |[outlookTaskGroup](outlooktaskgroup.md)| Create an Outlook task group in the user's mailbox.|
|[List taskGroups](../api/outlookuser_list_taskgroups.md) |[outlookTaskGroup](outlooktaskgroup.md) collection| Get all the Outlook task groups in the user's mailbox.|
|[Create outlookTask](../api/outlookuser_post_tasks.md) |[outlookTask](outlooktask.md)| Create an Outlook task in the default task group (`My Tasks`) and default task folder (`Tasks`) in the user's mailbox.|
|[List tasks](../api/outlookuser_list_tasks.md) |[outlookTask](outlooktask.md) collection| Get all the Outlook tasks in the user's mailbox.|


## Properties
None

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|taskFolders|[outlookTaskFolder](outlooktaskfolder.md) collection| The user's Outlook task folders. Read-only. Nullable.|
|taskGroups|[outlookTaskGroup](outlooktaskgroup.md) collection| The user's Outlook task groups. Read-only. Nullable.|
|tasks|[outlookTask](outlooktask.md) collection| The user's Outlook tasks. Read-only. Nullable.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "outlookUser resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
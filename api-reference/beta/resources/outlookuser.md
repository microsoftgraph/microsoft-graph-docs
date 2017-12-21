# outlookUser resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents the Outlook services available to a user.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create category](../api/outlookuser_post_mastercategories.md) | [outlookCategory](outlookcategory.md) |Create an **outlookCategory** object in the user's master list of categories.|
|[List categories](../api/outlookuser_list_mastercategories.md) | [outlookCategory](outlookcategory.md) collection |Get all the categories that have been defined for the user.|
|[Create outlookTaskFolder](../api/outlookuser_post_taskfolders.md) |[outlookTaskFolder](outlooktaskfolder.md)| Create a task folder in the default task group (`My Tasks`) of the user's mailbox.|
|[List taskFolders](../api/outlookuser_list_taskfolders.md) |[outlookTaskFolder](outlooktaskfolder.md) collection| Get all the Outlook task folders in the user's mailbox.|
|[Create outlookTaskGroup](../api/outlookuser_post_taskgroups.md) |[outlookTaskGroup](outlooktaskgroup.md)| Create an Outlook task group in the user's mailbox.|
|[List taskGroups](../api/outlookuser_list_taskgroups.md) |[outlookTaskGroup](outlooktaskgroup.md) collection| Get all the Outlook task groups in the user's mailbox.|
|[Create outlookTask](../api/outlookuser_post_tasks.md) |[outlookTask](outlooktask.md)| Create an Outlook task in the default task group (`My Tasks`) and default task folder (`Tasks`) in the user's mailbox.|
|[List tasks](../api/outlookuser_list_tasks.md) |[outlookTask](outlooktask.md) collection| Get all the Outlook tasks in the user's mailbox.|
|[supportedLanguages](../api/outlookuser_supportedlanguages.md) | [localeInfo](localeinfo.md) collection | Get the list of locales and languages that is supported for the user, as configured on the user's mailbox server. |
|[supportedTimeZones](../api/outlookuser_supportedtimezones.md) | [timeZoneInformation](timezoneinformation.md) collection | Get the list of time zones that is supported for the user, as configured on the user's mailbox server. |


## Properties
None

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|masterCategories|[outlookCategory](../resources/outlookCategory.md) collection| A list of categories defined for the user. | 
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
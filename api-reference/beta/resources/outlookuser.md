---
title: "outlookUser resource type"
description: "Represents the Outlook services available to a user."
author: "svpsiva"
localization_priority: Normal
ms.prod: "outlook"
doc_type: resourcePageType
---

# outlookUser resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [outlooktask-deprecate-sharedfeature](../../includes/outlooktask-deprecate-sharedfeature.md)]

Represents the Outlook services available to a user.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create category](../api/outlookuser-post-mastercategories.md) | [outlookCategory](outlookcategory.md) |Create an **outlookCategory** object in the user's master list of categories.|
|[List categories](../api/outlookuser-list-mastercategories.md) | [outlookCategory](outlookcategory.md) collection |Get all the categories that have been defined for the user.|
|[supportedLanguages](../api/outlookuser-supportedlanguages.md) | [localeInfo](localeinfo.md) collection | Get the list of locales and languages that is supported for the user, as configured on the user's mailbox server. |
|[supportedTimeZones](../api/outlookuser-supportedtimezones.md) | [timeZoneInformation](timezoneinformation.md) collection | Get the list of time zones that is supported for the user, as configured on the user's mailbox server. |
|[Create outlookTaskFolder](../api/outlookuser-post-taskfolders.md) (deprecated) |[outlookTaskFolder](outlooktaskfolder.md)| Create a task folder in the default task group (`My Tasks`) of the user's mailbox.|
|[List taskFolders](../api/outlookuser-list-taskfolders.md) (deprecated) |[outlookTaskFolder](outlooktaskfolder.md) collection| Get all the Outlook task folders in the user's mailbox.|
|[Create outlookTaskGroup](../api/outlookuser-post-taskgroups.md) (deprecated) |[outlookTaskGroup](outlooktaskgroup.md)| Create an Outlook task group in the user's mailbox.|
|[List taskGroups](../api/outlookuser-list-taskgroups.md) (deprecated) |[outlookTaskGroup](outlooktaskgroup.md) collection| Get all the Outlook task groups in the user's mailbox.|
|[Create outlookTask](../api/outlookuser-post-tasks.md) (deprecated) |[outlookTask](outlooktask.md)| Create an Outlook task in the default task group (`My Tasks`) and default task folder (`Tasks`) in the user's mailbox.|
|[List tasks](../api/outlookuser-list-tasks.md) (deprecated) |[outlookTask](outlooktask.md) collection| Get all the Outlook tasks in the user's mailbox.|



## Properties
None

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|masterCategories|[outlookCategory](../resources/outlookcategory.md) collection| A list of categories defined for the user. | 
|taskFolders (deprecated)|[outlookTaskFolder](outlooktaskfolder.md) collection| The user's Outlook task folders. Read-only. Nullable.|
|taskGroups (deprecated)|[outlookTaskGroup](outlooktaskgroup.md) collection| The user's Outlook task groups. Read-only. Nullable.|
|tasks (deprecated)|[outlookTask](outlooktask.md) collection| The user's Outlook tasks. Read-only. Nullable.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity",  
  "@odata.type": "microsoft.graph.outlookUser"
}-->
```json
{  
    "id": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "outlookUser resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->



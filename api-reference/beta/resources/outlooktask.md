---
title: "outlookTask resource type"
description: "An Outlook item that can track a work item. "
author: "mashriv"
localization_priority: Priority
ms.prod: "outlook"
doc_type: resourcePageType
---

# outlookTask resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [outlooktask-deprecate-allup](../../includes/outlooktask-deprecate-allup.md)]

An Outlook item that can track a work item.

You can use a task to track the start, due and actual completion dates and times, its progress or status, whether it's recurring, and requires reminding.

Date-related properties in the **outlookTask** resource include the following:

- completedDateTime
- createdDateTime
- dueDateTime
- lastModifiedDateTime
- reminderDateTime
- startDateTime

By default, the POST, GET, PATCH, and [complete](../api/outlooktask-complete.md) operations return date-related properties in their REST responses in UTC.
You can use the `Prefer: outlook.timezone` header to have all the date-related properties in the response represented in a time zone
different than UTC. The following example returns date-related properties in EST in the corresponding response:

```
Prefer: outlook.timezone="Eastern Standard Time"
```

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get outlookTask](../api/outlooktask-get.md) | [outlookTask](outlooktask.md) |Get the properties and relationships of an Outlook task in the user's mailbox.|
|[Update](../api/outlooktask-update.md) | [outlookTask](outlooktask.md)	|Change writeable properties of an Outlook task. |
|[Delete](../api/outlooktask-delete.md) | None |Delete the specified task in the user's mailbox. |
|[Complete](../api/outlooktask-complete.md)|[outlookTask](outlooktask.md) collection|Complete an Outlook task which sets the **completedDateTime** property to the current date, and **status** property to `completed`.|
|**Attachments**| | |
|[List attachments](../api/outlooktask-list-attachments.md) |[attachment](attachment.md) collection| Get all attachments on an Outlook task.|
|[Add attachment](../api/outlooktask-post-attachments.md) |[attachment](attachment.md)| Add a file, item (message, event or contact), or link to a file as an attachment to a task.|
|**Extended properties**| | |
|[Create single-value extended property](../api/singlevaluelegacyextendedproperty-post-singlevalueextendedproperties.md) |[outlookTask](outlooktask.md)  |Create one or more single-value extended properties in a new or existing Outlook task.   |
|[Get task with single-value extended property](../api/singlevaluelegacyextendedproperty-get.md)  | [outlookTask](outlooktask.md) | Get Outlook tasks that contain a single-value extended property by using `$expand` or `$filter`. |
|[Create multi-value extended property](../api/multivaluelegacyextendedproperty-post-multivalueextendedproperties.md) | [outlookTask](outlooktask.md) | Create one or more multi-value extended properties in a new or existing Outlook task.  |
|[Get task with multi-value extended property](../api/multivaluelegacyextendedproperty-get.md)  | [outlookTask](outlooktask.md) | Get an Outlook task that contains a multi-value extended property by using `$expand`. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|assignedTo|String|The name of the person who has been assigned the task in Outlook. Read-only.|
|body|[itemBody](itembody.md)|The task body that typically contains information about the task. Note that only HTML type is supported.|
|categories|String collection|The categories associated with the task. Each category corresponds to the **displayName** property of an [outlookCategory](outlookcategory.md) that the user has defined.|
|changeKey|String|The version of the task.|
|completedDateTime|[dateTimeTimeZone](datetimetimezone.md)|The date in the specified time zone that the task was finished.|
|createdDateTime|DateTimeOffset|The date and time when the task was created. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|dueDateTime|[dateTimeTimeZone](datetimetimezone.md)|The date in the specified time zone that the task is to be finished.|
|hasAttachments|Boolean|Set to true if the task has attachments.|
|id|String| Unique identifier for the task. [!INCLUDE [outlook-beta-id](../../includes/outlook-beta-id.md)] Read-only. |
|importance|string|The importance of the event. Possible values are: `low`, `normal`, `high`.|
|isReminderOn|Boolean|Set to true if an alert is set to remind the user of the task.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the task was last modified. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|owner|String|The name of the person who created the task.|
|parentFolderId|String|The unique identifier for the task's parent folder.|
|recurrence|[patternedRecurrence](patternedrecurrence.md)|The recurrence pattern for the task.|
|reminderDateTime|[dateTimeTimeZone](datetimetimezone.md)|The date and time for a reminder alert of the task to occur.|
|sensitivity|string|Indicates the level of privacy for the task. Possible values are: `normal`, `personal`, `private`, `confidential`.|
|startDateTime|[dateTimeTimeZone](datetimetimezone.md)|The date in the specified time zone when the task is to begin.|
|status|string|Indicates the state or progress of the task. Possible values are: `notStarted`, `inProgress`, `completed`, `waitingOnOthers`, `deferred`.|
|subject|String|A brief description or title of the task.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|attachments|[attachment](attachment.md) collection|The collection of [fileAttachment](fileattachment.md), [itemAttachment](itemattachment.md), and [referenceAttachment](referenceattachment.md) attachments for the task.  Read-only. Nullable.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection|The collection of multi-value extended properties defined for the task. Read-only. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection|The collection of single-value extended properties defined for the task. Read-only. Nullable.|

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "attachments",
    "singleValueExtendedProperties",
    "multiValueExtendedProperties"
  ],
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity",
  "@odata.type": "microsoft.graph.outlookTask"
}-->

```json
{
  "assignedTo": "String",
  "body": {"@odata.type": "microsoft.graph.itemBody"},
  "categories": ["String"],
  "changeKey": "String",
  "completedDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "createdDateTime": "String (timestamp)",
  "dueDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "hasAttachments": true,
  "id": "String (identifier)",
  "importance": "string",
  "isReminderOn": true,
  "lastModifiedDateTime": "String (timestamp)",
  "owner": "String",
  "parentFolderId": "String",
  "recurrence": {"@odata.type": "microsoft.graph.patternedRecurrence"},
  "reminderDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "sensitivity": "string",
  "startDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "status": "string",
  "subject": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "outlookTask resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->



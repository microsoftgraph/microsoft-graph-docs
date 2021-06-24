---
title: "timecard resource type"
description: "A timecard entry in the schedule."
author: "akumar39"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType_
---

# timecard resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a timecard entry in the schedule.

## Methods

| Method       | Return type  |Description|
|:---------------|:--------|:----------|
|[List](../api/timecard-list.md) | [timeCard](timecard.md) collection | Get the list of **timecard** objects in this schedule.|
|[Create](../api/timecard-post.md) | [timeCard](timecard.md) | Create a new **timecard** object.|
|[Get](../api/timecard-get.md) | [timeCard](timecard.md) | Get a **timecard** object by ID.|
|[Replace](../api/timecard-replace.md) | None | Replace a **timecard** object.|
|[Delete](../api/timecard-delete.md) | None | Delete a **timecard** object from the schedule.|
|[clockIn](../api/timecard-clockin.md) | [timeCard](timecard.md) | Clock in to start a **timecard**.|
|[clockOut](../api/timecard-clockout.md) | None | Clock out to end an open **timecard**.|
|[startBreak](../api/timecard-startbreak.md) | None | Start a **timeCardBreak** in a specific **timecard**.|
|[endBreak](../api/timecard-endbreak.md) | None | End the open **timeCardBreak** in a specific **timecard**.|
|[confirmTimeCard](../api/timecard-confirm.md) | None | Confirm a **timecard** record.|

## Properties
|Property               |Type           |Description                                                                |
|-----------------------|---------------|---------------------------------------------------------------------------|
| id			        |`string`  |ID of the **timeCard**.|
| userId			        |`string` |User ID to which  the **timeCard** belongs. |
| state 		        |`timeCardState`  | The current state of the **timeCard** during its life cycle.Possible values are: `clockedIn`, `onBreak`, `clockedOut`, `unknownFutureValue`.|
| clockInEvent       |[timeCardEvent](../resources/timecardevent.md)    | The clock-in event of the **timeCard**. |
| clockOutEvent			        |[timeCardEvent](../resources/timecardevent.md)  |The clock-out event of the **timeCard**. |
| notes			        | [itemBody](itembody.md)  |Notes about the **timeCard**. |
| breaks 	|[timeCardBreak](timecardbreak.md) collection  |The list of breaks associated with the **timeCard**.|
| originalEntry| [timeCardEntry](../resources/timecardentry.md) | The original **timeCardEntry** of the **timeCard**, before user edits. |
| confirmedBy |`confirmedBy`    | Indicate if this **timeCard** entry is confirmed. Possible values are `none`, `user`, `manager`, `unknownFutureValue`.|
|createdDateTime|`Edm.dateTimeOffset`| The timestamp in which the **timeCard** was created. |
|createdBy|`IdentitySet`| Identity of the person who created the entity. |
|lastModifiedDateTime|`dateTimeOffset`| The timestamp in which the **timeCard** was last modified.|
|lastModifiedBy| `IdentitySet`| Identity of the person who last modified the entity.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.timeCard",
   "baseType":"microsoft.graph.changeTrackedEntity"
}-->

```json
{
  "userId": "string (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {"@odata.type":"microsoft.graph.identitySet"},
  "clockInEvent" : {"@odata.type":"microsoft.graph.timeCardEvent"},
  "clockOutEvent" : {"@odata.type":"microsoft.graph.timeCardEvent"},
  "notes" : {"@odata.type":"microsoft.graph.itemBody"},
  "breaks" : [{"@odata.type":"microsoft.graph.timeCardEvent"}],
  "originalEntry" : {"@odata.type":"microsoft.graph.timeCardEntry"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "timeCard resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

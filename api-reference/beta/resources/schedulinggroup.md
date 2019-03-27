---
title: "schedulingGroup resource type"
description: "A logical grouping of members in the schedule (usually by role)."
author: "nkramer"
localization_priority: Priority
ms.prod: "microsoft-teams"
---

# schedulingGroup resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A logical grouping of users in a [schedule](schedule.md) (usually by role). 

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Create schedulingGroup](../api/schedule-post-schedulinggroups.md) | [schedulingGroup](schedulinggroup.md) | Create a new `schedulingGroup`.|
|[List schedulingGroups](../api/schedule-list-schedulinggroups.md) | [schedulingGroup](schedulinggroup.md) collection | Get the list of `schedulingGroups` in a schedule.|
|[Get schedulingGroup](../api/schedulinggroup-get.md) | [schedulingGroup](schedulinggroup.md) | Get a `schedulingGroup` by ID.|
|[Replace schedulingGroup](../api/schedulinggroup-put.md) | [schedulingGroup](schedulinggroup.md) | Replace a `schedulingGroup`.|
|[Delete schedulingGroup](../api/schedulinggroup-delete.md) | None | Mark `schedulingGroup` as inactive.|

## Properties
|Name          |Type           |Description                                                                                 |
|--------------|---------------|--------------------------------------------------------------------------------------------|
| id			| `string`      |ID of the `schedulingGroup`.|
| displayName   | `string`      | The display name for the `schedulingGroup`. Required. |
| isActive 			|`bool`      | Indicates whether the `schedulingGroup` can be used when creating new entities or updating existing ones. Required. |
| userIds 		| `collection(string)`    |  The list of user IDs that are a member of the `schedulingGroup`. Required. |
| createdDateTime		|`DateTimeOffset`        |The time stamp in which this `schedulingGroup` was first created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. |
| lastModifiedDateTime		|`DateTimeOffset`        |The time stamp in which this `schedulingGroup` was last updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. |
| lastModifiedBy		|`microsoft.graph.identitySet`        |The identity that last updated this `schedulingGroup`.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.schedulingGroup"
}-->

```json
{
  "id": "TAG_f914d037-00a3-4ba4-b712-ef178cbea263",
  "createdDateTime": "2019-03-12T22:10:38.242Z",
  "lastModifiedDateTime": "2019-03-12T22:10:38.242Z",
  "displayName": "Cashiers",
  "isActive": true,
  "userIds": [
    "c5d0c76b-80c4-481c-be50-923cd8d680a1",
    "2a4296b3-a28a-44ba-bc66-0274b9b95851"
  ],
  "lastModifiedBy": {
    "application": null,
    "device": null,
    "conversation": null,
    "user": {
      "id": "366c0b19-49b1-41b5-a03f-9f3887bd0ed8",
      "displayName": "John Doe"
    }
  }
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "schedulingGroup resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/schedulinggroup.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->

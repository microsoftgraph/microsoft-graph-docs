---
author: daspek
ms.author: dspektor
ms.date: 09/14/2017
title: ItemActivityTimeSet
---
# ItemActivityTimeSet resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **ItemActivityTimeSet** resource provides information about when an [activity][activity] on an item took place.

[activity]: itemActivity.md

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "keyProperty": "id",
  "@type": "microsoft.graph.itemActivityTimeSet",
  "@type.aka": "oneDrive.times",
  "@property.aka": "observedDateTime=observedTime recordedDateTime=recordedTime"
}-->

```json
{
  "observedDateTime": "String (timestamp)",
  "recordedDateTime": "String (timestamp)"
}
```

## Properties

| Property name    | Type           | Description
|:-----------------|:---------------|:-----------------------------------------
| observedDateTime | DateTimeOffset | When the activity was observed to take place.
| recordedDateTime | DateTimeOffset | When the observation was recorded on the service.

The difference between **observed** and **recorded** times is especially important for offline collaboration scenarios.
If a user comments on a file while offline, the time that they make the comment is set as the **observedDateTime**.
At a later time when the user re-connects to the cloud and the changes get uploaded, that later time is set as the **recordedDateTime**.

## Remarks

Item activity records are currently only available on SharePoint and OneDrive for Business.

<!-- {
  "type": "#page.annotation",
  "description": "The ItemActionSet object provides information about an activity that took place on an item.",
  "keywords": "activities,activity,action",
  "section": "documentation",
  "tocPath": "Resources/ItemActionSet"
} -->

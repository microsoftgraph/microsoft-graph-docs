---
title: "plannerPlanContext resource type"
description: "The **plannerPlanContext** resource represents the relationship of a plannerPlan to a user experience outside of Planner. Plans in Planner can be surfaced in other experiences, such as Microsoft Teams, to track work in the context of that experience."
localization_priority: Normal
author: "TarkanSevilmis"
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerPlanContext resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **plannerPlanContext** resource represents the relationship of a [plannerPlan](plannerplan.md) to a user experience outside of Planner. Plans in Planner can be surfaced in other experiences, such as Microsoft Teams, to track work in the context of that experience.
The experience the **plannerPlanContext** entry reresents can be identified based on the **ownerAppId** property:
- 5e3ce6c0-2b1f-4285-8d4b-75ee78787346 : The context entry belongs to Microsoft Teams.
- 00000003-0000-0ff1-ce00-000000000000 : The context entry belongs to SharePoint.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|associationType|String|Nullable. An app-defined type of association between the [plannerPlan](plannerplan.md) and the app. The app can use this information to track different kinds of relationships to the same [plannerPlan](plannerplan.md).|
|createdDateTime|DateTimeOffset|Read-only. The date and time when the **plannerPlanContext** was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|displayNameSegments|String collection|The segments of the name of the external experience. Segments represent a hierarchical structure that allows other apps to display the relationship.|
|ownerAppId|String|Read-only. ID of the app that created the **plannerPlanContext**.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerPlanContext"
}-->

```json
{
  "associationType": "Board",
  "createdDateTime": "2015-10-14T00:57:28.4698344Z",
  "displayNameSegments": [
    "Finance Team",
    "Budget Plans"
  ],
  "ownerAppId": "5e3ce6c0-2b1f-4285-8d4b-75ee78787346"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "plannerPlanContext resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->



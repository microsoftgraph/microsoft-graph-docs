---
title: "plannerTaskCreation resource type"
description: "Contains information about the origin of the plannerTask."
author: "TarkanSevilmis"
localization_priority: Normal
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerTaskCreation resource type

Namespace: microsoft.graph

Contains information about the origin of the [plannerTask](plannerTask.md). This resource will either have all its properties set to `null`, or exactly one property will have a value that indicates that the task was created by the process described by that property. All properties `null` indicates this task was not created by any specialized process. Apps do not need to know the origin of the task to be able to work with it; however, some apps can use the additional information to provide specific experiences around these tasks. See the documentation for specific resources to learn more.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|teamsPublicationInfo|[plannerTeamsPublicationInfo](../resources/plannerteamspublicationinfo.md)|Information about the publication process that created this task. `null` value indicates that the task was not created by a publication process.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerTaskCreation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerTaskCreation",
  "teamsPublicationInfo": {
    "@odata.type": "microsoft.graph.plannerTeamsPublicationInfo"
  }
}
```


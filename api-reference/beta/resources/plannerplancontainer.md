---
title: "plannerPlanContainer resource type"
description: "Represents a container for a plannerPlan. The container is a resource that specifies authorization rules and the lifetime of the plan."
author: "TarkanSevilmis"
localization_priority: Normal
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerPlanContainer resource type

Namespace: microsoft.graph

Represents a container for a [plannerPlan](plannerPlan.md). The container is a resource that specifies authorization rules and the lifetime of the plan. This means that only the people who are authorized to work with the resource containing the plan will be able to work with the plan and the tasks within it. When the containing resource is deleted, the contained plans are also deleted. Properties of **plannerPlanContainer** cannot be changed after the plan is created.

Planner currently supports the container types listed in the following table. When creating a plan, the **containerUrl** property must be specified with the path of the resource identified in the table.

|Type|Description|Path to the resource|
|----|-----------|--------------------|
|group| Plan is contained by a group.| https://graph.microsoft.com/v1.0/groups/&lt;id&gt;|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|containerId|String|The identifier of the resource that contains the plan.|
|type|plannerContainerType| The type of the resource that contains the plan. See the previous table for supported types. Possible values are: `group`, `unknownFutureValue`.|
|url|String|The full canonical URL of the container.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerPlanContainer"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerPlanContainer",
  "url": "String",
  "containerId": "String",
  "type": "String"
}
```


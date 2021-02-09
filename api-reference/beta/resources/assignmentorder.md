---
title: "assignmentOrder resource type"
description: "Used to define the order of the attributes being collected within a user flow."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# assignmentOrder resource type

Namespace: microsoft.graph

Used to define the order of the attributes being collected within a user flow. THis determines how the attribute collection page is displayed when a user signs up via a user flow.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|order|String collection|A list of identityUserFlowAttribute IDs provided to determine the order in which attributes should be collected within a user flow.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.assignmentOrder"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.assignmentOrder",
  "order": [
    "String"
  ]
}
```

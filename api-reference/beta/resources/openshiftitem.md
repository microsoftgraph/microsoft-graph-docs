---
title: "openShiftItem resource type"
description: "Represents a single count of an open shift."
localization_priority: Normal
author: "akumar39"
ms.prod: "microsoft-teams"
doc_type: "resourcePageType"
---

# openShiftItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a single count of an [openshift](../resources/openshift.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|openSlotCount|Int32| Count of the number of slots for the given open shift.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.openShiftItem",
  "baseType": "microsoft.graph.shiftItem"
}-->

```json
{
  "openSlotCount": 1024
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "openShiftItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->



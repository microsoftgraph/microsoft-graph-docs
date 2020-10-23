---
title: "updateWindow resource type"
description: "updateWindow resource type."
localization_priority: Normal
author: "japere"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# updateWindow resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents time window during which [agents](onpremisesagent.md) can receive updates.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|updateWindowEndTime|TimeOfDay|End of a time window during which agents can receive updates|
|updateWindowStartTime|TimeOfDay|Start of a time window during which agents can receive updates|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.updateWindow",
  "baseType": null
}-->

```json
{
  "updateWindowEndTime": "String (timestamp)",
  "updateWindowStartTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "updateWindow resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->



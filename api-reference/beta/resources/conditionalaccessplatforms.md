---
title: "conditionalAccessPlatforms resource type"
description: "Platforms included in and excluded from the policy scope."
localization_priority: Normal
author: "videor"
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# conditionalAccessPlatforms resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Platforms included in and excluded from the policy scope.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|includePlatforms|conditionalAccessDevicePlatform collection| Possible values are: `android`, `iOS`, `windows`, `windowsPhone`, `macOS`, `all`, `unknownFutureValue`.|
|excludePlatforms|conditionalAccessDevicePlatform collection| Possible values are: `android`, `iOS`, `windows`, `windowsPhone`, `macOS`, `all`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.conditionalAccessPlatforms",
  "baseType": null
}-->

```json
{
  "includePlatforms": ["String"],
  "excludePlatforms": ["String"]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conditionalAccessPlatforms resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


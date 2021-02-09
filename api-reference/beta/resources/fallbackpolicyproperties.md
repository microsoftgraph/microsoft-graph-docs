---
title: "fallbackPolicyProperties resource type"
description: "Allows fallback policy to be specified for high-priority raw notifications on iOS endpoints only, with additional properties for specifying fallback wait time (delay) and corresponding visual notification content. "
localization_priority: Normal
author: "merzink"
ms.prod: "notifications"
doc_type: "resourcePageType"
---

# fallbackPolicyProperties resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Allows fallback policy to be specified for high-priority raw notifications on iOS endpoints only, with additional properties for specifying fallback wait time (delay) and corresponding visual notification content. 

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| platformTypes | String collection | Specifies the platforms that a developer wants to enable raw-to-visual toast notification fallback on. Currently, if **fallbackPolicy** is specified, **targetPolicy.platformTypes** must include `iOS` and optionally other platforms. In addition, **fallbackPolicy.endpointFallback.platformTypes** is required and the only supported platform is currently `iOS`. |
| fallbackDelayInSeconds | Int32 | This delay represents the amount of time that will pass (in seconds) before a direct toast notification will be sent as a fallback to each users� iOS device subscription that does not fetch the raw notification. The value must be between 60 and 600. |
| visualContent | [visualProperties](visualproperties.md)|The visual content of a fallback initiated, raw-to-visual user notification on iOS. |
 


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.fallbackpolicyProperties",
  "baseType": null
}-->

```json
{
  "platformTypes": ["String"],
  "fallbackDelayInSeconds": 60,
  "visualContent": {"@odata.type": "microsoft.graph.visualProperties"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "fallbackpolicyProperties resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


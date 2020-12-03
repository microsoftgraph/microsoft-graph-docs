---
title: "targetPolicyEndpoints resource type"
description: "Represents the platforms being targeted for user notifications."
localization_priority: Normal
ms.prod: "notifications"
doc_type: "resourcePageType"
author: "merzink"
---


# targetPolicyEndpoints resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the platforms that can be targeted to receive notifications sent to the user.  These include Windows, iOS, Android and Web. 


## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|platformTypes|String collection|Use to filter the notification distribution to a specific platform or platforms. Valid values are `Windows`, `iOS`, `Android` and `WebPush`. By default, all push endpoint types (Windows, iOS, Android and WebPush) are enabled. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.targetPolicyEndpoints",
  "baseType": null
}-->

```json
{
  "platformTypes": ["String"]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "targetPolicyEndpoints resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


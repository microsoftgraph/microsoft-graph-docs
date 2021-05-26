---
title: "conditionalAccessDevices resource type"
description: "Represents devices in the policy scope."
localization_priority: Normal
author: "videor"
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# conditionalAccessDevices resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents devices in the policy scope.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| includeDevices | String collection | States in the scope of the policy. `All` is the only allowed value. |
| excludeDevices | String collection | States excluded from the scope of the policy. Possible values: `Compliant`, `DomainJoined`. |
| includeDeviceStates (deprecated)| String collection | States in the scope of the policy. `All` is the only allowed value. |
| excludeDeviceStates (deprecated)| String collection | States excluded from the scope of the policy. Possible values: `Compliant`, `DomainJoined`. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "includeDevices",
    "excludeDevices"
  ],
  "@odata.type": "microsoft.graph.conditionalAccessDevices",
  "baseType": null
}-->

```json
{
  "includeDevices": [ "String" ],
  "excludeDevices": [ "String" ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conditionalAccessDevices resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->



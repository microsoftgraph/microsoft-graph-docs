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
| includeDevices | String collection | States in the scope of the policy. `All` is the only allowed value. Cannot be set if *deviceFIlter* is set. |
| excludeDevices | String collection | States excluded from the scope of the policy. Possible values: `Compliant`, `DomainJoined`. Cannot be set if **deviceFIlter** is set. |
| deviceFilter | [conditionalAccessFilter](conditionalaccessfilter.md) | Filter defining the dynamic-device-syntax rule to include/exclude devices. A filter can use device properties (such as extension attributes) to include/exclude them. Cannot be set if **includeDevices** or **excludeDevices** is set. |
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
    "excludeDevices",
    "deviceFilter"
  ],
  "@odata.type": "microsoft.graph.conditionalAccessDevices",
  "baseType": null
}-->

```json
{
  "includeDevices": [ "String" ],
  "excludeDevices": [ "String" ],
  "deviceFilter": {"@odata.type": "microsoft.graph.conditionalAccessFilter"}
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



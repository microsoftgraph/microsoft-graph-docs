---
title: "initiator resource type"
description: "Describes who or what initiated the provisioning event."
localization_priority: Normal
author: "ArvindHarinder1"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# initiator resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes who or what initiated the provisioning event. 

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|displayName|String|Name of the person or service that initiated the provisioning event.|
|id|String|Uniquely identifies the person or service that initiated the provisioning event.|
|initiatorType|String| Type of initiator. Possible values are: `user`, `app`, `system`, `unknownFutureValue`.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.initiator",
  "baseType": null
}-->

```json
{
  "displayName": "String",
  "id": "String",
  "initiatorType": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "initiator resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->



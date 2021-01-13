---
title: "networkLocationDetail resource type"
description: "Provides the name and type of network from which the user signed in."
localization_priority: Normal
author: "besiler"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# networkLocationDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the name and type of network from which the user signed in.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|networkNames|String collection|Provides the name of the network used when signing in.|
|networkType|networkType| Provides the type of network used when signing in. Possible values are: `intranet`, `extranet`, `namedNetwork`, `trusted`, `unknownFutureValue`.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.networkLocationDetail",
  "baseType": null
}-->

```json
{
  "networkNames": ["String"],
  "networkType": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "networkLocationDetail resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


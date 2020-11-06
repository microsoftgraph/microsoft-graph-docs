---
title: "keyValue resource type"
description: "Provides additional relevant information about the sign-in request"
localization_priority: Normal
author: "khotz"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# keyValue resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides additional authentication processing information, such as the server name and the presence of hints for sign in and domain.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|key|String|Contains the name of the field that a value is associated with. When a sign in or domain hint is included in the sign-in request, corresponding fields are included as key-value pairs. Possible keys: `Login hint present`, `Domain hint present`.|
|value|String|Contains the corresponding value for the specified key. The value is `true` if a sign in hint was included in the sign-in request; otherwise `false`. The value is `true` if a domain hint was included in the sign-in request; otherwise `false`.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.keyValue",
  "baseType": null
}-->

```json
{
  "key": "String",
  "value": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "keyValue resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->



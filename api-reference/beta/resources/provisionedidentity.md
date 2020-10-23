---
title: "provisionedIdentity resource type"
description: "Describes the identity associated with the provisioning object summary event."
localization_priority: Normal
author: "ArvindHarinder1"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# provisionedIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the identity associated with the provisioning object summary event. 

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|details|[detailsInfo](detailsinfo.md)|Details of the identity.|
|displayName|String|Display name of the identity. |
|id|String|Uniquely identifies the identity.|
|identityType|String|Type of identity that has been provisioned, such as 'user' or 'group'.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.provisionedIdentity",
  "baseType": null
}-->

```json
{
  "details": {"@odata.type": "microsoft.graph.detailsInfo"},
  "displayName": "String",
  "id": "String",
  "identityType": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "provisionedIdentity resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->



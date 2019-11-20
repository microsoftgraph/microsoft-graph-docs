---
title: "acl resource type"
description: "An access control entry for an item indexed by a Microsoft Search externalConnection."
localization_priority: Normal
author: "snlraju-msft"
ms.prod: ""
doc_type: "resourcePageType"
---

# acl resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An access control entry for an item indexed by a Microsoft Search [externalConnection](externalconnection.md).

[!INCLUDE [search-api-preview](../../includes/search-api-preview-signup.md)]

## Properties

| Property       | Type   | Description                                        |
|:---------------|:-------|:---------------------------------------------------|
| accessType     | String | The access granted to the identity. Possible values are: `grant`, `deny`. |
| identitySource | String | Must be set to `Azure Active Directory`.           |
| type           | String | The type of identity. Possible values are: `user`, `group`, `everyone`, `everyoneExceptGuests`. |
| value          | String | The Azure Active Directory identifer. If `type` is `user` or `group`, `value` is set to the object identifier for the user or group. If `type` is `everyone` or `everyoneExceptGuests`, `value` is set to the tenant identifier for the Azure Active Directory tenant. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.acl",
  "baseType": null
}-->

```json
{
  "accessType": "String",
  "identitySource": "String",
  "type": "String",
  "value": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "acl resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

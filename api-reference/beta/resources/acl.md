---
title: "acl resource type"
description: "An access control entry for an item indexed by a Microsoft Search externalConnection."
localization_priority: Normal
author: "snlraju-msft"
ms.prod: "search"
doc_type: "resourcePageType"
---

# acl resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An access control entry for an item indexed by a Microsoft Search [externalConnection](externalconnection.md).

[!INCLUDE [search-api-preview](../../includes/search-api-preview-signup.md)]

## Properties

| Property       | Type   | Description                                        |
|:---------------|:-------|:---------------------------------------------------|
| accessType     | String | The access granted to the identity. Possible values are: `grant`, `deny`. |
| identitySource | String | The source of identity. Possible values are `azureActiveDirectory` or `external`.           |
| type           | String | The type of identity. Possible values are: `user`, `group`, `everyone`, `everyoneExceptGuests` if the identitySource is `azureActiveDirectory` and just `group` if the identitySource is `external`. |
| value          | String | The unique identifer of the identity. In case of Azure Active Directory identities, `value` is set to the object identifier of the user, group or tenant for types user, group and everyone (and everyoneExceptGuests) respectively. In case of external groups `value` is set to the ID of the [externalGroup](externalgroup.md).|

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

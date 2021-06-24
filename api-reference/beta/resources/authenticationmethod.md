---
title: "authenticationMethod resource type"
description: "Represents an authentication method registered to a user."
localization_priority: Normal
author: "mmcla"
ms.prod: "identity-and-sign-in"
doc_type: "resourcePageType"
---

# authenticationMethod resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an authentication method registered to a user. An [authentication method](/azure/active-directory/authentication/concept-authentication-methods) is something used by a user to authenticate or otherwise prove their identity to the system. Some examples include password, phone (usable via SMS or voice call), FIDO2 security keys, and more.

> [!IMPORTANT]
> Listing users' authentication methods only returns methods supported on this API version. See [Azure AD authentication methods API overview](authenticationmethods-overview.md) for a list of currently supported methods.

## Methods

| Method       | Return type | Description |
|:-------------|:------------|:------------|
| [List authenticationMethods](../api/authentication-list-methods.md) | [authenticationMethod](authenticationmethod.md) collection | Read the properties and relationships of all of a user's **authenticationMethod** objects. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| The identifier of this instance of an authentication method registered to this user. Read-only. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.authenticationMethod",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "authenticationMethod resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
---
title: "optionalClaim resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "sureshja"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# optionalClaim resource type

Namespace: microsoft.graph

Contains an optional claim associated with an [application](application.md) <!-- or a service principal -->. The `idToken`, `accessToken`, and `saml2Token` properties of the [optionalClaims](optionalclaims.md) resource is a collection of **optionalClaim**. If supported by a specific claim, you can also modify the behavior of the optionalClaim using the `additionalProperties` property.

See [provide optional claims to your Azure AD app](/azure/active-directory/develop/active-directory-optional-claims) for more information.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|additionalProperties|String collection| Additional properties of the claim. If a property exists in this collection, it modifies the behavior of the optional claim specified in the name property. |
|essential|Boolean| If the value is true, the claim specified by the client is necessary to ensure a smooth authorization experience for the specific task requested by the end user. The default value is false.|
|name|String| The name of the optional claim. |
|source|String| The source (directory object) of the claim. There are predefined claims and user-defined claims from extension properties. If the source value is null, the claim is a predefined optional claim. If the source value is user, the value in the name property is the extension property from the user object. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.optionalClaim",
  "baseType": null
}-->

```json
{
  "additionalProperties": ["String"],
  "essential": true,
  "name": "String",
  "source": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "optionalClaim resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

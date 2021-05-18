---
title: "authenticationContextClassReference resource type"
description: "Represents an Azure Active Directory authentication context class reference."
localization_priority: Normal
author: "calebb"
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationContextClassReference resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Azure Active Directory authentication context class reference. Authentication context class references are custom values that define a Conditional Access authentication requirement.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List authenticationContextClassReference](../api/conditionalaccessroot-list-authenticationcontextclassreferences.md) | [authenticationContextClassReference](authenticationContextClassReference.md) collection | Get all of the authenticationContextClassReference objects in the organization. |
| [Create authenticationContextClassReference](../api/conditionalaccessroot-post-authenticationcontextclassreferences.md) | [authenticationContextClassReference](authenticationContextClassReference.md) | Create a new authenticationContextClassReference object. |
| [Get authenticationContextClassReference](../api/authenticationcontextclassreference-get.md) | [authenticationContextClassReference](authenticationContextClassReference.md) | Read properties and relationships of a authenticationContextClassReference object. |
| [Update authenticationContextClassReference](../api/authenticationcontextclassreference-update.md) | [authenticationContextClassReference](authenticationContextClassReference.md) | Update a authenticationContextClassReference object. |


## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Identifier used to reference the authentication context class. The id is used to trigger step-up authentication for the referenced authentication requirements and is the value that will be issued in the acrs claim. This value in the claim is used to verify the required authentication context has been satisfied. The allowed id values are "c1" through "c25". |
|displayName|String| The display name is the friendly name of the authenticationContextClassReference. This value should be used to identify the authentication context class reference when building user facing admin experiences. For example, selection UX. |
|description|String| A short explanation of the policies that are enforced by authenticationContextClassReference. This value should be used to provide secondary text to describe the authentication context class reference when building user facing admin experiences. For example, selection UX.|
|isAvailable|boolean| Indicates whether the authenticationContextClassReference has been published by the security admin and is ready for use by apps. When it is set to `false` it should not be shown in admin UX experiences because the value is not currently available for selection.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "displayName",
    "description",
    "sessionControls",
    "grantControls"
  ],
  "@odata.type": "microsoft.graph.authenticationContextClassReference",
  "baseType": "microsoft.graph.entity",
  "keyProperty": "id"
}-->

```json
    {
      "id": "String",
      "displayName": "String",
      "description": "String",
      "isAvailable": "boolean",
    }

```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "authenticationContextClassReference resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

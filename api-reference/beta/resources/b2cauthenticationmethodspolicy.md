---
title: "b2cAuthenticationMethodsPolicy resource type"
description: "Represents a local account authentication method registered to a user configured in an Azure Active Directory (Azure AD) B2C tenant."
localization_priority: Priority
author: "namkedia"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# b2cAuthenticationMethodsPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Azure Active Directory (Azure AD) B2C allows tenant admins to choose a mechanism for letting end users register via local accounts. Local accounts are the accounts where Azure AD does the identity assertion, as opposed to a federated identity provider such as Google or Facebook etc.

The local accounts in Azure AD B2C do not follow the settings or paradigms from Azure AD. The Azure AD authentication methods policy is not used or enforced by Azure AD B2C. Azure AD B2C stores these settings in a different policy, which is consumed by user flows.

## Methods

| Method       | Return type | Description |
|:-------------|:------------|:------------|
| [Get b2cAuthenticationMethodsPolicy](../api/b2cauthenticationmethodspolicy-get.md) | [b2cauthenticationmethodspolicy](b2cauthenticationmethodspolicy.md) | Read the properties of a **b2cauthenticationmethodspolicy** object. |
| [Update b2cAuthenticationMethodsPolicy](../api/b2cauthenticationmethodspolicy-update.md) | None | Update the properties of a **b2cauthenticationmethodspolicy** objects. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The id of the B2C authentication methods policy. This is a read only property and the key.|
|isEmailPasswordAuthenticationEnabled|Boolean|The tenant admin can configure local accounts using email if the email and password authentication method is enabled.|
|isUserNameAuthenticationEnabled|Boolean|The tenant admin can configure local accounts using username if the username and password authentication method is enabled.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.b2cAuthenticationMethodsPolicy",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
    "id": "b2CAuthenticationMethodsPolicy",
    "isEmailPasswordAuthenticationEnabled": true,
    "isUserNameAuthenticationEnabled": false
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "b2cAuthenticationMethodsPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

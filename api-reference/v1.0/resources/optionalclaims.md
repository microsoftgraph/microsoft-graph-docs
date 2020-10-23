---
title: "optionalClaims type"
description: "Declares the optional claims requested by an application."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "sureshja"
---

# optionalClaims resource type

Namespace: microsoft.graph
Declares the optional claims requested by an application. An application can configure optional claims to be returned in each of three types of tokens (ID token, access token, SAML 2 token) it can receive from the security token service. An application can configure a different set of optional claims to be returned in each token type. The optionalClaims property of the [application](application.md) is an **optionalClaims** object.

Application developers can configure optional claims in their Azure AD apps to specify which claims they want in tokens sent to their application by the Microsoft security token service. See [provide optional claims to your Azure AD app](/azure/active-directory/develop/active-directory-optional-claims) for more information.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|idToken|[optionalClaim](optionalclaim.md) collection| The optional claims returned in the JWT ID token. |
|accessToken|[optionalClaim](optionalclaim.md) collection| The optional claims returned in the JWT access token. |
|saml2Token|[optionalClaim](optionalclaim.md) collection| The optional claims returned in the SAML token.|

## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.optionalClaims"
}-->
``` json
{
  "idToken": [{"@odata.type": "microsoft.graph.optionalClaim"}],
  "accessToken": [{"@odata.type": "microsoft.graph.optionalClaim"}],
  "saml2Token": [{"@odata.type": "microsoft.graph.optionalClaim"}]
}
```

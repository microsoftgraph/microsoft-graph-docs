---
title: "claimsMapping resource type"
description: "Map the claims from a token to the claims that Azure Active Directory B2C recognizes and uses."
author: "namkedia"
localization_priority: Priority
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# claimsMapping resource type

Namespace: microsoft.graph

After the custom identity provider sends an ID token back to Azure AD B2C, Azure AD B2C maps the claims from a token to the claims that Azure AD B2C recognizes and uses.

## Properties
|Property|Type|Description|
|:-------|:---|:----------|
|userId|String|The claim that provides the unique identifier for the signed-in user. It is a required propoerty.|
|displayName|String|The claim that provides the display name or full name for the user. It is a required propoerty.|
|givenName|String|The claim that provides the first name of the user.|
|surname|String|The claim that provides the last name of the user.|
|email|String|The claim that provides the email address of the user.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.claimsMapping"
}
-->

``` json
{
  "userId": "String",
  "givenName": "String",
  "surname": "String",
  "email": "String",
  "displayName": "String"
  }
```



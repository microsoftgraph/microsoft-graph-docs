---
title: "authenticationMethodsPolicy resource type"
description: "Defines authentication methods and the users that are allowed to use them to sign in and perform multi-factor authentication (MFA)."
author: "mmcla"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationMethodsPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines authentication methods and the users that are allowed to use them to sign in and perform multi-factor authentication (MFA) in Azure Active Directory (Azure AD).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get authenticationMethodsPolicy](../api/authenticationmethodspolicy-get.md)|[authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md)|Read the properties and relationships of an [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) object.|
|[Update authenticationMethodsPolicy](../api/authenticationmethodspolicy-update.md)|[authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md)|Update the properties of an [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|A description of the policy.|
|displayName|String|The name of the policy.|
|id|String|The identifier of the policy. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time of the last update to the policy.|
|policyVersion|String|The version of the policy in use.|
|registrationEnforcement|[registrationEnforcement](../resources/registrationenforcement.md)|Enforce registration at sign-in time. This property can be used to remind users to set up targeted authentication methods.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authenticationMethodConfigurations|[authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md) collection|Represents the settings for each authentication method.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationMethodsPolicy",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationMethodsPolicy",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "policyVersion": "String",
  "registrationEnforcement": {
    "@odata.type": "microsoft.graph.registrationEnforcement"
  } 
}
```

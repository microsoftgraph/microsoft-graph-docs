---
title: "Temporary Access Pass Policy "
description: "Represents a Temporary Access Pass authentication methods policy"
author: "inbarckms"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# temporaryAccessPassAuthenticationMethodConfiguration resource type
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Temporary Access Pass authentication methods policy. Authentication methods policies define configuration settings and users or groups who are enabled to use the authentication method.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/temporaryaccesspassauthenticationmethodconfiguration-get.md)|[temporaryaccesspassauthenticationmethodconfiguration](../resources/temporaryaccesspassauthenticationmethodconfiguration.md)|Read the properties and relationships of a temporaryaccesspassauthenticationmethodconfiguration object.|
|[Update](../api/temporaryaccesspassauthenticationmethodconfiguration-update.md)|[temporaryaccesspassauthenticationmethodconfiguration](../resources/temporaryaccesspassauthenticationmethodconfiguration.md)|Update the properties of a temporaryaccesspassauthenticationmethodconfiguration object.|
|[Delete](../api/temporaryaccesspassauthenticationmethodconfiguration-delete.md)|None|Reverts the temporaryaccesspassauthenticationmethodconfiguration object to its default configuration.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The authentication method policy identifier.|
|minimumLifetimeInMinutes|Int|Minimum lifetime in minutes for any temporaryAccessPass created in the tenant. Values can be betweem 10 to 43200 minutes (equivalent to 30 days).|
|maximumLifetimeInMinutes|Int|Maxnimum lifetime in minutes for any temporaryAccessPass created in the tenant. Values can be betweem 10 to 43200 minutes (equivalent to 30 days).|
|defaultLifetimeInMinutes|int|Default lifetime, in minutes, for a temporaryAccessPass. Value can be between the minimumLifetimeInMinutes and maximumLifetimeInMinutes|
|defaultLength|int|Default length, in characters, of a temporaryAccessPass, between 8 to 48 characters|
|isUsableOnce|Boolean	|If true, all the passes in the tenant should be restricted to one-time use. If false, passes in the tenant can be either one-time use or multiple time use, defined by per pass|
|state|authenticationMethodState|Possible values are: `enabled`, `disabled`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includeTargets|[authenticationMethodTarget](../resources/authenticationmethodtarget.md) collection|A collection of users or groups who are enabled to use the authentication method.|

# JSON representation
The following is a JSON representation of the resource.
``` json
{
  "@odata.type": "#microsoft.authMethodPolicy.temporaryAccessPassAuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String",
  "defaultLifetimeInMinutes": "Integer",
  "defaultLength": "Integer",
  "minimumLifetimeInMinutes": "Integer",
  "maximumLifetimeInMinutes": "Integer",
  "isUsableOnce": "Boolean"
},
"includeTargets": [ { "@odata.type": "microsoft.graph.authenticationMethodTarget" } ]

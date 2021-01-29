---
title: "emailAuthenticationMethodConfiguration resource type"
description: "Represents an email OTP authentication methods policy"
author: "mmcla"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# emailAuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents this tenant's email OTP authentication methods policy. Authentication methods policies define configuration settings and users or groups who are enabled to use the authentication method. Email OTP may be used by the tenant's cloud-native users for self-service password reset, or by external users for authentication in some circumstances.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get emailAuthenticationMethodConfiguration](../api/emailauthenticationmethodconfiguration-get.md)|[emailAuthenticationMethodConfiguration](../resources/emailauthenticationmethodconfiguration.md)|Read the properties and relationships of an emailAuthenticationMethodConfiguration object.|
|[Update emailAuthenticationMethodConfiguration](../api/emailauthenticationmethodconfiguration-update.md)|[emailAuthenticationMethodConfiguration](../resources/emailauthenticationmethodconfiguration.md)|Update the properties of an emailAuthenticationMethodConfiguration object.|
|[Delete emailAuthenticationMethodConfiguration](../api/emailauthenticationmethodconfiguration-delete.md)|None|Deletes an emailAuthenticationMethodConfiguration object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The authentication method policy identifier. Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).|
|state|authenticationMethodState|Indicates whether this authentication method is enabled or not. Possible values are: `enabled`, `disabled`.|
|allowExternalIdToUseEmailOtp|externalEmailOtpState|Determines whether email OTP is usable by external users for authentication. Possible values are: `default`, `enabled`, `disabled`, `unknownFutureValue`. Tenants in the `default` state who did not use public preview will automatically have email OTP enabled beginning in March 2021.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|includeTargets|[authenticationMethodTarget](../resources/authenticationmethodtarget.md) collection|A collection of users or groups who are enabled to use the authentication method.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.emailAuthenticationMethodConfiguration",
  "baseType": "microsoft.graph.authenticationMethodConfiguration",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.emailAuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String",
  "allowExternalIdToUseEmailOtp": "String",
  "includeTargets": [ { "@odata.type": "microsoft.graph.authenticationMethodTarget" } ]
}
```

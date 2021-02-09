---
title: "microsoftAuthenticatorAuthenticationMethod resource type"
description: "A representation of the Microsoft Authenticator app registered to a user. Microsoft Authenticator is an authentication method."
author: "mmcla"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# microsoftAuthenticatorAuthenticationMethod resource type

Namespace: microsoft.graph

A representation of the Microsoft Authenticator app registered to a user. Microsoft Authenticator is an authentication method.

Inherits from [authenticationMethod](../resources/authenticationmethod.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List microsoftAuthenticatorAuthenticationMethods](../api/microsoftauthenticatorauthenticationmethod-list.md)|[microsoftAuthenticatorAuthenticationMethod](../resources/microsoftauthenticatorauthenticationmethod.md) collection|Get a list of the [microsoftAuthenticatorAuthenticationMethod](../resources/microsoftauthenticatorauthenticationmethod.md) objects and their properties.|
|[Get microsoftAuthenticatorAuthenticationMethod](../api/microsoftauthenticatorauthenticationmethod-get.md)|[microsoftAuthenticatorAuthenticationMethod](../resources/microsoftauthenticatorauthenticationmethod.md)|Read the properties and relationships of a [microsoftAuthenticatorAuthenticationMethod](../resources/microsoftauthenticatorauthenticationmethod.md) object.|
|[Delete microsoftAuthenticatorAuthenticationMethod](../api/microsoftauthenticatorauthenticationmethod-delete.md)|None|Deletes a [microsoftAuthenticatorAuthenticationMethod](../resources/microsoftauthenticatorauthenticationmethod.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time that this app was registered. This property is null if the device is not registered for passwordless Phone Sign-In.|
|displayName|String|The name of the device on which this app is registered.|
|id|String|A unique identifier for this authentication method. Inherited from [authenticationMethod](../resources/authenticationmethod.md)|
|deviceTag|String|Tags containing app metadata.|
|phoneAppVersion|String|Numerical version of this instance of the Authenticator app.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|device|[device](../resources/device.md)|The registered device on which Microsoft Authenticator resides. This property is null if the device is not registered for passwordless Phone Sign-In.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.microsoftAuthenticatorAuthenticationMethod",
  "baseType": "microsoft.graph.authenticationMethod",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftAuthenticatorAuthenticationMethod",
  "id": "String (Identifier)",
  "displayName": "String",
  "deviceTag": "String",
  "phoneAppVersion": "String",
  "createdDateTime": "DateTimeOffset"
}
```

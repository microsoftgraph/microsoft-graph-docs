---
title: "windowsHelloForBusinessAuthenticationMethod resource type"
description: "A representation of a Windows Hello for Business instance registered to a user. Windows Hello for Business is a sign-in authentication method."
author: "mmcla"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# windowsHelloForBusinessAuthenticationMethod resource type

Namespace: microsoft.graph

A representation of a Windows Hello for Business authentication method registered to a user. Windows Hello for Business is a sign-in authentication method for Windows devices.

Inherits from [authenticationMethod](../resources/authenticationmethod.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List windowsHelloForBusinessAuthenticationMethods](../api/windowshelloforbusinessauthenticationmethod-list.md)|[windowsHelloForBusinessAuthenticationMethod](../resources/windowshelloforbusinessauthenticationmethod.md) collection|Get a list of the [windowsHelloForBusinessAuthenticationMethod](../resources/windowshelloforbusinessauthenticationmethod.md) objects and their properties.|
|[Get windowsHelloForBusinessAuthenticationMethod](../api/windowshelloforbusinessauthenticationmethod-get.md)|[windowsHelloForBusinessAuthenticationMethod](../resources/windowshelloforbusinessauthenticationmethod.md)|Read the properties and relationships of a [windowsHelloForBusinessAuthenticationMethod](../resources/windowshelloforbusinessauthenticationmethod.md) object.|
|[Delete windowsHelloForBusinessAuthenticationMethod](../api/windowshelloforbusinessauthenticationmethod-delete.md)|None|Deletes a [windowsHelloForBusinessAuthenticationMethod](../resources/windowshelloforbusinessauthenticationmethod.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time that this Windows Hello for Business key was registered.|
|displayName|String|The name of the device on which Windows Hello for Business is registered|
|id|String|A unique identifier for this authentication method. Inherited from [authenticationMethod](../resources/authenticationmethod.md)|
|keyStrength|authenticationMethodKeyStrength|Key strength of this Windows Hello for Business key. Possible values are: `normal`, `weak`, `unknown`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|device|[device](../resources/device.md)|The registered device on which this Windows Hello for Business key resides.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsHelloForBusinessAuthenticationMethod",
  "baseType": "microsoft.graph.authenticationMethod",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsHelloForBusinessAuthenticationMethod",
  "id": "String (Identifier)",
  "displayName": "String",
  "createdDateTime": "String",
  "keyStrength": {"@odata.type": "microsoft.graph.authenticationMethodKeyStrength"}
}
```

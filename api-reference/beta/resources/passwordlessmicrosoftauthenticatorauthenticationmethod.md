---
title: "passwordlessMicrosoftAuthenticatorAuthenticationMethod resource type"
description: "A representation of a Microsoft Authenticator Passwordless Phone Sign-in method registered to a user."
author: "mmcla"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: "apiPageType"
---

# passwordlessMicrosoftAuthenticatorAuthenticationMethod resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A representation of a Microsoft Authenticator Passwordless Phone Sign-in method registered to a user.

> [!NOTE]
> Substantial schema changes are planned for APIs that manage the Microsoft Authenticator app while the APIs are in Mirosoft Graph beta. Because the calling patterns will change, we recommend that you do not take a production dependency on these APIs.


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/passwordlessmicrosoftauthenticatorauthenticationmethod-list.md)|[passwordlessMicrosoftAuthenticatorAuthenticationMethod](../resources/passwordlessmicrosoftauthenticatorauthenticationmethod.md) collection|Retrieve a list of a user's passwordlessMicrosoftAuthenticatorAuthenticationMethod objects and their properties.|
|[Get](../api/passwordlessmicrosoftauthenticatorauthenticationmethod-get.md)|[passwordlessMicrosoftAuthenticatorAuthenticationMethod](../resources/passwordlessmicrosoftauthenticatorauthenticationmethod.md)|Read the properties and relationships of a user's passwordlessMicrosoftAuthenticatorAuthenticationMethod object.|
|[Delete](../api/passwordlessmicrosoftauthenticatorauthenticationmethod-delete.md)|None|Deletes a user's passwordlessMicrosoftAuthenticatorAuthenticationMethod object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The authentication method identifier.|
|displayName|String|The display name of the mobile device as given by the user.|
|creationDateTime|DateTimeOffset|The timestamp when this method was registered to the user.|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.passwordlessMicrosoftAuthenticatorAuthenticationMethod",
  "baseType": "microsoft.graph.authenticationMethod",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.passwordlessMicrosoftAuthenticatorAuthenticationMethod",
  "id": "String (identifier)",
  "displayName": "String",
  "creationDateTime": "String (timestamp)"
}
```


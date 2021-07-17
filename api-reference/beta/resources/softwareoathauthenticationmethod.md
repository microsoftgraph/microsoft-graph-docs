---
title: "softwareOathAuthenticationMethod resource type"
description: "A representation of a Software OATH token registered to a user. Software OATH is a multi-factor authentication method."
author: "mmcla"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# softwareOathAuthenticationMethod resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A representation of a software OATH token registered to a user. A software OATH token is a software-based number generator that uses the OATH Time-Based One Time Password (TOTP) standard for multi-factor authentication. This API will not return Microsoft Authenticator authentication method entities, though it will return an entity if Microsoft Authenticator was set up via the third-party software authenticator flow.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/softwareoathauthenticationmethod-list.md)|[softwareOathAuthenticationMethod](../resources/softwareoathauthenticationmethod.md) collection|Retrieve a list of a user's softwareOathAuthenticationMethod objects and their properties.|
|[Get](../api/softwareoathauthenticationmethod-get.md)|[softwareOathAuthenticationMethod](../resources/softwareoathauthenticationmethod.md)|Read the properties of a user's softwareOathAuthenticationMethod object.|
|[Delete](../api/softwareoathauthenticationmethod-delete.md)|None|Delete a user's softwareOathAuthenticationMethod object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The authentication method identifier.|
|secretKey|String|The secret key of the method. Always returns `null`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.softwareOathAuthenticationMethod",
  "baseType": "microsoft.graph.authenticationMethod",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.softwareOathAuthenticationMethod",
  "id": "String (identifier)",
  "secretKey": "String"
}
```

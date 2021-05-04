---
title: "emailAuthenticationMethod resource type"
description: "A representation of an email address registered to a user. Email is an authentication method available only to self-service password reset (SSPR)"
author: "mmcla"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# emailAuthenticationMethod resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A representation of an email address registered to a user. Email is an authentication method available only to self-service password reset (SSPR). Users may only have one email authentication method.


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/emailauthenticationmethod-list.md)|[emailAuthenticationMethod](../resources/emailauthenticationmethod.md) collection|Retrieve a list of a user's emailAuthenticationMethods. Users may only have one email authentication method.|
|[Create](../api/emailauthenticationmethod-post.md)|[emailAuthenticationMethod](../resources/emailauthenticationmethod.md)|Create a user's emailMethods object.|
|[Get](../api/emailauthenticationmethod-get.md)|[emailAuthenticationMethod](../resources/emailauthenticationmethod.md)|Retrieve the properties  of the user's emailAuthenticationMethod object.|
|[Update](../api/emailauthenticationmethod-update.md)|[emailAuthenticationMethod](../resources/emailauthenticationmethod.md)|Update the properties of a user's emailMethods object.|
|[Delete](../api/emailauthenticationmethod-delete.md)|None|Delete a user's emailAuthenticationMethod object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the email address registered to this user.|
|emailAddress|String|The email address registered to this user.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.emailAuthenticationMethod",
  "baseType": "microsoft.graph.authenticationMethod",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.emailAuthenticationMethod",
  "id": "String (identifier)",
  "emailAddress": "String"
}
```


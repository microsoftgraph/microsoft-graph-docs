---
title: "basicAuthentication resource type"
description: "Represents configuration for using Basic authentication in an API call."
author: "nickgmicrosoft"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# basicAuthentication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents configuration for using HTTP Basic authentication, which entails a username and password, in an API call. The username and password is sent as the Authorization header as `Basic {value}` where `value` is base 64 encoded version of username:password.

Inherits from [apiAuthenticationConfigurationBase](../resources/apiauthenticationconfigurationbase.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|username|String| The username. |
|password|String| The password. It is not returned in the responses. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.basicAuthentication"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.basicAuthentication",
  "password": "String",
  "username": "String"
}
```

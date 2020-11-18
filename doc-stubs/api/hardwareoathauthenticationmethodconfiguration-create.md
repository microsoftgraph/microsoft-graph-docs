---
title: "Create hardwareOathAuthenticationMethodConfiguration"
description: "Create a new hardwareOathAuthenticationMethodConfiguration object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create hardwareOathAuthenticationMethodConfiguration
Namespace: microsoft.graph

Create a new [hardwareOathAuthenticationMethodConfiguration](../resources/hardwareoathauthenticationmethodconfiguration.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST ** Collection URI for microsoft.authMethodPolicy.hardwareOathAuthenticationMethodConfiguration not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [hardwareOathAuthenticationMethodConfiguration](../resources/hardwareoathauthenticationmethodconfiguration.md) object.

The following table shows the properties that are required when you create the [hardwareOathAuthenticationMethodConfiguration](../resources/hardwareoathauthenticationmethodconfiguration.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md)|
|state|authenticationMethodState|**TODO: Add Description** Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md). Possible values are: `enabled`, `disabled`.|



## Response

If successful, this method returns a `201 Created` response code and a [hardwareOathAuthenticationMethodConfiguration](../resources/hardwareoathauthenticationmethodconfiguration.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_hardwareoathauthenticationmethodconfiguration_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.authMethodPolicy.hardwareOathAuthenticationMethodConfiguration not found
Content-Type: application/json
Content-length: 120

{
  "@odata.type": "#microsoft.authMethodPolicy.hardwareOathAuthenticationMethodConfiguration",
  "state": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.authMethodPolicy.hardwareOathAuthenticationMethodConfiguration"
}
-->
``` http
HTTP/1.1 201 Created

Content-Type: application/json
{
  "@odata.type": "#microsoft.authMethodPolicy.hardwareOathAuthenticationMethodConfiguration",
  "id": "70aa2868-2868-70aa-6828-aa706828aa70",
  "state": "String"
}
```


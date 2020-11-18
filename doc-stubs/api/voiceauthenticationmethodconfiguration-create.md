---
title: "Create voiceAuthenticationMethodConfiguration"
description: "Create a new voiceAuthenticationMethodConfiguration object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create voiceAuthenticationMethodConfiguration
Namespace: microsoft.graph

Create a new [voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md) object.

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
POST ** Collection URI for microsoft.authMethodPolicy.voiceAuthenticationMethodConfiguration not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md) object.

The following table shows the properties that are required when you create the [voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md)|
|state|authenticationMethodState|**TODO: Add Description** Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md). Possible values are: `enabled`, `disabled`.|
|isOfficePhoneAllowed|Boolean|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_voiceauthenticationmethodconfiguration_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.authMethodPolicy.voiceAuthenticationMethodConfiguration not found
Content-Type: application/json
Content-length: 151

{
  "@odata.type": "#microsoft.authMethodPolicy.voiceAuthenticationMethodConfiguration",
  "state": "String",
  "isOfficePhoneAllowed": "Boolean"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.authMethodPolicy.voiceAuthenticationMethodConfiguration"
}
-->
``` http
HTTP/1.1 201 Created

Content-Type: application/json
{
  "@odata.type": "#microsoft.authMethodPolicy.voiceAuthenticationMethodConfiguration",
  "id": "1e20d522-d522-1e20-22d5-201e22d5201e",
  "state": "String",
  "isOfficePhoneAllowed": "Boolean"
}
```


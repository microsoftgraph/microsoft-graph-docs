---
title: "Update voiceAuthenticationMethodConfiguration"
description: "Update the properties of a voiceAuthenticationMethodConfiguration object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update voiceAuthenticationMethodConfiguration
Namespace: microsoft.graph

Update the properties of a [voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md) object.

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
PATCH /voiceAuthenticationMethodConfiguration
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

If successful, this method returns a `200 OK` response code and an updated [voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_voiceauthenticationmethodconfiguration"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/voiceAuthenticationMethodConfiguration
Content-Type: application/json
Content-length: 140

{
  "@odata.type": "#microsoft.graph.voiceAuthenticationMethodConfiguration",
  "state": "String",
  "isOfficePhoneAllowed": "Boolean"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "@odata.type": "#microsoft.graph.voiceAuthenticationMethodConfiguration",
  "id": "1e20d522-d522-1e20-22d5-201e22d5201e",
  "state": "String",
  "isOfficePhoneAllowed": "Boolean"
}
```


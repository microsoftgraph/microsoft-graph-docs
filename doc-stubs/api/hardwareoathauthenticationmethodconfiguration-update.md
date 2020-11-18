---
title: "Update hardwareOathAuthenticationMethodConfiguration"
description: "Update the properties of a hardwareOathAuthenticationMethodConfiguration object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update hardwareOathAuthenticationMethodConfiguration
Namespace: microsoft.graph

Update the properties of a [hardwareOathAuthenticationMethodConfiguration](../resources/hardwareoathauthenticationmethodconfiguration.md) object.

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
PATCH /hardwareOathAuthenticationMethodConfiguration
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

If successful, this method returns a `200 OK` response code and an updated [hardwareOathAuthenticationMethodConfiguration](../resources/hardwareoathauthenticationmethodconfiguration.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_hardwareoathauthenticationmethodconfiguration"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/hardwareOathAuthenticationMethodConfiguration
Content-Type: application/json
Content-length: 109

{
  "@odata.type": "#microsoft.graph.hardwareOathAuthenticationMethodConfiguration",
  "state": "String"
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
  "@odata.type": "#microsoft.graph.hardwareOathAuthenticationMethodConfiguration",
  "id": "70aa2868-2868-70aa-6828-aa706828aa70",
  "state": "String"
}
```


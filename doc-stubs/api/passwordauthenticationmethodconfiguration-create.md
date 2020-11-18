---
title: "Create passwordAuthenticationMethodConfiguration"
description: "Create a new passwordAuthenticationMethodConfiguration object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create passwordAuthenticationMethodConfiguration
Namespace: microsoft.graph

Create a new [passwordAuthenticationMethodConfiguration](../resources/passwordauthenticationmethodconfiguration.md) object.

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
POST ** Collection URI for microsoft.authMethodPolicy.passwordAuthenticationMethodConfiguration not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [passwordAuthenticationMethodConfiguration](../resources/passwordauthenticationmethodconfiguration.md) object.

The following table shows the properties that are required when you create the [passwordAuthenticationMethodConfiguration](../resources/passwordauthenticationmethodconfiguration.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md)|
|state|authenticationMethodState|**TODO: Add Description** Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md). Possible values are: `enabled`, `disabled`.|



## Response

If successful, this method returns a `201 Created` response code and a [passwordAuthenticationMethodConfiguration](../resources/passwordauthenticationmethodconfiguration.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_passwordauthenticationmethodconfiguration_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.authMethodPolicy.passwordAuthenticationMethodConfiguration not found
Content-Type: application/json
Content-length: 116

{
  "@odata.type": "#microsoft.authMethodPolicy.passwordAuthenticationMethodConfiguration",
  "state": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.authMethodPolicy.passwordAuthenticationMethodConfiguration"
}
-->
``` http
HTTP/1.1 201 Created

Content-Type: application/json
{
  "@odata.type": "#microsoft.authMethodPolicy.passwordAuthenticationMethodConfiguration",
  "id": "2ad9c739-c739-2ad9-39c7-d92a39c7d92a",
  "state": "String"
}
```


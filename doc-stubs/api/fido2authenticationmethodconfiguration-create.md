---
title: "Create fido2AuthenticationMethodConfiguration"
description: "Create a new fido2AuthenticationMethodConfiguration object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create fido2AuthenticationMethodConfiguration
Namespace: microsoft.graph

Create a new [fido2AuthenticationMethodConfiguration](../resources/fido2authenticationmethodconfiguration.md) object.

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
POST ** Collection URI for microsoft.authMethodPolicy.fido2AuthenticationMethodConfiguration not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [fido2AuthenticationMethodConfiguration](../resources/fido2authenticationmethodconfiguration.md) object.

The following table shows the properties that are required when you create the [fido2AuthenticationMethodConfiguration](../resources/fido2authenticationmethodconfiguration.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md)|
|state|authenticationMethodState|**TODO: Add Description** Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md). Possible values are: `enabled`, `disabled`.|
|isSelfServiceRegistrationAllowed|Boolean|**TODO: Add Description**|
|isAttestationEnforced|Boolean|**TODO: Add Description**|
|keyRestrictions|[fido2KeyRestrictions](../resources/fido2keyrestrictions.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [fido2AuthenticationMethodConfiguration](../resources/fido2authenticationmethodconfiguration.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_fido2authenticationmethodconfiguration_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.authMethodPolicy.fido2AuthenticationMethodConfiguration not found
Content-Type: application/json
Content-length: 291

{
  "@odata.type": "#microsoft.authMethodPolicy.fido2AuthenticationMethodConfiguration",
  "state": "String",
  "isSelfServiceRegistrationAllowed": "Boolean",
  "isAttestationEnforced": "Boolean",
  "keyRestrictions": {
    "@odata.type": "microsoft.graph.fido2KeyRestrictions"
  }
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.authMethodPolicy.fido2AuthenticationMethodConfiguration"
}
-->
``` http
HTTP/1.1 201 Created

Content-Type: application/json
{
  "@odata.type": "#microsoft.authMethodPolicy.fido2AuthenticationMethodConfiguration",
  "id": "d11917a3-17a3-d119-a317-19d1a31719d1",
  "state": "String",
  "isSelfServiceRegistrationAllowed": "Boolean",
  "isAttestationEnforced": "Boolean",
  "keyRestrictions": {
    "@odata.type": "microsoft.graph.fido2KeyRestrictions"
  }
}
```


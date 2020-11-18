---
title: "Get fido2AuthenticationMethodConfiguration"
description: "Read the properties and relationships of a fido2AuthenticationMethodConfiguration object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get fido2AuthenticationMethodConfiguration
Namespace: microsoft.graph

Read the properties and relationships of a [fido2AuthenticationMethodConfiguration](../resources/fido2authenticationmethodconfiguration.md) object.

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
GET /fido2AuthenticationMethodConfiguration
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [fido2AuthenticationMethodConfiguration](../resources/fido2authenticationmethodconfiguration.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_fido2authenticationmethodconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/beta/fido2AuthenticationMethodConfiguration
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
HTTP/1.1 200 OK

Content-Type: application/json
{
  "value": {
    "@odata.type": "#microsoft.authMethodPolicy.fido2AuthenticationMethodConfiguration",
    "id": "d11917a3-17a3-d119-a317-19d1a31719d1",
    "state": "String",
    "isSelfServiceRegistrationAllowed": "Boolean",
    "isAttestationEnforced": "Boolean",
    "keyRestrictions": {
      "@odata.type": "microsoft.graph.fido2KeyRestrictions"
    }
  }
}
```


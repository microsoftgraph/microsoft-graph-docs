---
title: "Create authenticationMethodConfiguration"
description: "Create a new authenticationMethodConfiguration object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create authenticationMethodConfiguration
Namespace: microsoft.graph

Create a new [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md) object.

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
POST /authenticationMethodConfigurations
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md) object.

The following table shows the properties that are required when you create the [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|state|authenticationMethodState|**TODO: Add Description**. Possible values are: `enabled`, `disabled`.|



## Response

If successful, this method returns a `201 Created` response code and an [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_authenticationmethodconfiguration_from_authenticationmethodconfigurations"
}
-->
``` http
POST https://graph.microsoft.com/beta/authenticationMethodConfigurations
Content-Type: application/json
Content-length: 108

{
  "@odata.type": "#microsoft.authMethodPolicy.authenticationMethodConfiguration",
  "state": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.authMethodPolicy.authenticationMethodConfiguration"
}
-->
``` http
HTTP/1.1 201 Created

Content-Type: application/json
{
  "@odata.type": "#microsoft.authMethodPolicy.authenticationMethodConfiguration",
  "id": "d9f08f10-8f10-d9f0-108f-f0d9108ff0d9",
  "state": "String"
}
```


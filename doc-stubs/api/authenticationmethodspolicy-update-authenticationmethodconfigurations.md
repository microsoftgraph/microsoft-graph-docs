---
title: "Update authenticationMethodConfigurations"
description: "Update the properties of an authenticationMethodConfigurations object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update authenticationMethodConfigurations
Namespace: microsoft.graph

Update the properties of an authenticationMethodConfigurations object.

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
PATCH /authenticationMethodsPolicy/authenticationMethodConfigurations
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

If successful, this method returns a `200 OK` response code and an updated [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_authenticationmethodconfigurations"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/authenticationMethodsPolicy/authenticationMethodConfigurations
Content-Type: application/json
Content-length: 97

{
  "@odata.type": "#microsoft.graph.authenticationMethodConfiguration",
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
  "@odata.type": "#microsoft.graph.authenticationMethodConfiguration",
  "id": "d9f08f10-8f10-d9f0-108f-f0d9108ff0d9",
  "state": "String"
}
```


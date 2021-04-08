---
title: "Update privateEndpointConnection"
description: "Update the properties of a privateEndpointConnection object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update privateEndpointConnection
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [privateEndpointConnection](../resources/privateendpointconnection.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
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
PATCH /policies/privateLinkResourcePolicies/{privateLinkResourcePolicyId}/privateEndpointConnections/{privateEndpointConnectionId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [privateEndpointConnection](../resources/privateendpointconnection.md) object.

The following table shows the properties that are required when you update the [privateEndpointConnection](../resources/privateendpointconnection.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|externalPrivateEndpointId|String|**TODO: Add Description**|
|privateLinkIds|Int64 collection|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [privateEndpointConnection](../resources/privateendpointconnection.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_privateendpointconnection"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/policies/privateLinkResourcePolicies/{privateLinkResourcePolicyId}/privateEndpointConnections/{privateEndpointConnectionId}
Content-Type: application/json
Content-length: 153

{
  "@odata.type": "#microsoft.graph.privateEndpointConnection",
  "externalPrivateEndpointId": "String",
  "privateLinkIds": [
    "Integer"
  ]
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
  "@odata.type": "#microsoft.graph.privateEndpointConnection",
  "id": "04c5e07d-e07d-04c5-7de0-c5047de0c504",
  "externalPrivateEndpointId": "String",
  "privateLinkIds": [
    "Integer"
  ]
}
```


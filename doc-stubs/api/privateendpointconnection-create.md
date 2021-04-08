---
title: "Create privateEndpointConnection"
description: "Create a new privateEndpointConnection object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create privateEndpointConnection
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [privateEndpointConnection](../resources/privateendpointconnection.md) object.

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
POST /policies/privateLinkResourcePolicies/{privateLinkResourcePolicyId}/privateEndpointConnections
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [privateEndpointConnection](../resources/privateendpointconnection.md) object.

The following table shows the properties that are required when you create the [privateEndpointConnection](../resources/privateendpointconnection.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|externalPrivateEndpointId|String|**TODO: Add Description**|
|privateLinkIds|Int64 collection|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [privateEndpointConnection](../resources/privateendpointconnection.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_privateendpointconnection_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/policies/privateLinkResourcePolicies/{privateLinkResourcePolicyId}/privateEndpointConnections
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
  "truncated": true,
  "@odata.type": "microsoft.graph.privateEndpointConnection"
}
-->
``` http
HTTP/1.1 201 Created
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


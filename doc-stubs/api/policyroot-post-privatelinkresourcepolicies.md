---
title: "Create privateLinkResourcePolicy"
description: "Create a new privateLinkResourcePolicy object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create privateLinkResourcePolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new privateLinkResourcePolicy object.

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
POST /policies/privateLinkResourcePolicies
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [privateLinkResourcePolicy](../resources/privatelinkresourcepolicy.md) object.

The following table shows the properties that are required when you create the [privateLinkResourcePolicy](../resources/privatelinkresourcepolicy.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|externalPrivateLinkId|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|allowedTenantIds|String collection|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [privateLinkResourcePolicy](../resources/privatelinkresourcepolicy.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_privatelinkresourcepolicy_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/policies/privateLinkResourcePolicies
Content-Type: application/json
Content-length: 178

{
  "@odata.type": "#microsoft.graph.privateLinkResourcePolicy",
  "externalPrivateLinkId": "String",
  "displayName": "String",
  "allowedTenantIds": [
    "String"
  ]
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.privateLinkResourcePolicy"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.privateLinkResourcePolicy",
  "id": "0a63a7f9-a7f9-0a63-f9a7-630af9a7630a",
  "externalPrivateLinkId": "String",
  "displayName": "String",
  "allowedTenantIds": [
    "String"
  ]
}
```


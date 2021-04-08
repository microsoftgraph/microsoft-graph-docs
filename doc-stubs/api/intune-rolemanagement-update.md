---
title: "Update roleManagement"
description: "Update the properties of a roleManagement object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update roleManagement
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [roleManagement](../resources/intune-rolemanagement.md) object.

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
PATCH /roleManagement
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [roleManagement](../resources/intune-rolemanagement.md) object.

The following table shows the properties that are required when you update the [roleManagement](../resources/intune-rolemanagement.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [roleManagement](../resources/intune-rolemanagement.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_rolemanagement"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/roleManagement
Content-Type: application/json
Content-length: 56

{
  "@odata.type": "#microsoft.graph.roleManagement"
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
  "@odata.type": "#microsoft.graph.roleManagement",
  "id": "d9ee6289-6289-d9ee-8962-eed98962eed9"
}
```


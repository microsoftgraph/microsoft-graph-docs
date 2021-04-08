---
title: "Create rbacApplicationMultiple"
description: "Create a new rbacApplicationMultiple object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create rbacApplicationMultiple
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new rbacApplicationMultiple object.

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
POST /roleManagement/cloudPC
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [rbacApplicationMultiple](../resources/rbacapplicationmultiple.md) object.

The following table shows the properties that are required when you create the [rbacApplicationMultiple](../resources/rbacapplicationmultiple.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|



## Response

If successful, this method returns a `201 Created` response code and a [rbacApplicationMultiple](../resources/rbacapplicationmultiple.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_rbacapplicationmultiple_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/roleManagement/cloudPC
Content-Type: application/json
Content-length: 65

{
  "@odata.type": "#microsoft.graph.rbacApplicationMultiple"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.rbacApplicationMultiple"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.rbacApplicationMultiple",
  "id": "620d0089-0089-620d-8900-0d6289000d62"
}
```


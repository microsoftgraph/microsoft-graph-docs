---
title: "Create presence"
description: "Create a new presence object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create presence
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [presence](../resources/presence.md) object.

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
POST /communications/presences
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [presence](../resources/presence.md) object.

The following table shows the properties that are required when you create the [presence](../resources/presence.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|availability|String|**TODO: Add Description**|
|activity|String|**TODO: Add Description**|
|outOfOfficeSettings|[outOfOfficeSettings](../resources/outofofficesettings.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [presence](../resources/presence.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_presence_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/communications/presences
Content-Type: application/json
Content-length: 196

{
  "@odata.type": "#microsoft.graph.presence",
  "availability": "String",
  "activity": "String",
  "outOfOfficeSettings": {
    "@odata.type": "microsoft.graph.outOfOfficeSettings"
  }
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.presence"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.presence",
  "id": "2d1642e8-42e8-2d16-e842-162de842162d",
  "availability": "String",
  "activity": "String",
  "outOfOfficeSettings": {
    "@odata.type": "microsoft.graph.outOfOfficeSettings"
  }
}
```


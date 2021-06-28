---
title: "Update presence"
description: "Update the properties of a presence object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update presence
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [presence](../resources/presence.md) object.

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
PATCH /me/presence
PATCH /users/{usersId}/presence
PATCH /communications/presences/{presenceId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [presence](../resources/presence.md) object.

The following table shows the properties that are required when you update the [presence](../resources/presence.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|availability|String|**TODO: Add Description**|
|activity|String|**TODO: Add Description**|
|outOfOfficeSettings|[outOfOfficeSettings](../resources/outofofficesettings.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [presence](../resources/presence.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_presence"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/me/presence
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
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
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


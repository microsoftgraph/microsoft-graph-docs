---
title: "Create group"
description: "Create a new group object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create group
Namespace: microsoft.graph.termStore

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [group](../resources/termstore-group.md) object.

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
POST /sites/{sitesId}/termStore/groups
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [group](../resources/termstore-group.md) object.

The following table shows the properties that are required when you create the [group](../resources/termstore-group.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/termstore-entity.md)|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|scope|termGroupScope|**TODO: Add Description**. Possible values are: `global`, `system`, `siteCollection`.|
|parentSiteId|String|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [group](../resources/termstore-group.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_group_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/sites/{sitesId}/termStore/groups
Content-Type: application/json
Content-length: 164

{
  "@odata.type": "#microsoft.graph.termStore.group",
  "description": "String",
  "displayName": "String",
  "scope": "String",
  "parentSiteId": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.termStore.group"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.termStore.group",
  "id": "1b0e129d-129d-1b0e-9d12-0e1b9d120e1b",
  "description": "String",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "scope": "String",
  "parentSiteId": "String"
}
```


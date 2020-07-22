---
title: "Get linkedResources"
description: "Read the properties and relationships of a linkedResource object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get linkedResources
Namespace: microsoft.graph

Read the properties and relationships of a [linkedResource](../resources/linkedresource.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/concepts/permissions-reference.md).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|Tasks.Read|
|Delegated (personal Microsoft account)|Tasks.Read|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tasks/{tasksId}/linkedResources
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [linkedResource](../resources/linkedresource.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_linkedresource"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/tasks/{tasksId}/linkedResources
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.linkedResource"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
{
  "value": {
    "@odata.type": "#microsoft.graph.linkedResource",
    "id": "f9cddce2-dce2-f9cd-e2dc-cdf9e2dccdf9",
    "webUrl": "http:://microsoft.com",
    "applicationName": "Microsoft",
    "displayName": "Microsoft",
    "externalId": "dk9cddce2-dce2-f9dd-e2dc-cdf9e2dccdf9"
  }
}
```


---
title: "List deployments"
description: "Get a list of deployment objects and their properties."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: apiPageType
---

# List deployments
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [deployment](../resources/windowsupdates-deployment.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|WindowsUpdates.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|WindowsUpdates.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/windows/updates/deployments
```

## Optional query parameters
This method supports some of the [OData query parameters](/graph/query-parameters) to help customize the response, including `$count`, `$filter`, `$orderBy`, `$select`, `$skip`, and `$top`.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [deployment](../resources/windowsupdates-deployment.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_deployment"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/deployments
```


### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.windowsUpdates.deployment)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.deployment",
      "id": "b5171742-1742-b517-4217-17b5421717b5",
      "state": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentState"
      },
      "content": {
        "@odata.type": "microsoft.graph.windowsUpdates.deployableContent"
      },
      "settings": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings"
      },
      "createdDateTime": "String (timestamp)",
      "lastModifiedDateTime": "String (timestamp)"
    }
  ]
}
```


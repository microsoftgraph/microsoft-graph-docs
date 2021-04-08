---
title: "List exactMatchSessions"
description: "Get a list of the exactMatchSession objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List exactMatchSessions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [exactMatchSession](../resources/exactmatchsession.md) objects and their properties.

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
GET /dataClassification/exactMatchDataStores/{exactMatchDataStoreId}/sessions
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

If successful, this method returns a `200 OK` response code and a collection of [exactMatchSession](../resources/exactmatchsession.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_exactmatchsession"
}
-->
``` http
GET https://graph.microsoft.com/beta/dataClassification/exactMatchDataStores/{exactMatchDataStoreId}/sessions
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.exactMatchSession)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.exactMatchSession",
      "id": "951ca0f8-a0f8-951c-f8a0-1c95f8a01c95",
      "creationDateTime": "String (timestamp)",
      "startDateTime": "String (timestamp)",
      "lastUpdatedDateTime": "String (timestamp)",
      "completionDateTime": "String (timestamp)",
      "error": {
        "@odata.type": "microsoft.graph.classificationError"
      },
      "datastoreId": "String",
      "uploadAgentId": "String",
      "fields": [
        "String"
      ],
      "fileName": "String",
      "checksum": "String",
      "dataUploadURI": "String",
      "remainingBlockCount": "Integer",
      "totalBlockCount": "Integer",
      "state": "String",
      "uploadCompletionDateTime": "String (timestamp)",
      "processingCompletionDateTime": "String (timestamp)",
      "rowsPerBlock": "Integer",
      "totalJobCount": "Integer",
      "remainingJobCount": "Integer",
      "salt": "String"
    }
  ]
}
```


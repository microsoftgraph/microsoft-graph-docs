---
title: "Update exactMatchSession"
description: "Update the properties of an exactMatchSession object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update exactMatchSession
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [exactMatchSession](../resources/exactmatchsession.md) object.

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
PATCH /dataClassification/exactMatchDataStores/{exactMatchDataStoreId}/sessions/{exactMatchSessionId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [exactMatchSession](../resources/exactmatchsession.md) object.

The following table shows the properties that are required when you update the [exactMatchSession](../resources/exactmatchsession.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|creationDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [exactMatchJobBase](../resources/exactmatchjobbase.md)|
|startDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [exactMatchJobBase](../resources/exactmatchjobbase.md)|
|lastUpdatedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [exactMatchJobBase](../resources/exactmatchjobbase.md)|
|completionDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [exactMatchJobBase](../resources/exactmatchjobbase.md)|
|error|[classificationError](../resources/classificationerror.md)|**TODO: Add Description** Inherited from [exactMatchJobBase](../resources/exactmatchjobbase.md)|
|datastoreId|String|**TODO: Add Description**|
|uploadAgentId|String|**TODO: Add Description**|
|fields|String collection|**TODO: Add Description**|
|fileName|String|**TODO: Add Description**|
|checksum|String|**TODO: Add Description**|
|dataUploadURI|String|**TODO: Add Description**|
|remainingBlockCount|Int32|**TODO: Add Description**|
|totalBlockCount|Int32|**TODO: Add Description**|
|state|String|**TODO: Add Description**|
|uploadCompletionDateTime|DateTimeOffset|**TODO: Add Description**|
|processingCompletionDateTime|DateTimeOffset|**TODO: Add Description**|
|rowsPerBlock|Int32|**TODO: Add Description**|
|totalJobCount|Int32|**TODO: Add Description**|
|remainingJobCount|Int32|**TODO: Add Description**|
|salt|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [exactMatchSession](../resources/exactmatchsession.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_exactmatchsession"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/dataClassification/exactMatchDataStores/{exactMatchDataStoreId}/sessions/{exactMatchSessionId}
Content-Type: application/json
Content-length: 811

{
  "@odata.type": "#microsoft.graph.exactMatchSession",
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
  "@odata.type": "#microsoft.graph.exactMatchSession",
  "id": "0389b593-b593-0389-93b5-890393b58903",
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
```


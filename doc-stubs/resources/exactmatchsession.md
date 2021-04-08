---
title: "exactMatchSession resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# exactMatchSession resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [exactMatchJobBase](../resources/exactmatchjobbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List exactMatchSessions](../api/exactmatchsession-list.md)|[exactMatchSession](../resources/exactmatchsession.md) collection|Get a list of the [exactMatchSession](../resources/exactmatchsession.md) objects and their properties.|
|[Create exactMatchSession](../api/exactmatchsession-create.md)|[exactMatchSession](../resources/exactmatchsession.md)|Create a new [exactMatchSession](../resources/exactmatchsession.md) object.|
|[Get exactMatchSession](../api/exactmatchsession-get.md)|[exactMatchSession](../resources/exactmatchsession.md)|Read the properties and relationships of an [exactMatchSession](../resources/exactmatchsession.md) object.|
|[Update exactMatchSession](../api/exactmatchsession-update.md)|[exactMatchSession](../resources/exactmatchsession.md)|Update the properties of an [exactMatchSession](../resources/exactmatchsession.md) object.|
|[Delete exactMatchSession](../api/exactmatchsession-delete.md)|None|Deletes an [exactMatchSession](../resources/exactmatchsession.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|checksum|String|**TODO: Add Description**|
|completionDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [exactMatchJobBase](../resources/exactmatchjobbase.md)|
|creationDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [exactMatchJobBase](../resources/exactmatchjobbase.md)|
|datastoreId|String|**TODO: Add Description**|
|dataUploadURI|String|**TODO: Add Description**|
|error|[classificationError](../resources/classificationerror.md)|**TODO: Add Description** Inherited from [exactMatchJobBase](../resources/exactmatchjobbase.md)|
|fields|String collection|**TODO: Add Description**|
|fileName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|lastUpdatedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [exactMatchJobBase](../resources/exactmatchjobbase.md)|
|processingCompletionDateTime|DateTimeOffset|**TODO: Add Description**|
|remainingBlockCount|Int32|**TODO: Add Description**|
|remainingJobCount|Int32|**TODO: Add Description**|
|rowsPerBlock|Int32|**TODO: Add Description**|
|salt|String|**TODO: Add Description**|
|startDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [exactMatchJobBase](../resources/exactmatchjobbase.md)|
|state|String|**TODO: Add Description**|
|totalBlockCount|Int32|**TODO: Add Description**|
|totalJobCount|Int32|**TODO: Add Description**|
|uploadAgentId|String|**TODO: Add Description**|
|uploadCompletionDateTime|DateTimeOffset|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|uploadAgent|[exactMatchUploadAgent](../resources/exactmatchuploadagent.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.exactMatchSession",
  "baseType": "microsoft.graph.exactMatchJobBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.exactMatchSession",
  "id": "String (identifier)",
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


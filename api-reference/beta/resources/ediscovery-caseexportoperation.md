---
title: "caseExportOperation resource type"
description: "Represents the process of an eDiscovery export."
localization_priority: Normal
author: "mahage-msft"
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# caseExportOperation resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the process of an eDiscovery export. The **caseExportOperation** can only be retrieved from the `Location` header in the response to a [reviewset export](../api/ediscovery-reviewset-export.md).

Inherits from [caseOperation](../resources/ediscovery-caseoperation.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[getDownloadUrl](../api/ediscovery-caseexportoperation-getdownloadurl.md)|String| Returns the URL for the export.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|action|[microsoft.graph.ediscovery.caseAction](../resources/ediscovery-caseoperation.md#caseaction-values)| The case action for this entity will always be `contentExport`. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md).|
|azureBlobContainer|String| The name of the Azure storage location where the export will be stored. This only applies to exports stored in your own Azure storage location. |
|azureBlobToken|String| The SAS token for the Azure storage location.  This only applies to exports stored in your own Azure storage location. |
|completedDateTime|DateTimeOffset| The date and time the export was completed.  Inherited from [caseOperation](../resources/ediscovery-caseoperation.md)|
|createdBy|[identitySet](../resources/identityset.md)| The user who initiated the export operation. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md)|
|createdDateTime|DateTimeOffset| The date and time the export was created. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md)|
|description|String| The description provided for the export. |
|exportOptions|microsoft.graph.ediscovery.exportOptions| The options provided for the export. See [reviewSet: export](../api/ediscovery-reviewset-export.md) for more details. Possible values are: `originalFiles`, `text`, `pdfReplacement`, `fileInfo`, `tags`.|
|exportStructure|microsoft.graph.ediscovery.exportFileStructure|The options provided that specify the structure of the export. See [reviewSet: export](../api/ediscovery-reviewset-export.md) for more details. Possible values are: `none`, `directory`, `pst`.|
|id|String| The ID for the operation. Read-only. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md).|
|outputName|String| The name provided for the export.|
|percentProgress|Int32| The progress of the operation. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md)|
|resultInfo|[resultInfo](../resources/resultinfo.md)|Contains success and failure-specific result information. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md)|
|status|[microsoft.graph.ediscovery.caseOperationStatus](../resources/ediscovery-caseoperation.md#caseoperationstatus-values)|The status of the case operation. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md). Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`.|

### exportOptions values

|Member| Description |
|:---|:---|
|originalFiles| Include copies of the original files - exclude this option when generating reports only |
|text| Include raw extracted text files for each document. |
|pdfReplacement| If redacted PDF files are generated during review, these files are available for export. You can choose to export the redacted PDFs instead of the original native files by including this option. |
|fileInfo| Include the summery and load file - this should always be included. |
|tags| Include document tags that were applied during review in the load file. |

### exportFileStructure values

|Member| Description |
|:---|:---|
|directory| Maps to the condensed directory structure commonly used by eDiscovery tools. All files are exported to a root file called NativeFiles. |
|pst| Emails are stored in PSTs while documents from sites are stored in folders that represent the original native folder structure. |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|reviewSet|[microsoft.graph.ediscovery.reviewSet](../resources/ediscovery-reviewset.md)| The review set the content is being exported from. |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.caseExportOperation",
  "baseType": "microsoft.graph.ediscovery.caseOperation",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.caseExportOperation",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "completedDateTime": "String (timestamp)",
  "percentProgress": "Integer",
  "status": "String",
  "action": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "resultInfo": {
    "@odata.type": "microsoft.graph.resultInfo"
  },
  "outputName": "String",
  "description": "String",
  "outputFolderId": "String",
  "azureBlobContainer": "String",
  "azureBlobToken": "String",
  "exportOptions": "String",
  "exportStructure": "String"
}
```

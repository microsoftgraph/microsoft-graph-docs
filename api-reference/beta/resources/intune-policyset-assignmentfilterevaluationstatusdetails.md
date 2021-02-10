---
title: "assignmentFilterEvaluationStatusDetails resource type"
description: "A class containing information about the payloads on which filter has been applied."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# assignmentFilterEvaluationStatusDetails resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A class containing information about the payloads on which filter has been applied.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List assignmentFilterEvaluationStatusDetailses](../api/intune-policyset-assignmentfilterevaluationstatusdetails-list.md)|[assignmentFilterEvaluationStatusDetails](../resources/intune-policyset-assignmentfilterevaluationstatusdetails.md) collection|List properties and relationships of the [assignmentFilterEvaluationStatusDetails](../resources/intune-policyset-assignmentfilterevaluationstatusdetails.md) objects.|
|[Get assignmentFilterEvaluationStatusDetails](../api/intune-policyset-assignmentfilterevaluationstatusdetails-get.md)|[assignmentFilterEvaluationStatusDetails](../resources/intune-policyset-assignmentfilterevaluationstatusdetails.md)|Read properties and relationships of the [assignmentFilterEvaluationStatusDetails](../resources/intune-policyset-assignmentfilterevaluationstatusdetails.md) object.|
|[Create assignmentFilterEvaluationStatusDetails](../api/intune-policyset-assignmentfilterevaluationstatusdetails-create.md)|[assignmentFilterEvaluationStatusDetails](../resources/intune-policyset-assignmentfilterevaluationstatusdetails.md)|Create a new [assignmentFilterEvaluationStatusDetails](../resources/intune-policyset-assignmentfilterevaluationstatusdetails.md) object.|
|[Delete assignmentFilterEvaluationStatusDetails](../api/intune-policyset-assignmentfilterevaluationstatusdetails-delete.md)|None|Deletes a [assignmentFilterEvaluationStatusDetails](../resources/intune-policyset-assignmentfilterevaluationstatusdetails.md).|
|[Update assignmentFilterEvaluationStatusDetails](../api/intune-policyset-assignmentfilterevaluationstatusdetails-update.md)|[assignmentFilterEvaluationStatusDetails](../resources/intune-policyset-assignmentfilterevaluationstatusdetails.md)|Update the properties of a [assignmentFilterEvaluationStatusDetails](../resources/intune-policyset-assignmentfilterevaluationstatusdetails.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the AssignmentFilterEvaluationStatusDetails entity.|
|payloadId|String|PayloadId on which filter has been applied.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.assignmentFilterEvaluationStatusDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.assignmentFilterEvaluationStatusDetails",
  "id": "String (identifier)",
  "payloadId": "String"
}
```





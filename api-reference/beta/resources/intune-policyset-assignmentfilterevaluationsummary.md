---
title: "assignmentFilterEvaluationSummary resource type"
description: "Represent result summary for assignment filter evaluation"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# assignmentFilterEvaluationSummary resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represent result summary for assignment filter evaluation

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignmentFilterId|String|Unique identifier for the assignment filter object|
|assignmentFilterLastModifiedDateTime|DateTimeOffset|The time the assignment filter was last modified.|
|assignmentFilterDisplayName|String|The admin defined name for assignment filter.|
|assignmentFilterPlatform|[devicePlatformType](../resources/intune-shared-deviceplatformtype.md)|The platform for which this assignment filter is created. Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`, `androidWorkProfile`, `unknown`.|
|evaluationResult|[assignmentFilterEvaluationResult](../resources/intune-policyset-assignmentfilterevaluationresult.md)|Assignment filter evaluation result. Possible values are: `unknown`, `match`, `notMatch`, `inconclusive`, `failure`, `notEvaluated`.|
|evaluationDateTime|DateTimeOffset|The time assignment filter was evaluated.|
|assignmentFilterType|[deviceAndAppManagementAssignmentFilterType](../resources/intune-shared-deviceandappmanagementassignmentfiltertype.md)|Indicate filter type either include or exclude. Possible values are: `none`, `include`, `exclude`.|
|assignmentFilterTypeAndEvaluationResults|[assignmentFilterTypeAndEvaluationResult](../resources/intune-policyset-assignmentfiltertypeandevaluationresult.md) collection|A collection of filter types and their corresponding evaluation results.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.assignmentFilterEvaluationSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.assignmentFilterEvaluationSummary",
  "assignmentFilterId": "String",
  "assignmentFilterLastModifiedDateTime": "String (timestamp)",
  "assignmentFilterDisplayName": "String",
  "assignmentFilterPlatform": "String",
  "evaluationResult": "String",
  "evaluationDateTime": "String (timestamp)",
  "assignmentFilterType": "String",
  "assignmentFilterTypeAndEvaluationResults": [
    {
      "@odata.type": "microsoft.graph.assignmentFilterTypeAndEvaluationResult",
      "assignmentFilterType": "String",
      "evaluationResult": "String"
    }
  ]
}
```





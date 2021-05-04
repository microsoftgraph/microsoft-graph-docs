---
title: "assignmentFilterStatusDetails resource type"
description: "Represent status details for device and payload and all associated applied filters."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# assignmentFilterStatusDetails resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represent status details for device and payload and all associated applied filters.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|managedDeviceId|String|Unique identifier for the device object.|
|payloadId|String|Unique identifier for payload object.|
|userId|String|Unique identifier for UserId object. Can be null|
|deviceProperties|[keyValuePair](../resources/intune-shared-keyvaluepair.md) collection|Device properties used for filter evaluation during device check-in time.|
|evalutionSummaries|[assignmentFilterEvaluationSummary](../resources/intune-policyset-assignmentfilterevaluationsummary.md) collection|Evaluation result summaries for each filter associated to device and payload|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.assignmentFilterStatusDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.assignmentFilterStatusDetails",
  "managedDeviceId": "String",
  "payloadId": "String",
  "userId": "String",
  "deviceProperties": [
    {
      "@odata.type": "microsoft.graph.keyValuePair",
      "name": "String",
      "value": "String"
    }
  ],
  "evalutionSummaries": [
    {
      "@odata.type": "microsoft.graph.assignmentFilterEvaluationSummary",
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
  ]
}
```





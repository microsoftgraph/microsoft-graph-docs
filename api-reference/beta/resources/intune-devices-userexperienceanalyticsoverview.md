---
title: "userExperienceAnalyticsOverview resource type"
description: "The user experience analytics overview entity contains the overall score and the scores and insights of every metric of all categories."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsOverview resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics overview entity contains the overall score and the scores and insights of every metric of all categories.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get userExperienceAnalyticsOverview](../api/intune-devices-userexperienceanalyticsoverview-get.md)|[userExperienceAnalyticsOverview](../resources/intune-devices-userexperienceanalyticsoverview.md)|Read properties and relationships of the [userExperienceAnalyticsOverview](../resources/intune-devices-userexperienceanalyticsoverview.md) object.|
|[Update userExperienceAnalyticsOverview](../api/intune-devices-userexperienceanalyticsoverview-update.md)|[userExperienceAnalyticsOverview](../resources/intune-devices-userexperienceanalyticsoverview.md)|Update the properties of a [userExperienceAnalyticsOverview](../resources/intune-devices-userexperienceanalyticsoverview.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics overview.|
|overallScore|Int32|The user experience analytics overall score.|
|deviceBootPerformanceOverallScore|Int32|The user experience analytics device boot performance overall score.|
|bestPracticesOverallScore|Int32|The user experience analytics best practices overall score.|
|insights|[userExperienceAnalyticsInsight](../resources/intune-devices-userexperienceanalyticsinsight.md) collection|The user experience analytics insights.|
|state|[userExperienceAnalyticsHealthState](../resources/intune-devices-userexperienceanalyticshealthstate.md)|The current health state of the user experience analytics overview. Possible values are: `unknown`, `insufficientData`, `needsAttention`, `meetingGoals`.|
|deviceBootPerformanceHealthState|[userExperienceAnalyticsHealthState](../resources/intune-devices-userexperienceanalyticshealthstate.md)|The current health state of the user experience analytics 'BootPerformance' category. Possible values are: `unknown`, `insufficientData`, `needsAttention`, `meetingGoals`.|
|bestPracticesHealthState|[userExperienceAnalyticsHealthState](../resources/intune-devices-userexperienceanalyticshealthstate.md)|The current health state of the user experience analytics 'BestPractices' category. Possible values are: `unknown`, `insufficientData`, `needsAttention`, `meetingGoals`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsOverview"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsOverview",
  "id": "String (identifier)",
  "overallScore": 1024,
  "deviceBootPerformanceOverallScore": 1024,
  "bestPracticesOverallScore": 1024,
  "insights": [
    {
      "@odata.type": "microsoft.graph.userExperienceAnalyticsInsight",
      "userExperienceAnalyticsMetricId": "String",
      "insightId": "String",
      "values": [
        {
          "@odata.type": "microsoft.graph.insightValueDouble",
          "value": "4.2"
        }
      ],
      "severity": "String"
    }
  ],
  "state": "String",
  "deviceBootPerformanceHealthState": "String",
  "bestPracticesHealthState": "String"
}
```





---
title: "userExperienceAnalyticsRegressionSummary resource type"
description: "The user experience analytics Regression Summary."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsRegressionSummary resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics Regression Summary.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get userExperienceAnalyticsRegressionSummary](../api/intune-devices-userexperienceanalyticsregressionsummary-get.md)|[userExperienceAnalyticsRegressionSummary](../resources/intune-devices-userexperienceanalyticsregressionsummary.md)|Read properties and relationships of the [userExperienceAnalyticsRegressionSummary](../resources/intune-devices-userexperienceanalyticsregressionsummary.md) object.|
|[Update userExperienceAnalyticsRegressionSummary](../api/intune-devices-userexperienceanalyticsregressionsummary-update.md)|[userExperienceAnalyticsRegressionSummary](../resources/intune-devices-userexperienceanalyticsregressionsummary.md)|Update the properties of a [userExperienceAnalyticsRegressionSummary](../resources/intune-devices-userexperienceanalyticsregressionsummary.md) object.|
|[summarizeDeviceRegressionPerformance function](../api/intune-devices-userexperienceanalyticsregressionsummary-summarizedeviceregressionperformance.md)|[userExperienceAnalyticsRegressionSummary](../resources/intune-devices-userexperienceanalyticsregressionsummary.md)|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics regression summary.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|modelRegression|[userExperienceAnalyticsMetric](../resources/intune-devices-userexperienceanalyticsmetric.md) collection|The metric values for the user experience analytics model regression.|
|manufacturerRegression|[userExperienceAnalyticsMetric](../resources/intune-devices-userexperienceanalyticsmetric.md) collection|The metric values for the user experience analytics Manufacturer regression.|
|operatingSystemRegression|[userExperienceAnalyticsMetric](../resources/intune-devices-userexperienceanalyticsmetric.md) collection|The metric values for the user experience analytics operating system regression.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsRegressionSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsRegressionSummary",
  "id": "String (identifier)"
}
```





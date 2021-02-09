---
title: "userExperienceAnalyticsResourcePerformance resource type"
description: "The user experience analytics resource performance entity."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsResourcePerformance resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics resource performance entity.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsResourcePerformances](../api/intune-devices-userexperienceanalyticsresourceperformance-list.md)|[userExperienceAnalyticsResourcePerformance](../resources/intune-devices-userexperienceanalyticsresourceperformance.md) collection|List properties and relationships of the [userExperienceAnalyticsResourcePerformance](../resources/intune-devices-userexperienceanalyticsresourceperformance.md) objects.|
|[Get userExperienceAnalyticsResourcePerformance](../api/intune-devices-userexperienceanalyticsresourceperformance-get.md)|[userExperienceAnalyticsResourcePerformance](../resources/intune-devices-userexperienceanalyticsresourceperformance.md)|Read properties and relationships of the [userExperienceAnalyticsResourcePerformance](../resources/intune-devices-userexperienceanalyticsresourceperformance.md) object.|
|[Create userExperienceAnalyticsResourcePerformance](../api/intune-devices-userexperienceanalyticsresourceperformance-create.md)|[userExperienceAnalyticsResourcePerformance](../resources/intune-devices-userexperienceanalyticsresourceperformance.md)|Create a new [userExperienceAnalyticsResourcePerformance](../resources/intune-devices-userexperienceanalyticsresourceperformance.md) object.|
|[Delete userExperienceAnalyticsResourcePerformance](../api/intune-devices-userexperienceanalyticsresourceperformance-delete.md)|None|Deletes a [userExperienceAnalyticsResourcePerformance](../resources/intune-devices-userexperienceanalyticsresourceperformance.md).|
|[Update userExperienceAnalyticsResourcePerformance](../api/intune-devices-userexperienceanalyticsresourceperformance-update.md)|[userExperienceAnalyticsResourcePerformance](../resources/intune-devices-userexperienceanalyticsresourceperformance.md)|Update the properties of a [userExperienceAnalyticsResourcePerformance](../resources/intune-devices-userexperienceanalyticsresourceperformance.md) object.|
|[summarizeDeviceResourcePerformance function](../api/intune-devices-userexperienceanalyticsresourceperformance-summarizedeviceresourceperformance.md)|[userExperienceAnalyticsResourcePerformance](../resources/intune-devices-userexperienceanalyticsresourceperformance.md) collection|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics resource performance entity.|
|deviceId|String|The id of the device.|
|deviceName|String|The name of the device.|
|model|String|The user experience analytics device model.|
|deviceCount|Int64|User experience analytics summarized device count.|
|manufacturer|String|The user experience analytics device manufacturer.|
|cpuSpikeTimePercentage|Double|CPU spike time in percentage. Valid values 0 to 100|
|ramSpikeTimePercentage|Double|RAM spike time in percentage. Valid values 0 to 100|
|cpuSpikeTimeScore|Int32|The user experience analytics device CPU spike time score. Valid values 0 to 100|
|cpuSpikeTimePercentageThreshold|Double|Threshold of cpuSpikeTimeScore. Valid values 0 to 100|
|ramSpikeTimeScore|Int32|The user experience analytics device RAM spike time score. Valid values 0 to 100|
|ramSpikeTimePercentageThreshold|Double|Threshold of ramSpikeTimeScore. Valid values 0 to 100|
|deviceResourcePerformanceScore|Int32|Resource performance score of a specific device. Valid values 0 to 100|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsResourcePerformance"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsResourcePerformance",
  "id": "String (identifier)",
  "deviceId": "String",
  "deviceName": "String",
  "model": "String",
  "deviceCount": 1024,
  "manufacturer": "String",
  "cpuSpikeTimePercentage": "4.2",
  "ramSpikeTimePercentage": "4.2",
  "cpuSpikeTimeScore": 1024,
  "cpuSpikeTimePercentageThreshold": "4.2",
  "ramSpikeTimeScore": 1024,
  "ramSpikeTimePercentageThreshold": "4.2",
  "deviceResourcePerformanceScore": 1024
}
```





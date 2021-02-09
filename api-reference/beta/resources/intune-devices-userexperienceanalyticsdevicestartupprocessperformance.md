---
title: "userExperienceAnalyticsDeviceStartupProcessPerformance resource type"
description: "The user experience analytics device startup process performance."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsDeviceStartupProcessPerformance resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics device startup process performance.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsDeviceStartupProcessPerformances](../api/intune-devices-userexperienceanalyticsdevicestartupprocessperformance-list.md)|[userExperienceAnalyticsDeviceStartupProcessPerformance](../resources/intune-devices-userexperienceanalyticsdevicestartupprocessperformance.md) collection|List properties and relationships of the [userExperienceAnalyticsDeviceStartupProcessPerformance](../resources/intune-devices-userexperienceanalyticsdevicestartupprocessperformance.md) objects.|
|[Get userExperienceAnalyticsDeviceStartupProcessPerformance](../api/intune-devices-userexperienceanalyticsdevicestartupprocessperformance-get.md)|[userExperienceAnalyticsDeviceStartupProcessPerformance](../resources/intune-devices-userexperienceanalyticsdevicestartupprocessperformance.md)|Read properties and relationships of the [userExperienceAnalyticsDeviceStartupProcessPerformance](../resources/intune-devices-userexperienceanalyticsdevicestartupprocessperformance.md) object.|
|[Create userExperienceAnalyticsDeviceStartupProcessPerformance](../api/intune-devices-userexperienceanalyticsdevicestartupprocessperformance-create.md)|[userExperienceAnalyticsDeviceStartupProcessPerformance](../resources/intune-devices-userexperienceanalyticsdevicestartupprocessperformance.md)|Create a new [userExperienceAnalyticsDeviceStartupProcessPerformance](../resources/intune-devices-userexperienceanalyticsdevicestartupprocessperformance.md) object.|
|[Delete userExperienceAnalyticsDeviceStartupProcessPerformance](../api/intune-devices-userexperienceanalyticsdevicestartupprocessperformance-delete.md)|None|Deletes a [userExperienceAnalyticsDeviceStartupProcessPerformance](../resources/intune-devices-userexperienceanalyticsdevicestartupprocessperformance.md).|
|[Update userExperienceAnalyticsDeviceStartupProcessPerformance](../api/intune-devices-userexperienceanalyticsdevicestartupprocessperformance-update.md)|[userExperienceAnalyticsDeviceStartupProcessPerformance](../resources/intune-devices-userexperienceanalyticsdevicestartupprocessperformance.md)|Update the properties of a [userExperienceAnalyticsDeviceStartupProcessPerformance](../resources/intune-devices-userexperienceanalyticsdevicestartupprocessperformance.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics device startup process performance.|
|processName|String|User experience analytics device startup process name.|
|productName|String|The user experience analytics device startup process product name.|
|publisher|String|The User experience analytics device startup process publisher.|
|deviceCount|Int64|User experience analytics device startup process summarized count.|
|medianImpactInMs|Int32|User experience analytics device startup process median impact in milliseconds.|
|totalImpactInMs|Int32|User experience analytics device startup process total impact in milliseconds.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsDeviceStartupProcessPerformance"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsDeviceStartupProcessPerformance",
  "id": "String (identifier)",
  "processName": "String",
  "productName": "String",
  "publisher": "String",
  "deviceCount": 1024,
  "medianImpactInMs": 1024,
  "totalImpactInMs": 1024
}
```





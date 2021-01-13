---
title: "userExperienceAnalyticsDevicePerformance resource type"
description: "The user experience analytics device performance entity contains device boot performance details."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsDevicePerformance resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics device performance entity contains device boot performance details.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsDevicePerformances](../api/intune-devices-userexperienceanalyticsdeviceperformance-list.md)|[userExperienceAnalyticsDevicePerformance](../resources/intune-devices-userexperienceanalyticsdeviceperformance.md) collection|List properties and relationships of the [userExperienceAnalyticsDevicePerformance](../resources/intune-devices-userexperienceanalyticsdeviceperformance.md) objects.|
|[Get userExperienceAnalyticsDevicePerformance](../api/intune-devices-userexperienceanalyticsdeviceperformance-get.md)|[userExperienceAnalyticsDevicePerformance](../resources/intune-devices-userexperienceanalyticsdeviceperformance.md)|Read properties and relationships of the [userExperienceAnalyticsDevicePerformance](../resources/intune-devices-userexperienceanalyticsdeviceperformance.md) object.|
|[Create userExperienceAnalyticsDevicePerformance](../api/intune-devices-userexperienceanalyticsdeviceperformance-create.md)|[userExperienceAnalyticsDevicePerformance](../resources/intune-devices-userexperienceanalyticsdeviceperformance.md)|Create a new [userExperienceAnalyticsDevicePerformance](../resources/intune-devices-userexperienceanalyticsdeviceperformance.md) object.|
|[Delete userExperienceAnalyticsDevicePerformance](../api/intune-devices-userexperienceanalyticsdeviceperformance-delete.md)|None|Deletes a [userExperienceAnalyticsDevicePerformance](../resources/intune-devices-userexperienceanalyticsdeviceperformance.md).|
|[Update userExperienceAnalyticsDevicePerformance](../api/intune-devices-userexperienceanalyticsdeviceperformance-update.md)|[userExperienceAnalyticsDevicePerformance](../resources/intune-devices-userexperienceanalyticsdeviceperformance.md)|Update the properties of a [userExperienceAnalyticsDevicePerformance](../resources/intune-devices-userexperienceanalyticsdeviceperformance.md) object.|
|[summarizeDevicePerformanceDevices function](../api/intune-devices-userexperienceanalyticsdeviceperformance-summarizedeviceperformancedevices.md)|[userExperienceAnalyticsDevicePerformance](../resources/intune-devices-userexperienceanalyticsdeviceperformance.md) collection|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics device boot performance device.|
|deviceName|String|The user experience analytics device name.|
|model|String|The user experience analytics device model.|
|manufacturer|String|The user experience analytics device manufacturer.|
|diskType|[diskType](../resources/intune-devices-disktype.md)|The user experience analytics device disk type. Possible values are: `unkown`, `hdd`, `ssd`.|
|operatingSystemVersion|String|The user experience analytics device Operating System version.|
|bootScore|Int32|The user experience analytics device boot score.|
|coreBootTimeInMs|Int32|The user experience analytics device core boot time in milliseconds.|
|groupPolicyBootTimeInMs|Int32|The user experience analytics device group policy boot time in milliseconds.|
|healthStatus|[userExperienceAnalyticsHealthState](../resources/intune-devices-userexperienceanalyticshealthstate.md)|The health state of the user experience analytics device. Possible values are: `unknown`, `insufficientData`, `needsAttention`, `meetingGoals`.|
|loginScore|Int32|The user experience analytics device login score.|
|coreLoginTimeInMs|Int32|The user experience analytics device core login time in milliseconds.|
|groupPolicyLoginTimeInMs|Int32|The user experience analytics device group policy login time in milliseconds.|
|deviceCount|Int64|User experience analytics summarized device count.|
|responsiveDesktopTimeInMs|Int32|The user experience analytics responsive desktop time in milliseconds.|
|blueScreenCount|Int32|Number of Blue Screens in the last 14 days. Valid values 0 to 9999999|
|restartCount|Int32|Number of Restarts in the last 14 days. Valid values 0 to 9999999|
|averageBlueScreens|Double|Average (mean) number of Blue Screens per device in the last 14 days. Valid values 0 to 9999999|
|averageRestarts|Double|Average (mean) number of Restarts per device in the last 14 days. Valid values 0 to 9999999|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsDevicePerformance"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsDevicePerformance",
  "id": "String (identifier)",
  "deviceName": "String",
  "model": "String",
  "manufacturer": "String",
  "diskType": "String",
  "operatingSystemVersion": "String",
  "bootScore": 1024,
  "coreBootTimeInMs": 1024,
  "groupPolicyBootTimeInMs": 1024,
  "healthStatus": "String",
  "loginScore": 1024,
  "coreLoginTimeInMs": 1024,
  "groupPolicyLoginTimeInMs": 1024,
  "deviceCount": 1024,
  "responsiveDesktopTimeInMs": 1024,
  "blueScreenCount": 1024,
  "restartCount": 1024,
  "averageBlueScreens": "4.2",
  "averageRestarts": "4.2"
}
```





---
title: "userExperienceAnalyticsAppHealthAppPerformanceByOSVersion resource type"
description: "The user experience analytics applicaiton performance entity contains app performance details by OS version."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsAppHealthAppPerformanceByOSVersion resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics applicaiton performance entity contains app performance details by OS version.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsAppHealthAppPerformanceByOSVersions](../api/intune-devices-userexperienceanalyticsapphealthappperformancebyosversion-list.md)|[userExperienceAnalyticsAppHealthAppPerformanceByOSVersion](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyosversion.md) collection|List properties and relationships of the [userExperienceAnalyticsAppHealthAppPerformanceByOSVersion](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyosversion.md) objects.|
|[Get userExperienceAnalyticsAppHealthAppPerformanceByOSVersion](../api/intune-devices-userexperienceanalyticsapphealthappperformancebyosversion-get.md)|[userExperienceAnalyticsAppHealthAppPerformanceByOSVersion](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyosversion.md)|Read properties and relationships of the [userExperienceAnalyticsAppHealthAppPerformanceByOSVersion](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyosversion.md) object.|
|[Create userExperienceAnalyticsAppHealthAppPerformanceByOSVersion](../api/intune-devices-userexperienceanalyticsapphealthappperformancebyosversion-create.md)|[userExperienceAnalyticsAppHealthAppPerformanceByOSVersion](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyosversion.md)|Create a new [userExperienceAnalyticsAppHealthAppPerformanceByOSVersion](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyosversion.md) object.|
|[Delete userExperienceAnalyticsAppHealthAppPerformanceByOSVersion](../api/intune-devices-userexperienceanalyticsapphealthappperformancebyosversion-delete.md)|None|Deletes a [userExperienceAnalyticsAppHealthAppPerformanceByOSVersion](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyosversion.md).|
|[Update userExperienceAnalyticsAppHealthAppPerformanceByOSVersion](../api/intune-devices-userexperienceanalyticsapphealthappperformancebyosversion-update.md)|[userExperienceAnalyticsAppHealthAppPerformanceByOSVersion](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyosversion.md)|Update the properties of a [userExperienceAnalyticsAppHealthAppPerformanceByOSVersion](../resources/intune-devices-userexperienceanalyticsapphealthappperformancebyosversion.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics app version performance object.|
|osVersion|String|The os version of the application.|
|osBuildNumber|String|The os build number of the application.|
|activeDeviceCount|Int32|The number of devices where the app has been active. Valid values -2147483648 to 2147483647|
|appName|String|The name of the application.|
|appDisplayName|String|The friendly name of the application.|
|appPublisher|String|The publisher of the application.|
|appUsageDuration|Int32|The total usage time of the application in minutes. Valid values -2147483648 to 2147483647|
|appCrashCount|Int32|The number of crashes for the app. Valid values -2147483648 to 2147483647|
|meanTimeToFailureInMinutes|Int32|The mean time to failure for the app in minutes. Valid values -2147483648 to 2147483647|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsAppHealthAppPerformanceByOSVersion"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsAppHealthAppPerformanceByOSVersion",
  "id": "String (identifier)",
  "osVersion": "String",
  "osBuildNumber": "String",
  "activeDeviceCount": 1024,
  "appName": "String",
  "appDisplayName": "String",
  "appPublisher": "String",
  "appUsageDuration": 1024,
  "appCrashCount": 1024,
  "meanTimeToFailureInMinutes": 1024
}
```





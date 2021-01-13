---
title: "userExperienceAnalyticsAppHealthDevicePerformanceDetails resource type"
description: "The user experience analytics device performance entity contains device performance details."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsAppHealthDevicePerformanceDetails resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics device performance entity contains device performance details.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsAppHealthDevicePerformanceDetailses](../api/intune-devices-userexperienceanalyticsapphealthdeviceperformancedetails-list.md)|[userExperienceAnalyticsAppHealthDevicePerformanceDetails](../resources/intune-devices-userexperienceanalyticsapphealthdeviceperformancedetails.md) collection|List properties and relationships of the [userExperienceAnalyticsAppHealthDevicePerformanceDetails](../resources/intune-devices-userexperienceanalyticsapphealthdeviceperformancedetails.md) objects.|
|[Get userExperienceAnalyticsAppHealthDevicePerformanceDetails](../api/intune-devices-userexperienceanalyticsapphealthdeviceperformancedetails-get.md)|[userExperienceAnalyticsAppHealthDevicePerformanceDetails](../resources/intune-devices-userexperienceanalyticsapphealthdeviceperformancedetails.md)|Read properties and relationships of the [userExperienceAnalyticsAppHealthDevicePerformanceDetails](../resources/intune-devices-userexperienceanalyticsapphealthdeviceperformancedetails.md) object.|
|[Create userExperienceAnalyticsAppHealthDevicePerformanceDetails](../api/intune-devices-userexperienceanalyticsapphealthdeviceperformancedetails-create.md)|[userExperienceAnalyticsAppHealthDevicePerformanceDetails](../resources/intune-devices-userexperienceanalyticsapphealthdeviceperformancedetails.md)|Create a new [userExperienceAnalyticsAppHealthDevicePerformanceDetails](../resources/intune-devices-userexperienceanalyticsapphealthdeviceperformancedetails.md) object.|
|[Delete userExperienceAnalyticsAppHealthDevicePerformanceDetails](../api/intune-devices-userexperienceanalyticsapphealthdeviceperformancedetails-delete.md)|None|Deletes a [userExperienceAnalyticsAppHealthDevicePerformanceDetails](../resources/intune-devices-userexperienceanalyticsapphealthdeviceperformancedetails.md).|
|[Update userExperienceAnalyticsAppHealthDevicePerformanceDetails](../api/intune-devices-userexperienceanalyticsapphealthdeviceperformancedetails-update.md)|[userExperienceAnalyticsAppHealthDevicePerformanceDetails](../resources/intune-devices-userexperienceanalyticsapphealthdeviceperformancedetails.md)|Update the properties of a [userExperienceAnalyticsAppHealthDevicePerformanceDetails](../resources/intune-devices-userexperienceanalyticsapphealthdeviceperformancedetails.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics device performance object.|
|eventDateTime|DateTimeOffset|The time the event occurred.|
|eventType|String|The type of the event.|
|appDisplayName|String|The friendly name of the application for which the event occurred.|
|deviceId|String|The id of the device.|
|deviceDisplayName|String|The name of the device.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsAppHealthDevicePerformanceDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsAppHealthDevicePerformanceDetails",
  "id": "String (identifier)",
  "eventDateTime": "String (timestamp)",
  "eventType": "String",
  "appDisplayName": "String",
  "deviceId": "String",
  "deviceDisplayName": "String"
}
```





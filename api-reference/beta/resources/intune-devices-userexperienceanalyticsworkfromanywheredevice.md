---
title: "userExperienceAnalyticsWorkFromAnywhereDevice resource type"
description: "The user experience analytics Device for work from anywhere report"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsWorkFromAnywhereDevice resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics Device for work from anywhere report

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsWorkFromAnywhereDevices](../api/intune-devices-userexperienceanalyticsworkfromanywheredevice-list.md)|[userExperienceAnalyticsWorkFromAnywhereDevice](../resources/intune-devices-userexperienceanalyticsworkfromanywheredevice.md) collection|List properties and relationships of the [userExperienceAnalyticsWorkFromAnywhereDevice](../resources/intune-devices-userexperienceanalyticsworkfromanywheredevice.md) objects.|
|[Get userExperienceAnalyticsWorkFromAnywhereDevice](../api/intune-devices-userexperienceanalyticsworkfromanywheredevice-get.md)|[userExperienceAnalyticsWorkFromAnywhereDevice](../resources/intune-devices-userexperienceanalyticsworkfromanywheredevice.md)|Read properties and relationships of the [userExperienceAnalyticsWorkFromAnywhereDevice](../resources/intune-devices-userexperienceanalyticsworkfromanywheredevice.md) object.|
|[Create userExperienceAnalyticsWorkFromAnywhereDevice](../api/intune-devices-userexperienceanalyticsworkfromanywheredevice-create.md)|[userExperienceAnalyticsWorkFromAnywhereDevice](../resources/intune-devices-userexperienceanalyticsworkfromanywheredevice.md)|Create a new [userExperienceAnalyticsWorkFromAnywhereDevice](../resources/intune-devices-userexperienceanalyticsworkfromanywheredevice.md) object.|
|[Delete userExperienceAnalyticsWorkFromAnywhereDevice](../api/intune-devices-userexperienceanalyticsworkfromanywheredevice-delete.md)|None|Deletes a [userExperienceAnalyticsWorkFromAnywhereDevice](../resources/intune-devices-userexperienceanalyticsworkfromanywheredevice.md).|
|[Update userExperienceAnalyticsWorkFromAnywhereDevice](../api/intune-devices-userexperienceanalyticsworkfromanywheredevice-update.md)|[userExperienceAnalyticsWorkFromAnywhereDevice](../resources/intune-devices-userexperienceanalyticsworkfromanywheredevice.md)|Update the properties of a [userExperienceAnalyticsWorkFromAnywhereDevice](../resources/intune-devices-userexperienceanalyticsworkfromanywheredevice.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics work from anywhere device.|
|deviceName|String|The work from anywhere device's name.|
|serialNumber|String|The user experience work from anywhere device's serial number.|
|manufacturer|String|The user experience work from anywhere device's manufacturer.|
|model|String|The user experience work from anywhere device's model.|
|ownership|String|The user experience work from anywhere device's ownership.|
|managedBy|String|The user experience work from anywhere management agent of the device.|
|autoPilotRegistered|Boolean|The user experience work from anywhere intune device's autopilotRegistered.|
|autoPilotProfileAssigned|Boolean|The user experience analytics work from anywhere intune device's autopilotProfileAssigned.|
|azureAdRegistered|Boolean|The user experience work from anywhere device's azureAdRegistered.|
|azureAdDeviceId|String|The user experience work from anywhere azure Ad device Id.|
|azureAdJoinType|String|The user experience work from anywhere device's azure Ad joinType.|
|osDescription|String|The user experience work from anywhere device's OS Description.|
|osVersion|String|The user experience work from anywhere device's OS Version.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsWorkFromAnywhereDevice"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsWorkFromAnywhereDevice",
  "id": "String (identifier)",
  "deviceName": "String",
  "serialNumber": "String",
  "manufacturer": "String",
  "model": "String",
  "ownership": "String",
  "managedBy": "String",
  "autoPilotRegistered": true,
  "autoPilotProfileAssigned": true,
  "azureAdRegistered": true,
  "azureAdDeviceId": "String",
  "azureAdJoinType": "String",
  "osDescription": "String",
  "osVersion": "String"
}
```





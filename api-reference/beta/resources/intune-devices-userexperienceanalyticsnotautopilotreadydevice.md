---
title: "userExperienceAnalyticsNotAutopilotReadyDevice resource type"
description: "The user experience analytics Device not windows autopilot ready."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsNotAutopilotReadyDevice resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics Device not windows autopilot ready.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsNotAutopilotReadyDevices](../api/intune-devices-userexperienceanalyticsnotautopilotreadydevice-list.md)|[userExperienceAnalyticsNotAutopilotReadyDevice](../resources/intune-devices-userexperienceanalyticsnotautopilotreadydevice.md) collection|List properties and relationships of the [userExperienceAnalyticsNotAutopilotReadyDevice](../resources/intune-devices-userexperienceanalyticsnotautopilotreadydevice.md) objects.|
|[Get userExperienceAnalyticsNotAutopilotReadyDevice](../api/intune-devices-userexperienceanalyticsnotautopilotreadydevice-get.md)|[userExperienceAnalyticsNotAutopilotReadyDevice](../resources/intune-devices-userexperienceanalyticsnotautopilotreadydevice.md)|Read properties and relationships of the [userExperienceAnalyticsNotAutopilotReadyDevice](../resources/intune-devices-userexperienceanalyticsnotautopilotreadydevice.md) object.|
|[Create userExperienceAnalyticsNotAutopilotReadyDevice](../api/intune-devices-userexperienceanalyticsnotautopilotreadydevice-create.md)|[userExperienceAnalyticsNotAutopilotReadyDevice](../resources/intune-devices-userexperienceanalyticsnotautopilotreadydevice.md)|Create a new [userExperienceAnalyticsNotAutopilotReadyDevice](../resources/intune-devices-userexperienceanalyticsnotautopilotreadydevice.md) object.|
|[Delete userExperienceAnalyticsNotAutopilotReadyDevice](../api/intune-devices-userexperienceanalyticsnotautopilotreadydevice-delete.md)|None|Deletes a [userExperienceAnalyticsNotAutopilotReadyDevice](../resources/intune-devices-userexperienceanalyticsnotautopilotreadydevice.md).|
|[Update userExperienceAnalyticsNotAutopilotReadyDevice](../api/intune-devices-userexperienceanalyticsnotautopilotreadydevice-update.md)|[userExperienceAnalyticsNotAutopilotReadyDevice](../resources/intune-devices-userexperienceanalyticsnotautopilotreadydevice.md)|Update the properties of a [userExperienceAnalyticsNotAutopilotReadyDevice](../resources/intune-devices-userexperienceanalyticsnotautopilotreadydevice.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics intune device.|
|deviceName|String|The intune device's name.|
|serialNumber|String|The intune device's serial number.|
|manufacturer|String|The intune device's manufacturer.|
|model|String|The intune device's model.|
|managedBy|String|The intune device's managed by.|
|autoPilotRegistered|Boolean|The intune device's autopilotRegistered.|
|autoPilotProfileAssigned|Boolean|The intune device's autopilotProfileAssigned.|
|azureAdRegistered|Boolean|The intune device's azureAdRegistered.|
|azureAdJoinType|String|The intune device's azure Ad joinType.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsNotAutopilotReadyDevice"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsNotAutopilotReadyDevice",
  "id": "String (identifier)",
  "deviceName": "String",
  "serialNumber": "String",
  "manufacturer": "String",
  "model": "String",
  "managedBy": "String",
  "autoPilotRegistered": true,
  "autoPilotProfileAssigned": true,
  "azureAdRegistered": true,
  "azureAdJoinType": "String"
}
```





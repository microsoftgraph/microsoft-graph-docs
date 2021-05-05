---
title: "userExperienceAnalyticsAutopilotDevicesSummary resource type"
description: "The user experience analytics summary of Devices not windows autopilot ready."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsAutopilotDevicesSummary resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics summary of Devices not windows autopilot ready.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|devicesNotAutopilotRegistered|Int32|The count of intune devices that are not autopilot registerd.|
|devicesWithoutAutopilotProfileAssigned|Int32|The count of intune devices not autopilot profile assigned.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsAutopilotDevicesSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsAutopilotDevicesSummary",
  "devicesNotAutopilotRegistered": 1024,
  "devicesWithoutAutopilotProfileAssigned": 1024
}
```





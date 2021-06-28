---
title: "deviceManagement resource type"
description: "Singleton entity that acts as a container for all device management functionality."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagement resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for all device management functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune-deviceconfig-devicemanagement-get.md)|[deviceManagement](../resources/intune-deviceconfig-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-deviceconfig-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-deviceconfig-devicemanagement-update.md)|[deviceManagement](../resources/intune-deviceconfig-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-deviceconfig-devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier|
|settings|[deviceManagementSettings](../resources/intune-deviceconfig-devicemanagementsettings.md)|Account level settings.|
|intuneAccountId|Guid|Intune Account Id for given tenant|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deviceConfigurations|[deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md) collection|The device configurations.|
|deviceCompliancePolicies|[deviceCompliancePolicy](../resources/intune-deviceconfig-devicecompliancepolicy.md) collection|The device compliance policies.|
|softwareUpdateStatusSummary|[softwareUpdateStatusSummary](../resources/intune-deviceconfig-softwareupdatestatussummary.md)|The software update status summary.|
|deviceCompliancePolicyDeviceStateSummary|[deviceCompliancePolicyDeviceStateSummary](../resources/intune-deviceconfig-devicecompliancepolicydevicestatesummary.md)|The device compliance state summary for this account.|
|deviceCompliancePolicySettingStateSummaries|[deviceCompliancePolicySettingStateSummary](../resources/intune-deviceconfig-devicecompliancepolicysettingstatesummary.md) collection|The summary states of compliance policy settings for this account.|
|deviceConfigurationDeviceStateSummaries|[deviceConfigurationDeviceStateSummary](../resources/intune-deviceconfig-deviceconfigurationdevicestatesummary.md)|The device configuration device state summary for this account.|
|iosUpdateStatuses|[iosUpdateDeviceStatus](../resources/intune-deviceconfig-iosupdatedevicestatus.md) collection|The IOS software update installation statuses for this account.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)",
  "settings": {
    "@odata.type": "microsoft.graph.deviceManagementSettings",
    "deviceComplianceCheckinThresholdDays": 1024,
    "isScheduledActionEnabled": true,
    "secureByDefault": true
  },
  "intuneAccountId": "Guid"
}
```





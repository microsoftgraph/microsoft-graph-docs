# deviceManagement resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device management functionality.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune_deviceconfig_devicemanagement_get.md)|[deviceManagement](../resources/intune_deviceconfig_devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_deviceconfig_devicemanagement.md) object.|
|[Update deviceManagement](../api/intune_deviceconfig_devicemanagement_update.md)|[deviceManagement](../resources/intune_deviceconfig_devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune_deviceconfig_devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier|
|settings|[deviceManagementSettings](../resources/intune_deviceconfig_devicemanagementsettings.md)|Account level settings.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deviceConfigurations|[deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md) collection|The device configurations.|
|deviceCompliancePolicies|[deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md) collection|The device compliance policies.|
|softwareUpdateStatusSummary|[softwareUpdateStatusSummary](../resources/intune_deviceconfig_softwareupdatestatussummary.md)|The software update status summary.|
|deviceCompliancePolicyDeviceStateSummary|[deviceCompliancePolicyDeviceStateSummary](../resources/intune_deviceconfig_devicecompliancepolicydevicestatesummary.md)|The device compliance state summary for this account.|
|deviceCompliancePolicySettingStateSummaries|[deviceCompliancePolicySettingStateSummary](../resources/intune_deviceconfig_devicecompliancepolicysettingstatesummary.md) collection|The summary states of compliance policy settings for this account.|
|deviceConfigurationDeviceStateSummaries|[deviceConfigurationDeviceStateSummary](../resources/intune_deviceconfig_deviceconfigurationdevicestatesummary.md)|The device configuration device state summary for this account.|
|iosUpdateStatuses|[iosUpdateDeviceStatus](../resources/intune_deviceconfig_iosupdatedevicestatus.md) collection|The IOS software update installation statuses for this account.|

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
  }
}
```




# deviceManagement resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device management functionality.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](../api/intune_deviceconfig_devicemanagement_get.md)|[deviceManagement](../resources/intune_deviceconfig_devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_deviceconfig_devicemanagement.md) object.|
|[Update deviceManagement](../api/intune_deviceconfig_devicemanagement_update.md)|[deviceManagement](../resources/intune_deviceconfig_devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune_deviceconfig_devicemanagement.md) object.|
|[List deviceConfigurations](../api/intune_deviceconfig_deviceconfiguration_list.md)|[deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md) collection|List properties and relationships of the [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md) objects.|
|[Create deviceConfiguration](../api/intune_deviceconfig_deviceconfiguration_create.md)|[deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|Create a new [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md) object.|
|[List deviceCompliancePolicies](../api/intune_deviceconfig_devicecompliancepolicy_list.md)|[deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md) collection|List properties and relationships of the [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md) objects.|
|[Create deviceCompliancePolicy](../api/intune_deviceconfig_devicecompliancepolicy_create.md)|[deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|Create a new [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md) object.|
|[Get softwareUpdateStatusSummary](../api/intune_deviceconfig_softwareupdatestatussummary_get.md)|[softwareUpdateStatusSummary](../resources/intune_deviceconfig_softwareupdatestatussummary.md)|Read properties and relationships of the [softwareUpdateStatusSummary](../resources/intune_deviceconfig_softwareupdatestatussummary.md) object.|
|[List cloudPkiSubscriptions](../api/intune_deviceconfig_cloudpkisubscription_list.md)|[cloudPkiSubscription](../resources/intune_deviceconfig_cloudpkisubscription.md) collection|List properties and relationships of the [cloudPkiSubscription](../resources/intune_deviceconfig_cloudpkisubscription.md) objects.|
|[Create cloudPkiSubscription](../api/intune_deviceconfig_cloudpkisubscription_create.md)|[cloudPkiSubscription](../resources/intune_deviceconfig_cloudpkisubscription.md)|Create a new [cloudPkiSubscription](../resources/intune_deviceconfig_cloudpkisubscription.md) object.|
|[Get deviceCompliancePolicyDeviceStateSummary](../api/intune_deviceconfig_devicecompliancepolicydevicestatesummary_get.md)|[deviceCompliancePolicyDeviceStateSummary](../resources/intune_deviceconfig_devicecompliancepolicydevicestatesummary.md)|Read properties and relationships of the [deviceCompliancePolicyDeviceStateSummary](../resources/intune_deviceconfig_devicecompliancepolicydevicestatesummary.md) object.|
|[List deviceCompliancePolicySettingStateSummaries](../api/intune_deviceconfig_devicecompliancepolicysettingstatesummary_list.md)|[deviceCompliancePolicySettingStateSummary](../resources/intune_deviceconfig_devicecompliancepolicysettingstatesummary.md) collection|List properties and relationships of the [deviceCompliancePolicySettingStateSummary](../resources/intune_deviceconfig_devicecompliancepolicysettingstatesummary.md) objects.|
|[Create deviceCompliancePolicySettingStateSummary](../api/intune_deviceconfig_devicecompliancepolicysettingstatesummary_create.md)|[deviceCompliancePolicySettingStateSummary](../resources/intune_deviceconfig_devicecompliancepolicysettingstatesummary.md)|Create a new [deviceCompliancePolicySettingStateSummary](../resources/intune_deviceconfig_devicecompliancepolicysettingstatesummary.md) object.|
|[Get deviceConfigurationDeviceStateSummary](../api/intune_deviceconfig_deviceconfigurationdevicestatesummary_get.md)|[deviceConfigurationDeviceStateSummary](../resources/intune_deviceconfig_deviceconfigurationdevicestatesummary.md)|Read properties and relationships of the [deviceConfigurationDeviceStateSummary](../resources/intune_deviceconfig_deviceconfigurationdevicestatesummary.md) object.|
|[Get deviceConfigurationUserStateSummary](../api/intune_deviceconfig_deviceconfigurationuserstatesummary_get.md)|[deviceConfigurationUserStateSummary](../resources/intune_deviceconfig_deviceconfigurationuserstatesummary.md)|Read properties and relationships of the [deviceConfigurationUserStateSummary](../resources/intune_deviceconfig_deviceconfigurationuserstatesummary.md) object.|
|[List cartToClassAssociations](../api/intune_deviceconfig_carttoclassassociation_list.md)|[cartToClassAssociation](../resources/intune_deviceconfig_carttoclassassociation.md) collection|List properties and relationships of the [cartToClassAssociation](../resources/intune_deviceconfig_carttoclassassociation.md) objects.|
|[Create cartToClassAssociation](../api/intune_deviceconfig_carttoclassassociation_create.md)|[cartToClassAssociation](../resources/intune_deviceconfig_carttoclassassociation.md)|Create a new [cartToClassAssociation](../resources/intune_deviceconfig_carttoclassassociation.md) object.|
|[List iosUpdateDeviceStatuses](../api/intune_deviceconfig_iosupdatedevicestatus_list.md)|[iosUpdateDeviceStatus](../resources/intune_deviceconfig_iosupdatedevicestatus.md) collection|List properties and relationships of the [iosUpdateDeviceStatus](../resources/intune_deviceconfig_iosupdatedevicestatus.md) objects.|
|[Create iosUpdateDeviceStatus](../api/intune_deviceconfig_iosupdatedevicestatus_create.md)|[iosUpdateDeviceStatus](../resources/intune_deviceconfig_iosupdatedevicestatus.md)|Create a new [iosUpdateDeviceStatus](../resources/intune_deviceconfig_iosupdatedevicestatus.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|
|settings|[deviceManagementSettings](../resources/intune_deviceconfig_devicemanagementsettings.md)|Not yet documented|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|deviceConfigurations|[deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md) collection|The device configurations.|
|deviceCompliancePolicies|[deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md) collection|The device compliance policies.|
|softwareUpdateStatusSummary|[softwareUpdateStatusSummary](../resources/intune_deviceconfig_softwareupdatestatussummary.md)|The software update status summary.|
|cloudPkiSubscriptions|[cloudPkiSubscription](../resources/intune_deviceconfig_cloudpkisubscription.md) collection|The Cloud Pki Subscriptions profile.|
|deviceCompliancePolicyDeviceStateSummary|[deviceCompliancePolicyDeviceStateSummary](../resources/intune_deviceconfig_devicecompliancepolicydevicestatesummary.md)|The device compliance state summary for this account.|
|deviceCompliancePolicySettingStateSummaries|[deviceCompliancePolicySettingStateSummary](../resources/intune_deviceconfig_devicecompliancepolicysettingstatesummary.md) collection|The summary states of compliance policy settings for this account.|
|deviceConfigurationDeviceStateSummaries|[deviceConfigurationDeviceStateSummary](../resources/intune_deviceconfig_deviceconfigurationdevicestatesummary.md)|The device configuration device state summary for this account.|
|deviceConfigurationUserStateSummaries|[deviceConfigurationUserStateSummary](../resources/intune_deviceconfig_deviceconfigurationuserstatesummary.md)|The device configuration user state summary for this account.|
|cartToClassAssociations|[cartToClassAssociation](../resources/intune_deviceconfig_carttoclassassociation.md) collection|The Cart To Class Associations.|
|iosUpdateStatuses|[iosUpdateDeviceStatus](../resources/intune_deviceconfig_iosupdatedevicestatus.md) collection|The IOS software update installation statuses for this account.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)",
  "settings": {
    "@odata.type": "microsoft.graph.deviceManagementSettings",
    "windowsCommercialId": "String",
    "windowsCommercialIdLastModifiedTime": "String (timestamp)",
    "deviceComplianceCheckinThresholdDays": 1024,
    "isScheduledActionEnabled": true
  }
}
```




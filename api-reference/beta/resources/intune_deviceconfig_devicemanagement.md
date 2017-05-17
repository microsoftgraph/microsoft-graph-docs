# deviceManagement resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device management functionality.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](../api/intune_deviceconfig_devicemanagement_get.md)|[deviceManagement](../resources/intune_deviceconfig_devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_deviceconfig_devicemanagement.md) object.|
|[Update deviceManagement](../api/intune_deviceconfig_devicemanagement_update.md)|[deviceManagement](../resources/intune_deviceconfig_devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune_deviceconfig_devicemanagement.md) object.|
|[getDeviceComplianceSettingStates function](../api/intune_deviceconfig_devicemanagement_getdevicecompliancesettingstates.md)|[deviceComplianceSettingState](../resources/intune_deviceconfig_devicecompliancesettingstate.md) collection|Not yet documented|
|[List deviceConfigurations](../api/intune_deviceconfig_devicemanagement_list_deviceconfiguration.md)|[deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md) collection|Get the deviceConfigurations from the deviceConfigurations navigation property.|
|[Create deviceConfiguration](../api/intune_deviceconfig_devicemanagement_create_deviceconfiguration.md)|[deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|Create a new [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md) by posting to the deviceConfigurations collection.|
|[List deviceCompliancePolicies](../api/intune_deviceconfig_devicemanagement_list_devicecompliancepolicy.md)|[deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md) collection|Get the deviceCompliancePolicies from the deviceCompliancePolicies navigation property.|
|[Create deviceCompliancePolicy](../api/intune_deviceconfig_devicemanagement_create_devicecompliancepolicy.md)|[deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|Create a new [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md) by posting to the deviceCompliancePolicies collection.|
|[Get softwareUpdateStatusSummary](../api/intune_deviceconfig_devicemanagement_get_softwareupdatestatussummary.md)|[softwareUpdateStatusSummary](../resources/intune_deviceconfig_softwareupdatestatussummary.md)|Get the [softwareUpdateStatusSummary](../resources/intune_deviceconfig_softwareupdatestatussummary.md) from the softwareUpdateStatusSummary navigation property.|
|[List cloudPkiSubscriptions](../api/intune_deviceconfig_devicemanagement_list_cloudpkisubscription.md)|[cloudPkiSubscription](../resources/intune_deviceconfig_cloudpkisubscription.md) collection|Get the cloudPkiSubscriptions from the cloudPkiSubscriptions navigation property.|
|[Create cloudPkiSubscription](../api/intune_deviceconfig_devicemanagement_create_cloudpkisubscription.md)|[cloudPkiSubscription](../resources/intune_deviceconfig_cloudpkisubscription.md)|Create a new [cloudPkiSubscription](../resources/intune_deviceconfig_cloudpkisubscription.md) by posting to the cloudPkiSubscriptions collection.|
|[Get deviceCompliancePolicyDeviceStateSummary](../api/intune_deviceconfig_devicemanagement_get_devicecompliancepolicydevicestatesummary.md)|[deviceCompliancePolicyDeviceStateSummary](../resources/intune_deviceconfig_devicecompliancepolicydevicestatesummary.md)|Get the [deviceCompliancePolicyDeviceStateSummary](../resources/intune_deviceconfig_devicecompliancepolicydevicestatesummary.md) from the deviceCompliancePolicyDeviceStateSummary navigation property.|
|[List complianceSettingStateSummaries](../api/intune_deviceconfig_devicemanagement_list_compliancesettingstatesummary.md)|[complianceSettingStateSummary](../resources/intune_deviceconfig_compliancesettingstatesummary.md) collection|Get the complianceSettingStateSummaries from the complianceSettingStateSummaries navigation property.|
|[Create complianceSettingStateSummary](../api/intune_deviceconfig_devicemanagement_create_compliancesettingstatesummary.md)|[complianceSettingStateSummary](../resources/intune_deviceconfig_compliancesettingstatesummary.md)|Create a new [complianceSettingStateSummary](../resources/intune_deviceconfig_compliancesettingstatesummary.md) by posting to the complianceSettingStateSummaries collection.|
|[Get deviceConfigurationDeviceStateSummary](../api/intune_deviceconfig_devicemanagement_get_deviceconfigurationdevicestatesummary.md)|[deviceConfigurationDeviceStateSummary](../resources/intune_deviceconfig_deviceconfigurationdevicestatesummary.md)|Get the [deviceConfigurationDeviceStateSummary](../resources/intune_deviceconfig_deviceconfigurationdevicestatesummary.md) from the deviceConfigurationDeviceStateSummaries navigation property.|
|[List cartToClassAssociations](../api/intune_deviceconfig_devicemanagement_list_carttoclassassociation.md)|[cartToClassAssociation](../resources/intune_deviceconfig_carttoclassassociation.md) collection|Get the cartToClassAssociations from the cartToClassAssociations navigation property.|
|[Create cartToClassAssociation](../api/intune_deviceconfig_devicemanagement_create_carttoclassassociation.md)|[cartToClassAssociation](../resources/intune_deviceconfig_carttoclassassociation.md)|Create a new [cartToClassAssociation](../resources/intune_deviceconfig_carttoclassassociation.md) by posting to the cartToClassAssociations collection.|

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
|complianceSettingStateSummaries|[complianceSettingStateSummary](../resources/intune_deviceconfig_compliancesettingstatesummary.md) collection|The summary states of compliance policy settings for this account.|
|deviceConfigurationDeviceStateSummaries|[deviceConfigurationDeviceStateSummary](../resources/intune_deviceconfig_deviceconfigurationdevicestatesummary.md)|The device compliance state summary for this account.|
|cartToClassAssociations|[cartToClassAssociation](../resources/intune_deviceconfig_carttoclassassociation.md) collection|The Cart To Class Associations.|

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
    "deviceComplianceCheckinThresholdDays": 1024,
    "isScheduledActionEnabled": true
  }
}
```




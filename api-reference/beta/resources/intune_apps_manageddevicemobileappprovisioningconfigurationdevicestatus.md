# managedDeviceMobileAppProvisioningConfigurationDeviceStatus resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties, inherited properties and actions for an MDM app provisioning configuration status for a device.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List managedDeviceMobileAppProvisioningConfigurationDeviceStatuses](../api/intune_apps_manageddevicemobileappprovisioningconfigurationdevicestatus_list.md)|[managedDeviceMobileAppProvisioningConfigurationDeviceStatus](../resources/intune_apps_manageddevicemobileappprovisioningconfigurationdevicestatus.md) collection|List properties and relationships of the [managedDeviceMobileAppProvisioningConfigurationDeviceStatus](../resources/intune_apps_manageddevicemobileappprovisioningconfigurationdevicestatus.md) objects.|
|[Get managedDeviceMobileAppProvisioningConfigurationDeviceStatus](../api/intune_apps_manageddevicemobileappprovisioningconfigurationdevicestatus_get.md)|[managedDeviceMobileAppProvisioningConfigurationDeviceStatus](../resources/intune_apps_manageddevicemobileappprovisioningconfigurationdevicestatus.md)|Read properties and relationships of the [managedDeviceMobileAppProvisioningConfigurationDeviceStatus](../resources/intune_apps_manageddevicemobileappprovisioningconfigurationdevicestatus.md) object.|
|[Create managedDeviceMobileAppProvisioningConfigurationDeviceStatus](../api/intune_apps_manageddevicemobileappprovisioningconfigurationdevicestatus_create.md)|[managedDeviceMobileAppProvisioningConfigurationDeviceStatus](../resources/intune_apps_manageddevicemobileappprovisioningconfigurationdevicestatus.md)|Create a new [managedDeviceMobileAppProvisioningConfigurationDeviceStatus](../resources/intune_apps_manageddevicemobileappprovisioningconfigurationdevicestatus.md) object.|
|[Delete managedDeviceMobileAppProvisioningConfigurationDeviceStatus](../api/intune_apps_manageddevicemobileappprovisioningconfigurationdevicestatus_delete.md)|None|Deletes a [managedDeviceMobileAppProvisioningConfigurationDeviceStatus](../resources/intune_apps_manageddevicemobileappprovisioningconfigurationdevicestatus.md).|
|[Update managedDeviceMobileAppProvisioningConfigurationDeviceStatus](../api/intune_apps_manageddevicemobileappprovisioningconfigurationdevicestatus_update.md)|[managedDeviceMobileAppProvisioningConfigurationDeviceStatus](../resources/intune_apps_manageddevicemobileappprovisioningconfigurationdevicestatus.md)|Update the properties of a [managedDeviceMobileAppProvisioningConfigurationDeviceStatus](../resources/intune_apps_manageddevicemobileappprovisioningconfigurationdevicestatus.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|deviceDisplayName|String|Device name of the DevicePolicyStatus.|
|status|String|Compliance status of the policy report. Possible values are: `unknown`, `notApplicable`, `compliant`, `remediated`, `nonCompliant`, `error`, `conflict`.|
|lastReportedDateTime|DateTimeOffset|Last modified date time of the policy report.|
|userPrincipalName|String|UserPrincipalName.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedDeviceMobileAppProvisioningConfigurationDeviceStatus"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.managedDeviceMobileAppProvisioningConfigurationDeviceStatus",
  "id": "String (identifier)",
  "deviceDisplayName": "String",
  "status": "String",
  "lastReportedDateTime": "String (timestamp)",
  "userPrincipalName": "String"
}
```




# managedDeviceMobileAppConfigurationDeviceStatus resource type

Contains properties, inherited properties and actions for an MDM mobile app configuration status for a device.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List managedDeviceMobileAppConfigurationDeviceStatuss](../api/intune_apps_managedDeviceMobileAppConfigurationDeviceStatus_list.md)|[managedDeviceMobileAppConfigurationDeviceStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationDeviceStatus.md) collection|List properties and relationships of the [managedDeviceMobileAppConfigurationDeviceStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationDeviceStatus.md) objects.|
|[Get managedDeviceMobileAppConfigurationDeviceStatus](../api/intune_apps_managedDeviceMobileAppConfigurationDeviceStatus_get.md)|[managedDeviceMobileAppConfigurationDeviceStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationDeviceStatus.md)|Read properties and relationships of the [managedDeviceMobileAppConfigurationDeviceStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationDeviceStatus.md) object.|
|[Create managedDeviceMobileAppConfigurationDeviceStatus](../api/intune_apps_managedDeviceMobileAppConfigurationDeviceStatus_create.md)|[managedDeviceMobileAppConfigurationDeviceStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationDeviceStatus.md)|Create a new [managedDeviceMobileAppConfigurationDeviceStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationDeviceStatus.md) object.|
|[Delete managedDeviceMobileAppConfigurationDeviceStatus](../api/intune_apps_managedDeviceMobileAppConfigurationDeviceStatus_delete.md)|None|Deletes a [managedDeviceMobileAppConfigurationDeviceStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationDeviceStatus.md).|
|[Update managedDeviceMobileAppConfigurationDeviceStatus](../api/intune_apps_managedDeviceMobileAppConfigurationDeviceStatus_update.md)|[managedDeviceMobileAppConfigurationDeviceStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationDeviceStatus.md)|Update the properties of a [managedDeviceMobileAppConfigurationDeviceStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationDeviceStatus.md) object.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|status|String|Compliance status of the policy report. Possible values are: `unknown`, `notApplicable`, `compliant`, `remediated`, `nonCompliant`, `error`, `conflict`.|
|lastReportedDateTime|DateTimeOffset|Last modified date time of the policy report.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedDeviceMobileAppConfigurationDeviceStatus"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.managedDeviceMobileAppConfigurationDeviceStatus",
  "id": "String (identifier)",
  "status": "String",
  "lastReportedDateTime": "String (timestamp)"
}
```



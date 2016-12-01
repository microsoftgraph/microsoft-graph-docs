# managedDeviceMobileAppConfigurationUserStatus resource type

Contains properties, inherited properties and actions for an MDM mobile app configuration status for a user.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List managedDeviceMobileAppConfigurationUserStatuss](../api/intune_apps_managedDeviceMobileAppConfigurationUserStatus_list.md)|[managedDeviceMobileAppConfigurationUserStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationUserStatus.md) collection|List properties and relationships of the [managedDeviceMobileAppConfigurationUserStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationUserStatus.md) objects.|
|[Get managedDeviceMobileAppConfigurationUserStatus](../api/intune_apps_managedDeviceMobileAppConfigurationUserStatus_get.md)|[managedDeviceMobileAppConfigurationUserStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationUserStatus.md)|Read properties and relationships of the [managedDeviceMobileAppConfigurationUserStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationUserStatus.md) object.|
|[Create managedDeviceMobileAppConfigurationUserStatus](../api/intune_apps_managedDeviceMobileAppConfigurationUserStatus_create.md)|[managedDeviceMobileAppConfigurationUserStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationUserStatus.md)|Create a new [managedDeviceMobileAppConfigurationUserStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationUserStatus.md) object.|
|[Delete managedDeviceMobileAppConfigurationUserStatus](../api/intune_apps_managedDeviceMobileAppConfigurationUserStatus_delete.md)|None|Deletes a [managedDeviceMobileAppConfigurationUserStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationUserStatus.md).|
|[Update managedDeviceMobileAppConfigurationUserStatus](../api/intune_apps_managedDeviceMobileAppConfigurationUserStatus_update.md)|[managedDeviceMobileAppConfigurationUserStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationUserStatus.md)|Update the properties of a [managedDeviceMobileAppConfigurationUserStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationUserStatus.md) object.|

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
  "@odata.type": "microsoft.graph.managedDeviceMobileAppConfigurationUserStatus"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.managedDeviceMobileAppConfigurationUserStatus",
  "id": "String (identifier)",
  "status": "String",
  "lastReportedDateTime": "String (timestamp)"
}
```



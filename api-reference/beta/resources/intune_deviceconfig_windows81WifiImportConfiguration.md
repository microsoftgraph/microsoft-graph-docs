# windows81WifiImportConfiguration resource type

Windows 8.1+ Wi-Fi import configuration. By configuring this profile you can instruct Windows 8.1 (and later) devices to connect to desired Wi-Fi endpoint. Connect a Windows 8.1 device to the desired Wi-Fi network and extract the XML from that device to later embed into this Wi-Fi profile.

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List windows81WifiImportConfigurations](../api/intune_deviceconfig_windows81WifiImportConfiguration_list.md)|[windows81WifiImportConfiguration](../resources/intune_deviceconfig_windows81WifiImportConfiguration.md) collection|List properties and relationships of the [windows81WifiImportConfiguration](../resources/intune_deviceconfig_windows81WifiImportConfiguration.md) objects.|
|[Get windows81WifiImportConfiguration](../api/intune_deviceconfig_windows81WifiImportConfiguration_get.md)|[windows81WifiImportConfiguration](../resources/intune_deviceconfig_windows81WifiImportConfiguration.md)|Read properties and relationships of the [windows81WifiImportConfiguration](../resources/intune_deviceconfig_windows81WifiImportConfiguration.md) object.|
|[Create windows81WifiImportConfiguration](../api/intune_deviceconfig_windows81WifiImportConfiguration_create.md)|[windows81WifiImportConfiguration](../resources/intune_deviceconfig_windows81WifiImportConfiguration.md)|Create a new [windows81WifiImportConfiguration](../resources/intune_deviceconfig_windows81WifiImportConfiguration.md) object.|
|[Delete windows81WifiImportConfiguration](../api/intune_deviceconfig_windows81WifiImportConfiguration_delete.md)|None|Deletes a [windows81WifiImportConfiguration](../resources/intune_deviceconfig_windows81WifiImportConfiguration.md).|
|[Update windows81WifiImportConfiguration](../api/intune_deviceconfig_windows81WifiImportConfiguration_update.md)|[windows81WifiImportConfiguration](../resources/intune_deviceconfig_windows81WifiImportConfiguration.md)|Update the properties of a [windows81WifiImportConfiguration](../resources/intune_deviceconfig_windows81WifiImportConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_windows81WifiImportConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/intune_deviceconfig_windows81WifiImportConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/intune_deviceconfig_windows81WifiImportConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|payloadFileName|String|Payload file name (*.xml).|
|profileName|String|Profile name displayed in the UI.|
|payload|Binary|Payload. (UTF8 encoded byte array). This is the XML file saved on the device you used to connect to the Wi-Fi endpoint.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windows81WifiImportConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windows81WifiImportConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "payloadFileName": "String",
  "profileName": "String",
  "payload": "binary"
}
```



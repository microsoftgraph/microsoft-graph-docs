# iosCustomConfiguration resource type

This topic provides descriptions of the declared methods, properties and relationships exposed by the iosCustomConfiguration resource.

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List iosCustomConfigurations](../api/intune_deviceconfig_iosCustomConfiguration_list.md)|[iosCustomConfiguration](../resources/intune_deviceconfig_iosCustomConfiguration.md) collection|List properties and relationships of the [iosCustomConfiguration](../resources/intune_deviceconfig_iosCustomConfiguration.md) objects.|
|[Get iosCustomConfiguration](../api/intune_deviceconfig_iosCustomConfiguration_get.md)|[iosCustomConfiguration](../resources/intune_deviceconfig_iosCustomConfiguration.md)|Read properties and relationships of the [iosCustomConfiguration](../resources/intune_deviceconfig_iosCustomConfiguration.md) object.|
|[Create iosCustomConfiguration](../api/intune_deviceconfig_iosCustomConfiguration_create.md)|[iosCustomConfiguration](../resources/intune_deviceconfig_iosCustomConfiguration.md)|Create a new [iosCustomConfiguration](../resources/intune_deviceconfig_iosCustomConfiguration.md) object.|
|[Delete iosCustomConfiguration](../api/intune_deviceconfig_iosCustomConfiguration_delete.md)|None|Deletes a [iosCustomConfiguration](../resources/intune_deviceconfig_iosCustomConfiguration.md).|
|[Update iosCustomConfiguration](../api/intune_deviceconfig_iosCustomConfiguration_update.md)|[iosCustomConfiguration](../resources/intune_deviceconfig_iosCustomConfiguration.md)|Update the properties of a [iosCustomConfiguration](../resources/intune_deviceconfig_iosCustomConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_iosCustomConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/intune_deviceconfig_iosCustomConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/intune_deviceconfig_iosCustomConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|payloadName|String|Name that is displayed to the user.|
|payloadFileName|String|Payload file name (*.mobileconfig | *.xml).|
|payload|Binary|Payload. (UTF8 encoded byte array)|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosCustomConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.iosCustomConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "payloadName": "String",
  "payloadFileName": "String",
  "payload": "binary"
}
```



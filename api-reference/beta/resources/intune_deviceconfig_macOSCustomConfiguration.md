# macOSCustomConfiguration resource type

This topic provides descriptions of the declared methods, properties and relationships exposed by the macOSCustomConfiguration resource.

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List macOSCustomConfigurations](../api/intune_deviceconfig_macOSCustomConfiguration_list.md)|[macOSCustomConfiguration](../resources/intune_deviceconfig_macOSCustomConfiguration.md) collection|List properties and relationships of the [macOSCustomConfiguration](../resources/intune_deviceconfig_macOSCustomConfiguration.md) objects.|
|[Get macOSCustomConfiguration](../api/intune_deviceconfig_macOSCustomConfiguration_get.md)|[macOSCustomConfiguration](../resources/intune_deviceconfig_macOSCustomConfiguration.md)|Read properties and relationships of the [macOSCustomConfiguration](../resources/intune_deviceconfig_macOSCustomConfiguration.md) object.|
|[Create macOSCustomConfiguration](../api/intune_deviceconfig_macOSCustomConfiguration_create.md)|[macOSCustomConfiguration](../resources/intune_deviceconfig_macOSCustomConfiguration.md)|Create a new [macOSCustomConfiguration](../resources/intune_deviceconfig_macOSCustomConfiguration.md) object.|
|[Delete macOSCustomConfiguration](../api/intune_deviceconfig_macOSCustomConfiguration_delete.md)|None|Deletes a [macOSCustomConfiguration](../resources/intune_deviceconfig_macOSCustomConfiguration.md).|
|[Update macOSCustomConfiguration](../api/intune_deviceconfig_macOSCustomConfiguration_update.md)|[macOSCustomConfiguration](../resources/intune_deviceconfig_macOSCustomConfiguration.md)|Update the properties of a [macOSCustomConfiguration](../resources/intune_deviceconfig_macOSCustomConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_macOSCustomConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/intune_deviceconfig_macOSCustomConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/intune_deviceconfig_macOSCustomConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

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
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.macOSCustomConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.macOSCustomConfiguration",
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



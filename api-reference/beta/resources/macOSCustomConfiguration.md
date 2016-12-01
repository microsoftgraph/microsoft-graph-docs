# macOSCustomConfiguration resource type

This topic provides descriptions of the declared methods, properties and relationships exposed by the macOSCustomConfiguration resource.

Inherits from [deviceConfiguration](deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List macOSCustomConfigurations](../api/macOSCustomConfiguration_list.md)|[macOSCustomConfiguration](../resources/macOSCustomConfiguration.md) collection|List properties and relationships of the [macOSCustomConfiguration](../resources/macOSCustomConfiguration.md) objects.|
|[Get macOSCustomConfiguration](../api/macOSCustomConfiguration_get.md)|[macOSCustomConfiguration](../resources/macOSCustomConfiguration.md)|Read properties and relationships of the [macOSCustomConfiguration](../resources/macOSCustomConfiguration.md) object.|
|[Create macOSCustomConfiguration](../api/macOSCustomConfiguration_create.md)|[macOSCustomConfiguration](../resources/macOSCustomConfiguration.md)|Create a new [macOSCustomConfiguration](../resources/macOSCustomConfiguration.md) object.|
|[Delete macOSCustomConfiguration](../api/macOSCustomConfiguration_delete.md)|None|Deletes a [macOSCustomConfiguration](../resources/macOSCustomConfiguration.md).|
|[Update macOSCustomConfiguration](../api/macOSCustomConfiguration_update.md)|[macOSCustomConfiguration](../resources/macOSCustomConfiguration.md)|Update the properties of a [macOSCustomConfiguration](../resources/macOSCustomConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/macOSCustomConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/macOSCustomConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/macOSCustomConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|payloadName|String|Name that is displayed to the user.|
|payloadFileName|String|Payload file name (*.mobileconfig | *.xml).|
|payload|Binary|Payload. (UTF8 encoded byte array)|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](deviceConfiguration.md)|

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


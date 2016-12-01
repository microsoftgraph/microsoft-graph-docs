# windowsPhone81CustomConfiguration resource type

This topic provides descriptions of the declared methods, properties and relationships exposed by the windowsPhone81CustomConfiguration resource.

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List windowsPhone81CustomConfigurations](../api/intune_deviceconfig_windowsPhone81CustomConfiguration_list.md)|[windowsPhone81CustomConfiguration](../resources/intune_deviceconfig_windowsPhone81CustomConfiguration.md) collection|List properties and relationships of the [windowsPhone81CustomConfiguration](../resources/intune_deviceconfig_windowsPhone81CustomConfiguration.md) objects.|
|[Get windowsPhone81CustomConfiguration](../api/intune_deviceconfig_windowsPhone81CustomConfiguration_get.md)|[windowsPhone81CustomConfiguration](../resources/intune_deviceconfig_windowsPhone81CustomConfiguration.md)|Read properties and relationships of the [windowsPhone81CustomConfiguration](../resources/intune_deviceconfig_windowsPhone81CustomConfiguration.md) object.|
|[Create windowsPhone81CustomConfiguration](../api/intune_deviceconfig_windowsPhone81CustomConfiguration_create.md)|[windowsPhone81CustomConfiguration](../resources/intune_deviceconfig_windowsPhone81CustomConfiguration.md)|Create a new [windowsPhone81CustomConfiguration](../resources/intune_deviceconfig_windowsPhone81CustomConfiguration.md) object.|
|[Delete windowsPhone81CustomConfiguration](../api/intune_deviceconfig_windowsPhone81CustomConfiguration_delete.md)|None|Deletes a [windowsPhone81CustomConfiguration](../resources/intune_deviceconfig_windowsPhone81CustomConfiguration.md).|
|[Update windowsPhone81CustomConfiguration](../api/intune_deviceconfig_windowsPhone81CustomConfiguration_update.md)|[windowsPhone81CustomConfiguration](../resources/intune_deviceconfig_windowsPhone81CustomConfiguration.md)|Update the properties of a [windowsPhone81CustomConfiguration](../resources/intune_deviceconfig_windowsPhone81CustomConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_windowsPhone81CustomConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/intune_deviceconfig_windowsPhone81CustomConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/intune_deviceconfig_windowsPhone81CustomConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|omaSettings|[omaSetting](../resources/intune_deviceconfig_omaSetting.md) collection|OMA settings.|

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
  "@odata.type": "microsoft.graph.windowsPhone81CustomConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windowsPhone81CustomConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "omaSettings": [
    {
      "@odata.type": "microsoft.graph.omaSetting",
      "displayName": "String",
      "description": "String",
      "omaUri": "String"
    }
  ]
}
```



# windowsPhone81TrustedRootCertificate resource type

Windows Phone 8.1+ Trusted Root Certificate configuration profile

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List windowsPhone81TrustedRootCertificates](../api/intune_deviceconfig_windowsPhone81TrustedRootCertificate_list.md)|[windowsPhone81TrustedRootCertificate](../resources/intune_deviceconfig_windowsPhone81TrustedRootCertificate.md) collection|List properties and relationships of the [windowsPhone81TrustedRootCertificate](../resources/intune_deviceconfig_windowsPhone81TrustedRootCertificate.md) objects.|
|[Get windowsPhone81TrustedRootCertificate](../api/intune_deviceconfig_windowsPhone81TrustedRootCertificate_get.md)|[windowsPhone81TrustedRootCertificate](../resources/intune_deviceconfig_windowsPhone81TrustedRootCertificate.md)|Read properties and relationships of the [windowsPhone81TrustedRootCertificate](../resources/intune_deviceconfig_windowsPhone81TrustedRootCertificate.md) object.|
|[Create windowsPhone81TrustedRootCertificate](../api/intune_deviceconfig_windowsPhone81TrustedRootCertificate_create.md)|[windowsPhone81TrustedRootCertificate](../resources/intune_deviceconfig_windowsPhone81TrustedRootCertificate.md)|Create a new [windowsPhone81TrustedRootCertificate](../resources/intune_deviceconfig_windowsPhone81TrustedRootCertificate.md) object.|
|[Delete windowsPhone81TrustedRootCertificate](../api/intune_deviceconfig_windowsPhone81TrustedRootCertificate_delete.md)|None|Deletes a [windowsPhone81TrustedRootCertificate](../resources/intune_deviceconfig_windowsPhone81TrustedRootCertificate.md).|
|[Update windowsPhone81TrustedRootCertificate](../api/intune_deviceconfig_windowsPhone81TrustedRootCertificate_update.md)|[windowsPhone81TrustedRootCertificate](../resources/intune_deviceconfig_windowsPhone81TrustedRootCertificate.md)|Update the properties of a [windowsPhone81TrustedRootCertificate](../resources/intune_deviceconfig_windowsPhone81TrustedRootCertificate.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_windowsPhone81TrustedRootCertificate_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/intune_deviceconfig_windowsPhone81TrustedRootCertificate_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/intune_deviceconfig_windowsPhone81TrustedRootCertificate_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|trustedRootCertificate|Binary|Trusted Root Certificate|
|certFileName|String|File name to display in UI.|

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
  "@odata.type": "microsoft.graph.windowsPhone81TrustedRootCertificate"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windowsPhone81TrustedRootCertificate",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "trustedRootCertificate": "binary",
  "certFileName": "String"
}
```



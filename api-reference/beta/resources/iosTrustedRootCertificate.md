# iosTrustedRootCertificate resource type

iOS Trusted Root Certificate configuration profile.

Inherits from [deviceConfiguration](../resources/deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List iosTrustedRootCertificates](../api/iosTrustedRootCertificate_list.md)|[iosTrustedRootCertificate](../resources/iosTrustedRootCertificate.md) collection|List properties and relationships of the [iosTrustedRootCertificate](../resources/iosTrustedRootCertificate.md) objects.|
|[Get iosTrustedRootCertificate](../api/iosTrustedRootCertificate_get.md)|[iosTrustedRootCertificate](../resources/iosTrustedRootCertificate.md)|Read properties and relationships of the [iosTrustedRootCertificate](../resources/iosTrustedRootCertificate.md) object.|
|[Create iosTrustedRootCertificate](../api/iosTrustedRootCertificate_create.md)|[iosTrustedRootCertificate](../resources/iosTrustedRootCertificate.md)|Create a new [iosTrustedRootCertificate](../resources/iosTrustedRootCertificate.md) object.|
|[Delete iosTrustedRootCertificate](../api/iosTrustedRootCertificate_delete.md)|None|Deletes a [iosTrustedRootCertificate](../resources/iosTrustedRootCertificate.md).|
|[Update iosTrustedRootCertificate](../api/iosTrustedRootCertificate_update.md)|[iosTrustedRootCertificate](../resources/iosTrustedRootCertificate.md)|Update the properties of a [iosTrustedRootCertificate](../resources/iosTrustedRootCertificate.md) object.|
|[List deviceConfigurationGroupAssignments](../api/iosTrustedRootCertificate_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/iosTrustedRootCertificate_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/iosTrustedRootCertificate_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|trustedRootCertificate|Binary|Trusted Root Certificate.|
|certFileName|String|File name to display in UI.|

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
  "@odata.type": "microsoft.graph.iosTrustedRootCertificate"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.iosTrustedRootCertificate",
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


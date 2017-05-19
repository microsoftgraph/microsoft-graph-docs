# macOSTrustedRootCertificate resource type

OS X Trusted Root Certificate configuration profile.

Inherits from [deviceConfiguration](../resources/deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List macOSTrustedRootCertificates](../api/macOSTrustedRootCertificate_list.md)|[macOSTrustedRootCertificate](../resources/macOSTrustedRootCertificate.md) collection|List properties and relationships of the [macOSTrustedRootCertificate](../resources/macOSTrustedRootCertificate.md) objects.|
|[Get macOSTrustedRootCertificate](../api/macOSTrustedRootCertificate_get.md)|[macOSTrustedRootCertificate](../resources/macOSTrustedRootCertificate.md)|Read properties and relationships of the [macOSTrustedRootCertificate](../resources/macOSTrustedRootCertificate.md) object.|
|[Create macOSTrustedRootCertificate](../api/macOSTrustedRootCertificate_create.md)|[macOSTrustedRootCertificate](../resources/macOSTrustedRootCertificate.md)|Create a new [macOSTrustedRootCertificate](../resources/macOSTrustedRootCertificate.md) object.|
|[Delete macOSTrustedRootCertificate](../api/macOSTrustedRootCertificate_delete.md)|None|Deletes a [macOSTrustedRootCertificate](../resources/macOSTrustedRootCertificate.md).|
|[Update macOSTrustedRootCertificate](../api/macOSTrustedRootCertificate_update.md)|[macOSTrustedRootCertificate](../resources/macOSTrustedRootCertificate.md)|Update the properties of a [macOSTrustedRootCertificate](../resources/macOSTrustedRootCertificate.md) object.|
|[List deviceConfigurationGroupAssignments](../api/macOSTrustedRootCertificate_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/macOSTrustedRootCertificate_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/macOSTrustedRootCertificate_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

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
  "@odata.type": "microsoft.graph.macOSTrustedRootCertificate"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.macOSTrustedRootCertificate",
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


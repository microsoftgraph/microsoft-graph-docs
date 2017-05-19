# windows81TrustedRootCertificate resource type

Windows 8.1 Trusted Certificate configuration profile

Inherits from [deviceConfiguration](../resources/deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List windows81TrustedRootCertificates](../api/windows81TrustedRootCertificate_list.md)|[windows81TrustedRootCertificate](../resources/windows81TrustedRootCertificate.md) collection|List properties and relationships of the [windows81TrustedRootCertificate](../resources/windows81TrustedRootCertificate.md) objects.|
|[Get windows81TrustedRootCertificate](../api/windows81TrustedRootCertificate_get.md)|[windows81TrustedRootCertificate](../resources/windows81TrustedRootCertificate.md)|Read properties and relationships of the [windows81TrustedRootCertificate](../resources/windows81TrustedRootCertificate.md) object.|
|[Create windows81TrustedRootCertificate](../api/windows81TrustedRootCertificate_create.md)|[windows81TrustedRootCertificate](../resources/windows81TrustedRootCertificate.md)|Create a new [windows81TrustedRootCertificate](../resources/windows81TrustedRootCertificate.md) object.|
|[Delete windows81TrustedRootCertificate](../api/windows81TrustedRootCertificate_delete.md)|None|Deletes a [windows81TrustedRootCertificate](../resources/windows81TrustedRootCertificate.md).|
|[Update windows81TrustedRootCertificate](../api/windows81TrustedRootCertificate_update.md)|[windows81TrustedRootCertificate](../resources/windows81TrustedRootCertificate.md)|Update the properties of a [windows81TrustedRootCertificate](../resources/windows81TrustedRootCertificate.md) object.|
|[List deviceConfigurationGroupAssignments](../api/windows81TrustedRootCertificate_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/windows81TrustedRootCertificate_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/windows81TrustedRootCertificate_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|trustedRootCertificate|Binary|Trusted Root Certificate|
|certFileName|String|File name to display in UI.|
|destinationStore|String|Destination store location for the Trusted Root Certificate. Possible values are: `computerCertStoreRoot`, `computerCertStoreIntermediate`, `userCertStoreIntermediate`.|

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
  "@odata.type": "microsoft.graph.windows81TrustedRootCertificate"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windows81TrustedRootCertificate",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "trustedRootCertificate": "binary",
  "certFileName": "String",
  "destinationStore": "String"
}
```


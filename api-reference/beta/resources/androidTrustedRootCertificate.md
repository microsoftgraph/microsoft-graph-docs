# androidTrustedRootCertificate resource type

Android Trusted Root Certificate configuration profile

Inherits from [deviceConfiguration](deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List androidTrustedRootCertificates](../api/androidTrustedRootCertificate_list.md)|[androidTrustedRootCertificate](androidTrustedRootCertificate.md) collection|List properties and relationships of the [androidTrustedRootCertificate](../resource/androidTrustedRootCertificate.md) objects.|
|[Get androidTrustedRootCertificate](../api/androidTrustedRootCertificate_get.md)|[androidTrustedRootCertificate](androidTrustedRootCertificate.md)|Read properties and relationships of the [androidTrustedRootCertificate](../resource/androidTrustedRootCertificate.md) object.|
|[Create androidTrustedRootCertificate](../api/androidTrustedRootCertificate_create.md)|[androidTrustedRootCertificate](androidTrustedRootCertificate.md)|Create a new [androidTrustedRootCertificate](../resource/androidTrustedRootCertificate.md) object.|
|[Delete androidTrustedRootCertificate](../api/androidTrustedRootCertificate_delete.md)|None|Deletes a [androidTrustedRootCertificate](../resource/androidTrustedRootCertificate.md).|
|[Update androidTrustedRootCertificate](../api/androidTrustedRootCertificate_update.md)|[androidTrustedRootCertificate](androidTrustedRootCertificate.md)|Update the properties of a [androidTrustedRootCertificate](../resource/androidTrustedRootCertificate.md) object.|
|[List deviceConfigurationGroupAssignments](../api/androidTrustedRootCertificate_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/androidTrustedRootCertificate_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/androidTrustedRootCertificate_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|trustedRootCertificate|Binary|Trusted Root Certificate|
|certFileName|String|File name to display in UI.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](deviceConfiguration.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidTrustedRootCertificate"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.androidTrustedRootCertificate",
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


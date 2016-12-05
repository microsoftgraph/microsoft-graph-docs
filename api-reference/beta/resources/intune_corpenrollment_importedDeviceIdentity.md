# importedDeviceIdentity resource type

The importedDeviceIdentity resource represents a unique hardware identity of a device that has been pre-staged for pre-enrollment configuration.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List importedDeviceIdentities](../api/intune_corpenrollment_importedDeviceIdentity_list.md)|[importedDeviceIdentity](../resources/intune_corpenrollment_importedDeviceIdentity.md) collection|List properties and relationships of the [importedDeviceIdentity](../resources/intune_corpenrollment_importedDeviceIdentity.md) objects.|
|[Get importedDeviceIdentity](../api/intune_corpenrollment_importedDeviceIdentity_get.md)|[importedDeviceIdentity](../resources/intune_corpenrollment_importedDeviceIdentity.md)|Read properties and relationships of the [importedDeviceIdentity](../resources/intune_corpenrollment_importedDeviceIdentity.md) object.|
|[Create importedDeviceIdentity](../api/intune_corpenrollment_importedDeviceIdentity_create.md)|[importedDeviceIdentity](../resources/intune_corpenrollment_importedDeviceIdentity.md)|Create a new [importedDeviceIdentity](../resources/intune_corpenrollment_importedDeviceIdentity.md) object.|
|[Delete importedDeviceIdentity](../api/intune_corpenrollment_importedDeviceIdentity_delete.md)|None|Deletes a [importedDeviceIdentity](../resources/intune_corpenrollment_importedDeviceIdentity.md).|
|[Update importedDeviceIdentity](../api/intune_corpenrollment_importedDeviceIdentity_update.md)|[importedDeviceIdentity](../resources/intune_corpenrollment_importedDeviceIdentity.md)|Update the properties of a [importedDeviceIdentity](../resources/intune_corpenrollment_importedDeviceIdentity.md) object.|
|[importDeviceIdentityList action](../api/intune_corpenrollment_importedDeviceIdentity_importDeviceIdentityList.md)|[importedDeviceIdentityResult](../resources/intune_corpenrollment_importedDeviceIdentityResult.md) collection|Not yet documented|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Id of the imported device identity|
|importedDeviceIdentifier|String|Imported Device Identifier|
|importedDeviceIdentityType|String|Type of Imported Device Identity Possible values are: `unknown`, `imei`, `serialNumber`.|
|lastModifiedDateTime|DateTimeOffset|Last Modified DateTime of the description|
|createdDateTime|DateTimeOffset|Created Date Time of the device|
|lastContactedDateTime|DateTimeOffset|Last Contacted Date Time of the device|
|description|String|The description of the device|
|enrollmentState|String|The state of the device in Intune Possible values are: `unknown`, `enrolled`, `pendingReset`, `failed`, `notContacted`.|
|platform|String|The platform of the Device. Possible values are: `unknown`, `ios`, `android`, `windows`, `windowsMobile`, `macOS`.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.importedDeviceIdentity"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.importedDeviceIdentity",
  "id": "String (identifier)",
  "importedDeviceIdentifier": "String",
  "importedDeviceIdentityType": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "lastContactedDateTime": "String (timestamp)",
  "description": "String",
  "enrollmentState": "String",
  "platform": "String"
}
```




# importedAppleDeviceIdentityResult resource type

The importedAppleDeviceIdentityResult resource represents the result of attempting to import Apple devices identities.

Inherits from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List importedAppleDeviceIdentityResults](../api/intune_corpenrollment_importedAppleDeviceIdentityResult_list.md)|[importedAppleDeviceIdentityResult](../resources/intune_corpenrollment_importedAppleDeviceIdentityResult.md) collection|List properties and relationships of the [importedAppleDeviceIdentityResult](../resources/intune_corpenrollment_importedAppleDeviceIdentityResult.md) objects.|
|[Get importedAppleDeviceIdentityResult](../api/intune_corpenrollment_importedAppleDeviceIdentityResult_get.md)|[importedAppleDeviceIdentityResult](../resources/intune_corpenrollment_importedAppleDeviceIdentityResult.md)|Read properties and relationships of the [importedAppleDeviceIdentityResult](../resources/intune_corpenrollment_importedAppleDeviceIdentityResult.md) object.|
|[Create importedAppleDeviceIdentityResult](../api/intune_corpenrollment_importedAppleDeviceIdentityResult_create.md)|[importedAppleDeviceIdentityResult](../resources/intune_corpenrollment_importedAppleDeviceIdentityResult.md)|Create a new [importedAppleDeviceIdentityResult](../resources/intune_corpenrollment_importedAppleDeviceIdentityResult.md) object.|
|[Delete importedAppleDeviceIdentityResult](../api/intune_corpenrollment_importedAppleDeviceIdentityResult_delete.md)|None|Deletes a [importedAppleDeviceIdentityResult](../resources/intune_corpenrollment_importedAppleDeviceIdentityResult.md).|
|[Update importedAppleDeviceIdentityResult](../api/intune_corpenrollment_importedAppleDeviceIdentityResult_update.md)|[importedAppleDeviceIdentityResult](../resources/intune_corpenrollment_importedAppleDeviceIdentityResult.md)|Update the properties of a [importedAppleDeviceIdentityResult](../resources/intune_corpenrollment_importedAppleDeviceIdentityResult.md) object.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md)|
|serialNumber|String|Device serial number Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md)|
|requestedEnrollmentProfileId|String|Enrollment profile Id admin intends to apply to the device during next enrollment Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md)|
|requestedEnrollmentProfileAssignmentDateTime|DateTimeOffset|The time enrollment profile was assigned to the device Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md)|
|isSupervised|Boolean|Indicates if the Apple device is supervised. More information is at: https://support.apple.com/en-us/HT202837 Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md)|
|discoverySource|String|Apple device discovery source. Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md) Possible values are: `unknown`, `adminImport`, `deviceEnrollmentProgram`.|
|createdDateTime|DateTimeOffset|Created Date Time of the device Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md)|
|lastContactedDateTime|DateTimeOffset|Last Contacted Date Time of the device Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md)|
|description|String|The description of the device Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md)|
|enrollmentState|String|The state of the device in Intune Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md) Possible values are: `unknown`, `enrolled`, `pendingReset`, `failed`, `notContacted`.|
|platform|String|The platform of the Device. Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md) Possible values are: `unknown`, `ios`, `android`, `windows`, `windowsMobile`, `macOS`.|
|status|Boolean|Status of imported device identity|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.importedAppleDeviceIdentityResult"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.importedAppleDeviceIdentityResult",
  "id": "String (identifier)",
  "serialNumber": "String",
  "requestedEnrollmentProfileId": "String",
  "requestedEnrollmentProfileAssignmentDateTime": "String (timestamp)",
  "isSupervised": true,
  "discoverySource": "String",
  "createdDateTime": "String (timestamp)",
  "lastContactedDateTime": "String (timestamp)",
  "description": "String",
  "enrollmentState": "String",
  "platform": "String",
  "status": true
}
```



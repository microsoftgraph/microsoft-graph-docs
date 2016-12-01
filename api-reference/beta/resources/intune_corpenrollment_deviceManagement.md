# deviceManagement resource type

The deviceManagement resource represents a tenant's collection device identities that have been pre-staged in Intune, and the enrollment profiles that may be assigned to device identities that support pre-enrollment configuration.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](../api/intune_corpenrollment_deviceManagement_get.md)|[deviceManagement](../resources/intune_corpenrollment_deviceManagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_corpenrollment_deviceManagement.md) object.|
|[Update deviceManagement](../api/intune_corpenrollment_deviceManagement_update.md)|[deviceManagement](../resources/intune_corpenrollment_deviceManagement.md)|Update the properties of a [deviceManagement](../resources/intune_corpenrollment_deviceManagement.md) object.|
|[List enrollmentProfiles](../api/intune_corpenrollment_deviceManagement_list_enrollmentProfile.md)|[enrollmentProfile](../resources/intune_corpenrollment_enrollmentProfile.md) collection|Get the enrollmentProfiles from the enrollmentProfiles navigation property.|
|[Create enrollmentProfile](../api/intune_corpenrollment_deviceManagement_create_enrollmentProfile.md)|[enrollmentProfile](../resources/intune_corpenrollment_enrollmentProfile.md)|Create a new [enrollmentProfile](../resources/intune_corpenrollment_enrollmentProfile.md) by posting to the enrollmentProfiles collection.|
|[List importedDeviceIdentities](../api/intune_corpenrollment_deviceManagement_list_importedDeviceIdentity.md)|[importedDeviceIdentity](../resources/intune_corpenrollment_importedDeviceIdentity.md) collection|Get the importedDeviceIdentities from the importedDeviceIdentities navigation property.|
|[Create importedDeviceIdentity](../api/intune_corpenrollment_deviceManagement_create_importedDeviceIdentity.md)|[importedDeviceIdentity](../resources/intune_corpenrollment_importedDeviceIdentity.md)|Create a new [importedDeviceIdentity](../resources/intune_corpenrollment_importedDeviceIdentity.md) by posting to the importedDeviceIdentities collection.|
|[List importedAppleDeviceIdentities](../api/intune_corpenrollment_deviceManagement_list_importedAppleDeviceIdentity.md)|[importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md) collection|Get the importedAppleDeviceIdentities from the importedAppleDeviceIdentities navigation property.|
|[Create importedAppleDeviceIdentity](../api/intune_corpenrollment_deviceManagement_create_importedAppleDeviceIdentity.md)|[importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md)|Create a new [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md) by posting to the importedAppleDeviceIdentities collection.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|The GUID for the object.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|enrollmentProfiles|[enrollmentProfile](../resources/intune_corpenrollment_enrollmentProfile.md) collection|The enrollment profiles.|
|importedDeviceIdentities|[importedDeviceIdentity](../resources/intune_corpenrollment_importedDeviceIdentity.md) collection|The imported device identities.|
|importedAppleDeviceIdentities|[importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md) collection|The imported Apple device identities.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)"
}
```



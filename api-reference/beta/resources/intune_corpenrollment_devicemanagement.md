# deviceManagement resource type

The deviceManagement resource represents a tenant's collection device identities that have been pre-staged in Intune, and the enrollment profiles that may be assigned to device identities that support pre-enrollment configuration.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](../api/intune_corpenrollment_devicemanagement_get.md)|[deviceManagement](../resources/intune_corpenrollment_devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_corpenrollment_devicemanagement.md) object.|
|[Update deviceManagement](../api/intune_corpenrollment_devicemanagement_update.md)|[deviceManagement](../resources/intune_corpenrollment_devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune_corpenrollment_devicemanagement.md) object.|
|[List enrollmentProfiles](../api/intune_corpenrollment_devicemanagement_list_enrollmentprofile.md)|[enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md) collection|Get the enrollmentProfiles from the enrollmentProfiles navigation property.|
|[Create enrollmentProfile](../api/intune_corpenrollment_devicemanagement_create_enrollmentprofile.md)|[enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md)|Create a new [enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md) by posting to the enrollmentProfiles collection.|
|[List importedDeviceIdentities](../api/intune_corpenrollment_devicemanagement_list_importeddeviceidentity.md)|[importedDeviceIdentity](../resources/intune_corpenrollment_importeddeviceidentity.md) collection|Get the importedDeviceIdentities from the importedDeviceIdentities navigation property.|
|[Create importedDeviceIdentity](../api/intune_corpenrollment_devicemanagement_create_importeddeviceidentity.md)|[importedDeviceIdentity](../resources/intune_corpenrollment_importeddeviceidentity.md)|Create a new [importedDeviceIdentity](../resources/intune_corpenrollment_importeddeviceidentity.md) by posting to the importedDeviceIdentities collection.|
|[List importedAppleDeviceIdentities](../api/intune_corpenrollment_devicemanagement_list_importedappledeviceidentity.md)|[importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md) collection|Get the importedAppleDeviceIdentities from the importedAppleDeviceIdentities navigation property.|
|[Create importedAppleDeviceIdentity](../api/intune_corpenrollment_devicemanagement_create_importedappledeviceidentity.md)|[importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md)|Create a new [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md) by posting to the importedAppleDeviceIdentities collection.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|The GUID for the object.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|enrollmentProfiles|[enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md) collection|The enrollment profiles.|
|importedDeviceIdentities|[importedDeviceIdentity](../resources/intune_corpenrollment_importeddeviceidentity.md) collection|The imported device identities.|
|importedAppleDeviceIdentities|[importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md) collection|The imported Apple device identities.|

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




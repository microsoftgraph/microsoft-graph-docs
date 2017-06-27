# deviceManagement resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The deviceManagement resource represents a tenant's collection device identities that have been pre-staged in Intune, and the enrollment profiles that may be assigned to device identities that support pre-enrollment configuration.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](../api/intune_corpenrollment_devicemanagement_get.md)|[deviceManagement](../resources/intune_corpenrollment_devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_corpenrollment_devicemanagement.md) object.|
|[Update deviceManagement](../api/intune_corpenrollment_devicemanagement_update.md)|[deviceManagement](../resources/intune_corpenrollment_devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune_corpenrollment_devicemanagement.md) object.|
|[List enrollmentProfiles](../api/intune_corpenrollment_enrollmentprofile_list.md)|[enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md) collection|List properties and relationships of the [enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md) objects.|
|[Create enrollmentProfile](../api/intune_corpenrollment_enrollmentprofile_create.md)|[enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md)|Create a new [enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md) object.|
|[List importedDeviceIdentities](../api/intune_corpenrollment_importeddeviceidentity_list.md)|[importedDeviceIdentity](../resources/intune_corpenrollment_importeddeviceidentity.md) collection|List properties and relationships of the [importedDeviceIdentity](../resources/intune_corpenrollment_importeddeviceidentity.md) objects.|
|[Create importedDeviceIdentity](../api/intune_corpenrollment_importeddeviceidentity_create.md)|[importedDeviceIdentity](../resources/intune_corpenrollment_importeddeviceidentity.md)|Create a new [importedDeviceIdentity](../resources/intune_corpenrollment_importeddeviceidentity.md) object.|
|[List importedAppleDeviceIdentities](../api/intune_corpenrollment_importedappledeviceidentity_list.md)|[importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md) collection|List properties and relationships of the [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md) objects.|
|[Create importedAppleDeviceIdentity](../api/intune_corpenrollment_importedappledeviceidentity_create.md)|[importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md)|Create a new [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|The GUID for the object.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|enrollmentProfiles|[enrollmentProfile](../resources/intune_corpenrollment_enrollmentprofile.md) collection|The enrollment profiles.|
|importedDeviceIdentities|[importedDeviceIdentity](../resources/intune_corpenrollment_importeddeviceidentity.md) collection|The imported device identities.|
|importedAppleDeviceIdentities|[importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md) collection|The imported Apple device identities.|

## JSON Representation
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




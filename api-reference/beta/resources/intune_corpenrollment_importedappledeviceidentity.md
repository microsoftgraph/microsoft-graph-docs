# importedAppleDeviceIdentity resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The importedAppleDeviceIdentity resource represents the imported device identity of an Apple device .
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List importedAppleDeviceIdentities](../api/intune_corpenrollment_importedappledeviceidentity_list.md)|[importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md) collection|List properties and relationships of the [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md) objects.|
|[Get importedAppleDeviceIdentity](../api/intune_corpenrollment_importedappledeviceidentity_get.md)|[importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md)|Read properties and relationships of the [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md) object.|
|[Create importedAppleDeviceIdentity](../api/intune_corpenrollment_importedappledeviceidentity_create.md)|[importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md)|Create a new [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md) object.|
|[Delete importedAppleDeviceIdentity](../api/intune_corpenrollment_importedappledeviceidentity_delete.md)|None|Deletes a [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md).|
|[Update importedAppleDeviceIdentity](../api/intune_corpenrollment_importedappledeviceidentity_update.md)|[importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md)|Update the properties of a [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md) object.|
|[importAppleDeviceIdentityList action](../api/intune_corpenrollment_importedappledeviceidentity_importappledeviceidentitylist.md)|[importedAppleDeviceIdentityResult](../resources/intune_corpenrollment_importedappledeviceidentityresult.md) collection|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|serialNumber|String|Device serial number|
|requestedEnrollmentProfileId|String|Enrollment profile Id admin intends to apply to the device during next enrollment|
|requestedEnrollmentProfileAssignmentDateTime|DateTimeOffset|The time enrollment profile was assigned to the device|
|isSupervised|Boolean|Indicates if the Apple device is supervised. More information is at: https://support.apple.com/en-us/HT202837|
|discoverySource|[discoverySource](../resources/intune_corpenrollment_discoverysource.md)|Apple device discovery source. Possible values are: `unknown`, `adminImport`, `deviceEnrollmentProgram`.|
|createdDateTime|DateTimeOffset|Created Date Time of the device|
|lastContactedDateTime|DateTimeOffset|Last Contacted Date Time of the device|
|description|String|The description of the device|
|enrollmentState|[enrollmentState](../resources/intune_shared_enrollmentstate.md)|The state of the device in Intune. Possible values are: `unknown`, `enrolled`, `pendingReset`, `failed`, `notContacted`.|
|platform|[platform](../resources/intune_shared_platform.md)|The platform of the Device. Possible values are: `unknown`, `ios`, `android`, `windows`, `windowsMobile`, `macOS`.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.importedAppleDeviceIdentity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.importedAppleDeviceIdentity",
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
  "platform": "String"
}
```




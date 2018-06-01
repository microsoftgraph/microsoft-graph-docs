# importedAppleDeviceIdentityResult resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The importedAppleDeviceIdentityResult resource represents the result of attempting to import Apple devices identities.

Inherits from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List importedAppleDeviceIdentityResults](../api/intune_corpenrollment_importedappledeviceidentityresult_list.md)|[importedAppleDeviceIdentityResult](../resources/intune_corpenrollment_importedappledeviceidentityresult.md) collection|List properties and relationships of the [importedAppleDeviceIdentityResult](../resources/intune_corpenrollment_importedappledeviceidentityresult.md) objects.|
|[Get importedAppleDeviceIdentityResult](../api/intune_corpenrollment_importedappledeviceidentityresult_get.md)|[importedAppleDeviceIdentityResult](../resources/intune_corpenrollment_importedappledeviceidentityresult.md)|Read properties and relationships of the [importedAppleDeviceIdentityResult](../resources/intune_corpenrollment_importedappledeviceidentityresult.md) object.|
|[Create importedAppleDeviceIdentityResult](../api/intune_corpenrollment_importedappledeviceidentityresult_create.md)|[importedAppleDeviceIdentityResult](../resources/intune_corpenrollment_importedappledeviceidentityresult.md)|Create a new [importedAppleDeviceIdentityResult](../resources/intune_corpenrollment_importedappledeviceidentityresult.md) object.|
|[Delete importedAppleDeviceIdentityResult](../api/intune_corpenrollment_importedappledeviceidentityresult_delete.md)|None|Deletes a [importedAppleDeviceIdentityResult](../resources/intune_corpenrollment_importedappledeviceidentityresult.md).|
|[Update importedAppleDeviceIdentityResult](../api/intune_corpenrollment_importedappledeviceidentityresult_update.md)|[importedAppleDeviceIdentityResult](../resources/intune_corpenrollment_importedappledeviceidentityresult.md)|Update the properties of a [importedAppleDeviceIdentityResult](../resources/intune_corpenrollment_importedappledeviceidentityresult.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md)|
|serialNumber|String|Device serial number Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md)|
|requestedEnrollmentProfileId|String|Enrollment profile Id admin intends to apply to the device during next enrollment Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md)|
|requestedEnrollmentProfileAssignmentDateTime|DateTimeOffset|The time enrollment profile was assigned to the device Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md)|
|isSupervised|Boolean|Indicates if the Apple device is supervised. More information is at: https://support.apple.com/en-us/HT202837 Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md)|
|discoverySource|[discoverySource](../resources/intune_corpenrollment_discoverysource.md)|Apple device discovery source. Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md). Possible values are: `unknown`, `adminImport`, `deviceEnrollmentProgram`.|
|createdDateTime|DateTimeOffset|Created Date Time of the device Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md)|
|lastContactedDateTime|DateTimeOffset|Last Contacted Date Time of the device Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md)|
|description|String|The description of the device Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md)|
|enrollmentState|[enrollmentState](../resources/intune_shared_enrollmentstate.md)|The state of the device in Intune Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md). Possible values are: `unknown`, `enrolled`, `pendingReset`, `failed`, `notContacted`.|
|platform|[platform](../resources/intune_shared_platform.md)|The platform of the Device. Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedappledeviceidentity.md). Possible values are: `unknown`, `ios`, `android`, `windows`, `windowsMobile`, `macOS`.|
|status|Boolean|Status of imported device identity|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.importedAppleDeviceIdentityResult"
}
-->
``` json
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




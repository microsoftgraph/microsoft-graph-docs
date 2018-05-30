# importedDeviceIdentity resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The importedDeviceIdentity resource represents a unique hardware identity of a device that has been pre-staged for pre-enrollment configuration.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List importedDeviceIdentities](../api/intune_enrollment_importeddeviceidentity_list.md)|[importedDeviceIdentity](../resources/intune_enrollment_importeddeviceidentity.md) collection|List properties and relationships of the [importedDeviceIdentity](../resources/intune_enrollment_importeddeviceidentity.md) objects.|
|[Get importedDeviceIdentity](../api/intune_enrollment_importeddeviceidentity_get.md)|[importedDeviceIdentity](../resources/intune_enrollment_importeddeviceidentity.md)|Read properties and relationships of the [importedDeviceIdentity](../resources/intune_enrollment_importeddeviceidentity.md) object.|
|[Create importedDeviceIdentity](../api/intune_enrollment_importeddeviceidentity_create.md)|[importedDeviceIdentity](../resources/intune_enrollment_importeddeviceidentity.md)|Create a new [importedDeviceIdentity](../resources/intune_enrollment_importeddeviceidentity.md) object.|
|[Delete importedDeviceIdentity](../api/intune_enrollment_importeddeviceidentity_delete.md)|None|Deletes a [importedDeviceIdentity](../resources/intune_enrollment_importeddeviceidentity.md).|
|[Update importedDeviceIdentity](../api/intune_enrollment_importeddeviceidentity_update.md)|[importedDeviceIdentity](../resources/intune_enrollment_importeddeviceidentity.md)|Update the properties of a [importedDeviceIdentity](../resources/intune_enrollment_importeddeviceidentity.md) object.|
|[importDeviceIdentityList action](../api/intune_enrollment_importeddeviceidentity_importdeviceidentitylist.md)|[importedDeviceIdentityResult](../resources/intune_enrollment_importeddeviceidentityresult.md) collection|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Id of the imported device identity|
|importedDeviceIdentifier|String|Imported Device Identifier|
|importedDeviceIdentityType|[importedDeviceIdentityType](../resources/intune_enrollment_importeddeviceidentitytype.md)|Type of Imported Device Identity. Possible values are: `unknown`, `imei`, `serialNumber`.|
|lastModifiedDateTime|DateTimeOffset|Last Modified DateTime of the description|
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
  "@odata.type": "microsoft.graph.importedDeviceIdentity"
}
-->
``` json
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




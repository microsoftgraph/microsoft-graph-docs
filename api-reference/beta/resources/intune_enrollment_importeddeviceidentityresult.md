# importedDeviceIdentityResult resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The importedDeviceIdentityResult resource represents the result of attempting to import a device identity.

Inherits from [importedDeviceIdentity](../resources/intune_enrollment_importeddeviceidentity.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List importedDeviceIdentityResults](../api/intune_enrollment_importeddeviceidentityresult_list.md)|[importedDeviceIdentityResult](../resources/intune_enrollment_importeddeviceidentityresult.md) collection|List properties and relationships of the [importedDeviceIdentityResult](../resources/intune_enrollment_importeddeviceidentityresult.md) objects.|
|[Get importedDeviceIdentityResult](../api/intune_enrollment_importeddeviceidentityresult_get.md)|[importedDeviceIdentityResult](../resources/intune_enrollment_importeddeviceidentityresult.md)|Read properties and relationships of the [importedDeviceIdentityResult](../resources/intune_enrollment_importeddeviceidentityresult.md) object.|
|[Create importedDeviceIdentityResult](../api/intune_enrollment_importeddeviceidentityresult_create.md)|[importedDeviceIdentityResult](../resources/intune_enrollment_importeddeviceidentityresult.md)|Create a new [importedDeviceIdentityResult](../resources/intune_enrollment_importeddeviceidentityresult.md) object.|
|[Delete importedDeviceIdentityResult](../api/intune_enrollment_importeddeviceidentityresult_delete.md)|None|Deletes a [importedDeviceIdentityResult](../resources/intune_enrollment_importeddeviceidentityresult.md).|
|[Update importedDeviceIdentityResult](../api/intune_enrollment_importeddeviceidentityresult_update.md)|[importedDeviceIdentityResult](../resources/intune_enrollment_importeddeviceidentityresult.md)|Update the properties of a [importedDeviceIdentityResult](../resources/intune_enrollment_importeddeviceidentityresult.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Id of the imported device identity Inherited from [importedDeviceIdentity](../resources/intune_enrollment_importeddeviceidentity.md)|
|importedDeviceIdentifier|String|Imported Device Identifier Inherited from [importedDeviceIdentity](../resources/intune_enrollment_importeddeviceidentity.md)|
|importedDeviceIdentityType|[importedDeviceIdentityType](../resources/intune_enrollment_importeddeviceidentitytype.md)|Type of Imported Device Identity Inherited from [importedDeviceIdentity](../resources/intune_enrollment_importeddeviceidentity.md). Possible values are: `unknown`, `imei`, `serialNumber`.|
|lastModifiedDateTime|DateTimeOffset|Last Modified DateTime of the description Inherited from [importedDeviceIdentity](../resources/intune_enrollment_importeddeviceidentity.md)|
|createdDateTime|DateTimeOffset|Created Date Time of the device Inherited from [importedDeviceIdentity](../resources/intune_enrollment_importeddeviceidentity.md)|
|lastContactedDateTime|DateTimeOffset|Last Contacted Date Time of the device Inherited from [importedDeviceIdentity](../resources/intune_enrollment_importeddeviceidentity.md)|
|description|String|The description of the device Inherited from [importedDeviceIdentity](../resources/intune_enrollment_importeddeviceidentity.md)|
|enrollmentState|[enrollmentState](../resources/intune_shared_enrollmentstate.md)|The state of the device in Intune Inherited from [importedDeviceIdentity](../resources/intune_enrollment_importeddeviceidentity.md). Possible values are: `unknown`, `enrolled`, `pendingReset`, `failed`, `notContacted`.|
|platform|[platform](../resources/intune_shared_platform.md)|The platform of the Device. Inherited from [importedDeviceIdentity](../resources/intune_enrollment_importeddeviceidentity.md). Possible values are: `unknown`, `ios`, `android`, `windows`, `windowsMobile`, `macOS`.|
|status|Boolean|Status of imported device identity|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.importedDeviceIdentityResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.importedDeviceIdentityResult",
  "id": "String (identifier)",
  "importedDeviceIdentifier": "String",
  "importedDeviceIdentityType": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "lastContactedDateTime": "String (timestamp)",
  "description": "String",
  "enrollmentState": "String",
  "platform": "String",
  "status": true
}
```




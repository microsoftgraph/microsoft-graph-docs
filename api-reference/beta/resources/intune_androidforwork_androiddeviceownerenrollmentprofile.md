﻿# androidDeviceOwnerEnrollmentProfile resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Enrollment Profile used to enroll COSU devices using Google's Cloud Management.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List androidDeviceOwnerEnrollmentProfiles](../api/intune_androidforwork_androiddeviceownerenrollmentprofile_list.md)|[androidDeviceOwnerEnrollmentProfile](../resources/intune_androidforwork_androiddeviceownerenrollmentprofile.md) collection|List properties and relationships of the [androidDeviceOwnerEnrollmentProfile](../resources/intune_androidforwork_androiddeviceownerenrollmentprofile.md) objects.|
|[Get androidDeviceOwnerEnrollmentProfile](../api/intune_androidforwork_androiddeviceownerenrollmentprofile_get.md)|[androidDeviceOwnerEnrollmentProfile](../resources/intune_androidforwork_androiddeviceownerenrollmentprofile.md)|Read properties and relationships of the [androidDeviceOwnerEnrollmentProfile](../resources/intune_androidforwork_androiddeviceownerenrollmentprofile.md) object.|
|[Create androidDeviceOwnerEnrollmentProfile](../api/intune_androidforwork_androiddeviceownerenrollmentprofile_create.md)|[androidDeviceOwnerEnrollmentProfile](../resources/intune_androidforwork_androiddeviceownerenrollmentprofile.md)|Create a new [androidDeviceOwnerEnrollmentProfile](../resources/intune_androidforwork_androiddeviceownerenrollmentprofile.md) object.|
|[Delete androidDeviceOwnerEnrollmentProfile](../api/intune_androidforwork_androiddeviceownerenrollmentprofile_delete.md)|None|Deletes a [androidDeviceOwnerEnrollmentProfile](../resources/intune_androidforwork_androiddeviceownerenrollmentprofile.md).|
|[Update androidDeviceOwnerEnrollmentProfile](../api/intune_androidforwork_androiddeviceownerenrollmentprofile_update.md)|[androidDeviceOwnerEnrollmentProfile](../resources/intune_androidforwork_androiddeviceownerenrollmentprofile.md)|Update the properties of a [androidDeviceOwnerEnrollmentProfile](../resources/intune_androidforwork_androiddeviceownerenrollmentprofile.md) object.|
|[revokeToken action](../api/intune_androidforwork_androiddeviceownerenrollmentprofile_revoketoken.md)|None|Not yet documented|
|[createToken action](../api/intune_androidforwork_androiddeviceownerenrollmentprofile_createtoken.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accountId|String|Tenant GUID the enrollment profile belongs to.|
|id|String|Unique GUID for the enrollment profile.|
|displayName|String|Display name for the enrollment profile.|
|description|String|Description for the enrollment profile.|
|createdDateTime|DateTimeOffset|Date time the enrollment profile was created.|
|lastModifiedDateTime|DateTimeOffset|Date time the enrollment profile was last modified.|
|tokenValue|String|Value of the most recently created token for this enrollment profile.|
|tokenCreationDateTime|DateTimeOffset|Date time the most recently created token was created.|
|tokenExpirationDateTime|DateTimeOffset|Date time the most recently created token will expire.|
|enrolledDeviceCount|Int32|Total number of Android devices that have enrolled using this enrollment profile.|
|qrCodeContent|String|String used to generate a QR code for the token.|
|qrCodeImage|[mimeContent](../resources/intune_shared_mimecontent.md)|String used to generate a QR code for the token.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidDeviceOwnerEnrollmentProfile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidDeviceOwnerEnrollmentProfile",
  "accountId": "String",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "tokenValue": "String",
  "tokenCreationDateTime": "String (timestamp)",
  "tokenExpirationDateTime": "String (timestamp)",
  "enrolledDeviceCount": 1024,
  "qrCodeContent": "String",
  "qrCodeImage": {
    "@odata.type": "microsoft.graph.mimeContent",
    "type": "String",
    "value": "binary"
  }
}
```






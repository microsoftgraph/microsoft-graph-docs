﻿# depOnboardingSetting resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The depOnboardingSetting represents an instance of the Apple DEP service being onboarded to Intune. The onboarded service instance manages an Apple Token used to synchronize data between Apple and Intune.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List depOnboardingSettings](../api/intune_enrollment_deponboardingsetting_list.md)|[depOnboardingSetting](../resources/intune_enrollment_deponboardingsetting.md) collection|List properties and relationships of the [depOnboardingSetting](../resources/intune_enrollment_deponboardingsetting.md) objects.|
|[Get depOnboardingSetting](../api/intune_enrollment_deponboardingsetting_get.md)|[depOnboardingSetting](../resources/intune_enrollment_deponboardingsetting.md)|Read properties and relationships of the [depOnboardingSetting](../resources/intune_enrollment_deponboardingsetting.md) object.|
|[Create depOnboardingSetting](../api/intune_enrollment_deponboardingsetting_create.md)|[depOnboardingSetting](../resources/intune_enrollment_deponboardingsetting.md)|Create a new [depOnboardingSetting](../resources/intune_enrollment_deponboardingsetting.md) object.|
|[Delete depOnboardingSetting](../api/intune_enrollment_deponboardingsetting_delete.md)|None|Deletes a [depOnboardingSetting](../resources/intune_enrollment_deponboardingsetting.md).|
|[Update depOnboardingSetting](../api/intune_enrollment_deponboardingsetting_update.md)|[depOnboardingSetting](../resources/intune_enrollment_deponboardingsetting.md)|Update the properties of a [depOnboardingSetting](../resources/intune_enrollment_deponboardingsetting.md) object.|
|[getEncryptionPublicKey function](../api/intune_enrollment_deponboardingsetting_getencryptionpublickey.md)|String|Get a public key to use to encrypt the Apple device enrollment program token|
|[uploadDepToken action](../api/intune_enrollment_deponboardingsetting_uploaddeptoken.md)|None|Uploads a new Device Enrollment Program token|
|[syncWithAppleDeviceEnrollmentProgram action](../api/intune_enrollment_deponboardingsetting_syncwithappledeviceenrollmentprogram.md)|None|Synchronizes between Apple Device Enrollment Program and Intune|
|[shareForSchoolDataSyncService action](../api/intune_enrollment_deponboardingsetting_shareforschooldatasyncservice.md)|None|Not yet documented|
|[unshareForSchoolDataSyncService action](../api/intune_enrollment_deponboardingsetting_unshareforschooldatasyncservice.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|UUID for the object|
|appleIdentifier|String|The Apple ID used to obtain the current token.|
|tokenExpirationDateTime|DateTimeOffset|When the token will expire.|
|lastModifiedDateTime|DateTimeOffset|When the service was onboarded.|
|lastSuccessfulSyncDateTime|DateTimeOffset|When the service last syned with Intune|
|lastSyncTriggeredDateTime|DateTimeOffset|When Intune last requested a sync.|
|shareTokenWithSchoolDataSyncService|Boolean|Whether or not the Dep token sharing is enabled with the School Data Sync service.|
|lastSyncErrorCode|Int32|Error code reported by Apple during last dep sync.|
|tokenType|[depTokenType](../resources/intune_enrollment_deptokentype.md)|Gets or sets the Dep Token Type. Possible values are: `none`, `dep`, `appleSchoolManager`.|
|tokenName|String|Friendly Name for Dep Token|
|syncedDeviceCount|Int32|Gets synced device count|
|defaultProfileDisplayName|String|Gets synced device count|
|dataSharingConsentGranted|Boolean|Consent granted for data sharing with Apple Dep Service|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|defaultIosEnrollmentProfile|[depIOSEnrollmentProfile](../resources/intune_enrollment_depiosenrollmentprofile.md)|Default iOS Enrollment Profile|
|defaultMacOsEnrollmentProfile|[depMacOSEnrollmentProfile](../resources/intune_enrollment_depmacosenrollmentprofile.md)|Default MacOs Enrollment Profile|
|enrollmentProfiles|[enrollmentProfile](../resources/intune_enrollment_enrollmentprofile.md) collection|The enrollment profiles.|
|importedAppleDeviceIdentities|[importedAppleDeviceIdentity](../resources/intune_enrollment_importedappledeviceidentity.md) collection|The imported Apple device identities.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.depOnboardingSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.depOnboardingSetting",
  "id": "String (identifier)",
  "appleIdentifier": "String",
  "tokenExpirationDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "lastSuccessfulSyncDateTime": "String (timestamp)",
  "lastSyncTriggeredDateTime": "String (timestamp)",
  "shareTokenWithSchoolDataSyncService": true,
  "lastSyncErrorCode": 1024,
  "tokenType": "String",
  "tokenName": "String",
  "syncedDeviceCount": 1024,
  "defaultProfileDisplayName": "String",
  "dataSharingConsentGranted": true
}
```






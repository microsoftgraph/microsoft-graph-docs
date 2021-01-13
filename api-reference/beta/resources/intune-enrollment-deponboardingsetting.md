---
title: "depOnboardingSetting resource type"
description: "The depOnboardingSetting represents an instance of the Apple DEP service being onboarded to Intune. The onboarded service instance manages an Apple Token used to synchronize data between Apple and Intune."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# depOnboardingSetting resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The depOnboardingSetting represents an instance of the Apple DEP service being onboarded to Intune. The onboarded service instance manages an Apple Token used to synchronize data between Apple and Intune.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List depOnboardingSettings](../api/intune-enrollment-deponboardingsetting-list.md)|[depOnboardingSetting](../resources/intune-enrollment-deponboardingsetting.md) collection|List properties and relationships of the [depOnboardingSetting](../resources/intune-enrollment-deponboardingsetting.md) objects.|
|[Get depOnboardingSetting](../api/intune-enrollment-deponboardingsetting-get.md)|[depOnboardingSetting](../resources/intune-enrollment-deponboardingsetting.md)|Read properties and relationships of the [depOnboardingSetting](../resources/intune-enrollment-deponboardingsetting.md) object.|
|[Create depOnboardingSetting](../api/intune-enrollment-deponboardingsetting-create.md)|[depOnboardingSetting](../resources/intune-enrollment-deponboardingsetting.md)|Create a new [depOnboardingSetting](../resources/intune-enrollment-deponboardingsetting.md) object.|
|[Delete depOnboardingSetting](../api/intune-enrollment-deponboardingsetting-delete.md)|None|Deletes a [depOnboardingSetting](../resources/intune-enrollment-deponboardingsetting.md).|
|[Update depOnboardingSetting](../api/intune-enrollment-deponboardingsetting-update.md)|[depOnboardingSetting](../resources/intune-enrollment-deponboardingsetting.md)|Update the properties of a [depOnboardingSetting](../resources/intune-enrollment-deponboardingsetting.md) object.|
|[getEncryptionPublicKey function](../api/intune-enrollment-deponboardingsetting-getencryptionpublickey.md)|String|Get a public key to use to encrypt the Apple device enrollment program token|
|[generateEncryptionPublicKey action](../api/intune-enrollment-deponboardingsetting-generateencryptionpublickey.md)|String|Generate a public key to use to encrypt the Apple device enrollment program token|
|[uploadDepToken action](../api/intune-enrollment-deponboardingsetting-uploaddeptoken.md)|None|Uploads a new Device Enrollment Program token|
|[syncWithAppleDeviceEnrollmentProgram action](../api/intune-enrollment-deponboardingsetting-syncwithappledeviceenrollmentprogram.md)|None|Synchronizes between Apple Device Enrollment Program and Intune|
|[shareForSchoolDataSyncService action](../api/intune-enrollment-deponboardingsetting-shareforschooldatasyncservice.md)|None|Not yet documented|
|[unshareForSchoolDataSyncService action](../api/intune-enrollment-deponboardingsetting-unshareforschooldatasyncservice.md)|None|Not yet documented|
|[getExpiringVppTokenCount function](../api/intune-enrollment-deponboardingsetting-getexpiringvpptokencount.md)|Int32|Not yet documented|

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
|tokenType|[depTokenType](../resources/intune-enrollment-deptokentype.md)|Gets or sets the Dep Token Type. Possible values are: `none`, `dep`, `appleSchoolManager`.|
|tokenName|String|Friendly Name for Dep Token|
|syncedDeviceCount|Int32|Gets synced device count|
|dataSharingConsentGranted|Boolean|Consent granted for data sharing with Apple Dep Service|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|defaultIosEnrollmentProfile|[depIOSEnrollmentProfile](../resources/intune-enrollment-depiosenrollmentprofile.md)|Default iOS Enrollment Profile|
|defaultMacOsEnrollmentProfile|[depMacOSEnrollmentProfile](../resources/intune-enrollment-depmacosenrollmentprofile.md)|Default MacOs Enrollment Profile|
|enrollmentProfiles|[enrollmentProfile](../resources/intune-enrollment-enrollmentprofile.md) collection|The enrollment profiles.|
|importedAppleDeviceIdentities|[importedAppleDeviceIdentity](../resources/intune-enrollment-importedappledeviceidentity.md) collection|The imported Apple device identities.|

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
  "dataSharingConsentGranted": true,
  "roleScopeTagIds": [
    "String"
  ]
}
```





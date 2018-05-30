# depOnboardingSetting resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The depOnboardingSetting represents an instance of the Apple DEP service being onboarded to Intune. The onboarded service instance manages an Apple Token used to synchronize data between Apple and Intune.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List depOnboardingSettings](../api/intune_onboarding_deponboardingsetting_list.md)|[depOnboardingSetting](../resources/intune_onboarding_deponboardingsetting.md) collection|List properties and relationships of the [depOnboardingSetting](../resources/intune_onboarding_deponboardingsetting.md) objects.|
|[Get depOnboardingSetting](../api/intune_onboarding_deponboardingsetting_get.md)|[depOnboardingSetting](../resources/intune_onboarding_deponboardingsetting.md)|Read properties and relationships of the [depOnboardingSetting](../resources/intune_onboarding_deponboardingsetting.md) object.|
|[Create depOnboardingSetting](../api/intune_onboarding_deponboardingsetting_create.md)|[depOnboardingSetting](../resources/intune_onboarding_deponboardingsetting.md)|Create a new [depOnboardingSetting](../resources/intune_onboarding_deponboardingsetting.md) object.|
|[Delete depOnboardingSetting](../api/intune_onboarding_deponboardingsetting_delete.md)|None|Deletes a [depOnboardingSetting](../resources/intune_onboarding_deponboardingsetting.md).|
|[Update depOnboardingSetting](../api/intune_onboarding_deponboardingsetting_update.md)|[depOnboardingSetting](../resources/intune_onboarding_deponboardingsetting.md)|Update the properties of a [depOnboardingSetting](../resources/intune_onboarding_deponboardingsetting.md) object.|
|[getEncryptionPublicKey function](../api/intune_onboarding_deponboardingsetting_getencryptionpublickey.md)|String|Not yet documented|
|[uploadDepToken action](../api/intune_onboarding_deponboardingsetting_uploaddeptoken.md)|None|Not yet documented|
|[syncWithAppleDeviceEnrollmentProgram action](../api/intune_onboarding_deponboardingsetting_syncwithappledeviceenrollmentprogram.md)|None|Not yet documented|

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

## Relationships
None
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
  "lastSyncErrorCode": 1024
}
```




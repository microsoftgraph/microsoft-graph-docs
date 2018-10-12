# androidForWorkSettings resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Settings for Android For Work.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get androidForWorkSettings](../api/intune_androidforwork_androidforworksettings_get.md)|[androidForWorkSettings](../resources/intune_androidforwork_androidforworksettings.md)|Read properties and relationships of the [androidForWorkSettings](../resources/intune_androidforwork_androidforworksettings.md) object.|
|[Update androidForWorkSettings](../api/intune_androidforwork_androidforworksettings_update.md)|[androidForWorkSettings](../resources/intune_androidforwork_androidforworksettings.md)|Update the properties of a [androidForWorkSettings](../resources/intune_androidforwork_androidforworksettings.md) object.|
|[requestSignupUrl action](../api/intune_androidforwork_androidforworksettings_requestsignupurl.md)|String|Not yet documented|
|[completeSignup action](../api/intune_androidforwork_androidforworksettings_completesignup.md)|None|Not yet documented|
|[syncApps action](../api/intune_androidforwork_androidforworksettings_syncapps.md)|None|Not yet documented|
|[unbind action](../api/intune_androidforwork_androidforworksettings_unbind.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The Android for Work settings identifier|
|bindStatus|[androidForWorkBindStatus](../resources/intune_androidforwork_androidforworkbindstatus.md)|Bind status of the tenant with the Google EMM API. Possible values are: `notBound`, `bound`, `boundAndValidated`, `unbinding`.|
|lastAppSyncDateTime|DateTimeOffset|Last completion time for app sync|
|lastAppSyncStatus|[androidForWorkSyncStatus](../resources/intune_androidforwork_androidforworksyncstatus.md)|Last application sync result. Possible values are: `success`, `credentialsNotValid`, `androidForWorkApiError`, `managementServiceError`, `unknownError`, `none`.|
|ownerUserPrincipalName|String|Owner UPN that created the enterprise|
|ownerOrganizationName|String|Organization name used when onboarding Android for Work|
|lastModifiedDateTime|DateTimeOffset|Last modification time for Android for Work settings|
|enrollmentTarget|[androidForWorkEnrollmentTarget](../resources/intune_androidforwork_androidforworkenrollmenttarget.md)|Indicates which users can enroll devices in Android for Work device management. Possible values are: `none`, `all`, `targeted`, `targetedAsEnrollmentRestrictions`.|
|targetGroupIds|String collection|Specifies which AAD groups can enroll devices in Android for Work device management if enrollmentTarget is set to 'Targeted'|
|deviceOwnerManagementEnabled|Boolean|Indicates if this account is flighting for Android Device Owner Management with CloudDPC.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidForWorkSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidForWorkSettings",
  "id": "String (identifier)",
  "bindStatus": "String",
  "lastAppSyncDateTime": "String (timestamp)",
  "lastAppSyncStatus": "String",
  "ownerUserPrincipalName": "String",
  "ownerOrganizationName": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "enrollmentTarget": "String",
  "targetGroupIds": [
    "String"
  ],
  "deviceOwnerManagementEnabled": true
}
```




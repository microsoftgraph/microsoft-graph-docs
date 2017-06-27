#  resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Settings for Android For Work.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get androidForWorkSettings](../api/intune_androidforwork_androidforworksettings_get.md)|[androidForWorkSettings](../resources/intune_androidforwork_androidforworksettings.md)|Read properties and relationships of the [androidForWorkSettings](../resources/intune_androidforwork_androidforworksettings.md) object.|
|[Update androidForWorkSettings](../api/intune_androidforwork_androidforworksettings_update.md)|[androidForWorkSettings](../resources/intune_androidforwork_androidforworksettings.md)|Update the properties of a [androidForWorkSettings](../resources/intune_androidforwork_androidforworksettings.md) object.|
|[requestSignupUrl action](../api/intune_androidforwork_androidforworksettings_requestsignupurl.md)|String|Generates a sign-up URL that is used to enroll in Android for Work management.|
|[completeSignup action](../api/intune_androidforwork_androidforworksettings_completesignup.md)|None|Completes the sign-up flow for Android for Work management.|
|[syncApps action](../api/intune_androidforwork_androidforworksettings_syncapps.md)|None|Syncs approved applications for the Enterprise.|
|[unbind action](../api/intune_androidforwork_androidforworksettings_unbind.md)|None|Disables Android for Work management for the Enterprise.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|The Android for Work settings identifier|
|bindStatus|String|Bind status of the tenant with the Google EMM API Possible values are: `notBound`, `bound`, `boundAndValidated`, `unbinding`.|
|lastAppSyncDateTime|DateTimeOffset|Last completion time for app sync|
|lastAppSyncStatus|String|Last application sync result Possible values are: `success`, `credentialsNotValid`, `androidForWorkApiError`, `managementServiceError`, `unknownError`, `none`.|
|ownerUserPrincipalName|String|Owner UPN that created the enterprise|
|ownerOrganizationName|String|Organization name used when onboarding Android for Work|
|lastModifiedDateTime|DateTimeOffset|Last modification time for Android for Work settings|
|enrollmentTarget|String|Indicates which users can enroll devices in Android for Work device management Possible values are: `none`, `all`, `targeted`, `targetedAsEnrollmentRestrictions`.|
|targetGroupIds|String collection|Specifies which AAD groups can enroll devices in Android for Work device management if enrollmentTarget is set to 'Targeted'|

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
```json
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
  ]
}
```




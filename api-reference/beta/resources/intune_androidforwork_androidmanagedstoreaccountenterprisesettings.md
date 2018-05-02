# androidManagedStoreAccountEnterpriseSettings resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Enterprise settings for an Android managed store account.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get androidManagedStoreAccountEnterpriseSettings](../api/intune_androidforwork_androidmanagedstoreaccountenterprisesettings_get.md)|[androidManagedStoreAccountEnterpriseSettings](../resources/intune_androidforwork_androidmanagedstoreaccountenterprisesettings.md)|Read properties and relationships of the [androidManagedStoreAccountEnterpriseSettings](../resources/intune_androidforwork_androidmanagedstoreaccountenterprisesettings.md) object.|
|[Update androidManagedStoreAccountEnterpriseSettings](../api/intune_androidforwork_androidmanagedstoreaccountenterprisesettings_update.md)|[androidManagedStoreAccountEnterpriseSettings](../resources/intune_androidforwork_androidmanagedstoreaccountenterprisesettings.md)|Update the properties of a [androidManagedStoreAccountEnterpriseSettings](../resources/intune_androidforwork_androidmanagedstoreaccountenterprisesettings.md) object.|
|[requestSignupUrl action](../api/intune_androidforwork_androidmanagedstoreaccountenterprisesettings_requestsignupurl.md)|String|Not yet documented|
|[completeSignup action](../api/intune_androidforwork_androidmanagedstoreaccountenterprisesettings_completesignup.md)|None|Not yet documented|
|[syncApps action](../api/intune_androidforwork_androidmanagedstoreaccountenterprisesettings_syncapps.md)|None|Not yet documented|
|[unbind action](../api/intune_androidforwork_androidmanagedstoreaccountenterprisesettings_unbind.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The Android store account enterprise settings identifier|
|bindStatus|[androidManagedStoreAccountBindStatus](../resources/intune_androidforwork_androidmanagedstoreaccountbindstatus.md)|Bind status of the tenant with the Google EMM API. Possible values are: `notBound`, `bound`, `boundAndValidated`, `unbinding`.|
|lastAppSyncDateTime|DateTimeOffset|Last completion time for app sync|
|lastAppSyncStatus|[androidManagedStoreAccountAppSyncStatus](../resources/intune_androidforwork_androidmanagedstoreaccountappsyncstatus.md)|Last application sync result. Possible values are: `success`, `credentialsNotValid`, `androidForWorkApiError`, `managementServiceError`, `unknownError`, `none`.|
|ownerUserPrincipalName|String|Owner UPN that created the enterprise|
|ownerOrganizationName|String|Organization name used when onboarding Android Enterprise|
|lastModifiedDateTime|DateTimeOffset|Last modification time for Android enterprise settings|
|enrollmentTarget|[androidManagedStoreAccountEnrollmentTarget](../resources/intune_androidforwork_androidmanagedstoreaccountenrollmenttarget.md)|Indicates which users can enroll devices in Android Enterprise device management. Possible values are: `none`, `all`, `targeted`, `targetedAsEnrollmentRestrictions`.|
|targetGroupIds|String collection|Specifies which AAD groups can enroll devices in Android for Work device management if enrollmentTarget is set to 'Targeted'|
|deviceOwnerManagementEnabled|Boolean|Indicates if this account is flighting for Android Device Owner Management with CloudDPC.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidManagedStoreAccountEnterpriseSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidManagedStoreAccountEnterpriseSettings",
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




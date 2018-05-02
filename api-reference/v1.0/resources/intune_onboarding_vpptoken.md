# vppToken resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

You purchase multiple licenses for iOS apps through the Apple Volume Purchase Program for Business or Education. This involves setting up an Apple VPP account from the Apple website and uploading the Apple VPP Business or Education token to Intune. You can then synchronize your volume purchase information with Intune and track your volume-purchased app use. You can upload multiple Apple VPP Business or Education tokens.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List vppTokens](../api/intune_onboarding_vpptoken_list.md)|[vppToken](../resources/intune_onboarding_vpptoken.md) collection|List properties and relationships of the [vppToken](../resources/intune_onboarding_vpptoken.md) objects.|
|[Get vppToken](../api/intune_onboarding_vpptoken_get.md)|[vppToken](../resources/intune_onboarding_vpptoken.md)|Read properties and relationships of the [vppToken](../resources/intune_onboarding_vpptoken.md) object.|
|[Create vppToken](../api/intune_onboarding_vpptoken_create.md)|[vppToken](../resources/intune_onboarding_vpptoken.md)|Create a new [vppToken](../resources/intune_onboarding_vpptoken.md) object.|
|[Delete vppToken](../api/intune_onboarding_vpptoken_delete.md)|None|Deletes a [vppToken](../resources/intune_onboarding_vpptoken.md).|
|[Update vppToken](../api/intune_onboarding_vpptoken_update.md)|[vppToken](../resources/intune_onboarding_vpptoken.md)|Update the properties of a [vppToken](../resources/intune_onboarding_vpptoken.md) object.|
|[syncLicenses action](../api/intune_onboarding_vpptoken_synclicenses.md)|[vppToken](../resources/intune_onboarding_vpptoken.md)|Syncs licenses associated with a specific appleVolumePurchaseProgramToken|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|This is automatically generated when the appleVolumePurchaseProgramToken is created. It is the Key of the entity.|
|organizationName|String|The organization associated with the Apple Volume Purchase Program Token|
|vppTokenAccountType|[vppTokenAccountType](../resources/intune_onboarding_vpptokenaccounttype.md)|The type of volume purchase program which the given Apple Volume Purchase Program Token is associated with. Possible values are: `business`, `education`. Possible values are: `business`, `education`.|
|appleId|String|The apple Id associated with the given Apple Volume Purchase Program Token.|
|expirationDateTime|DateTimeOffset|The expiration date time of the Apple Volume Purchase Program Token.|
|lastSyncDateTime|DateTimeOffset|The last time when an application sync was done with the Apple volume purchase program service using the the Apple Volume Purchase Program Token.|
|token|String|The Apple Volume Purchase Program Token string downloaded from the Apple Volume Purchase Program.|
|lastModifiedDateTime|DateTimeOffset|Last modification date time associated with the Apple Volume Purchase Program Token.|
|state|[vppTokenState](../resources/intune_onboarding_vpptokenstate.md)|Current state of the Apple Volume Purchase Program Token. Possible values are: `unknown`, `valid`, `expired`, `invalid`. Possible values are: `unknown`, `valid`, `expired`, `invalid`.|
|lastSyncStatus|[vppTokenSyncStatus](../resources/intune_onboarding_vpptokensyncstatus.md)|Current sync status of the last application sync which was triggered using the Apple Volume Purchase Program Token. Possible values are: `none`, `inProgress`, `completed`, `failed`. Possible values are: `none`, `inProgress`, `completed`, `failed`.|
|automaticallyUpdateApps|Boolean|Whether or not apps for the VPP token will be automatically updated.|
|countryOrRegion|String|Whether or not apps for the VPP token will be automatically updated.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.vppToken"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.vppToken",
  "id": "String (identifier)",
  "organizationName": "String",
  "vppTokenAccountType": "String",
  "appleId": "String",
  "expirationDateTime": "String (timestamp)",
  "lastSyncDateTime": "String (timestamp)",
  "token": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "state": "String",
  "lastSyncStatus": "String",
  "automaticallyUpdateApps": true,
  "countryOrRegion": "String"
}
```




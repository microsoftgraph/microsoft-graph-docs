# appleVolumePurchaseProgramToken resource type

You purchase multiple licenses for iOS apps through the Apple Volume Purchase Program for Business or Education. This involves setting up an Apple VPP account from the Apple website and uploading the Apple VPP Business or Education token to Intune. You can then synchronize your volume purchase information with Intune and track your volume-purchased app use. You can upload multiple Apple VPP Business or Education tokens.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List appleVolumePurchaseProgramTokens](../api/intune_onboarding_appleVolumePurchaseProgramToken_list.md)|[appleVolumePurchaseProgramToken](../resources/intune_onboarding_appleVolumePurchaseProgramToken.md) collection|List properties and relationships of the [appleVolumePurchaseProgramToken](../resources/intune_onboarding_appleVolumePurchaseProgramToken.md) objects.|
|[Get appleVolumePurchaseProgramToken](../api/intune_onboarding_appleVolumePurchaseProgramToken_get.md)|[appleVolumePurchaseProgramToken](../resources/intune_onboarding_appleVolumePurchaseProgramToken.md)|Read properties and relationships of the [appleVolumePurchaseProgramToken](../resources/intune_onboarding_appleVolumePurchaseProgramToken.md) object.|
|[Create appleVolumePurchaseProgramToken](../api/intune_onboarding_appleVolumePurchaseProgramToken_create.md)|[appleVolumePurchaseProgramToken](../resources/intune_onboarding_appleVolumePurchaseProgramToken.md)|Create a new [appleVolumePurchaseProgramToken](../resources/intune_onboarding_appleVolumePurchaseProgramToken.md) object.|
|[Delete appleVolumePurchaseProgramToken](../api/intune_onboarding_appleVolumePurchaseProgramToken_delete.md)|None|Deletes a [appleVolumePurchaseProgramToken](../resources/intune_onboarding_appleVolumePurchaseProgramToken.md).|
|[Update appleVolumePurchaseProgramToken](../api/intune_onboarding_appleVolumePurchaseProgramToken_update.md)|[appleVolumePurchaseProgramToken](../resources/intune_onboarding_appleVolumePurchaseProgramToken.md)|Update the properties of a [appleVolumePurchaseProgramToken](../resources/intune_onboarding_appleVolumePurchaseProgramToken.md) object.|
|[syncApps action](../api/intune_onboarding_appleVolumePurchaseProgramToken_syncApps.md)|[appleVolumePurchaseProgramToken](../resources/intune_onboarding_appleVolumePurchaseProgramToken.md)|Not yet documented|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|This is automatically generated when the appleVolumePurchaseProgramToken is created. It is the Key of the entity.|
|organizationName|String|The organization associated with the Apple Volume Purchase Program Token|
|volumePurchaseProgramTokenAccountType|String|The type of volume purchase program which the given Apple Volume Purchase Program Token is associated with. Possible values are: `business`, `education`. Possible values are: `business`, `education`.|
|appleId|String|The apple Id associated with the given Apple Volume Purchase Program Token.|
|expirationDateTime|DateTimeOffset|The expiration date time of the Apple Volume Purchase Program Token.|
|lastSyncDateTime|DateTimeOffset|The last time when an application sync was done with the Apple volume purchase program service using the the Apple Volume Purchase Program Token.|
|token|String|The Apple Volume Purchase Program Token string downloaded from the Apple Volume Purchase Program.|
|lastModifiedDateTime|DateTimeOffset|Last modification date time associated with the Apple Volume Purchase Program Token.|
|state|String|Current state of the Apple Volume Purchase Program Token. Possible values are: `unknown`, `valid`, `expired`, `invalid`. Possible values are: `unknown`, `valid`, `expired`, `invalid`.|
|lastSyncStatus|String|Current sync status of the last application sync which was triggered using the Apple Volume Purchase Program Token. Possible values are: `none`, `inProgress`, `completed`, `failed`. Possible values are: `none`, `inProgress`, `completed`, `failed`.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.appleVolumePurchaseProgramToken"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.appleVolumePurchaseProgramToken",
  "id": "String (identifier)",
  "organizationName": "String",
  "volumePurchaseProgramTokenAccountType": "String",
  "appleId": "String",
  "expirationDateTime": "String (timestamp)",
  "lastSyncDateTime": "String (timestamp)",
  "token": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "state": "String",
  "lastSyncStatus": "String"
}
```




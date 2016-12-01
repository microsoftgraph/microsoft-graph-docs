# androidManagedAppRegistration resource type

Represents the synchronization details of an android app, with management capabilities, for a specific user.
The ManagedAppRegistration resource represents the details of an app, with management capability, used by a member of the organization.

Inherits from [managedAppRegistration](../resources/intune_mam_managedAppRegistration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List androidManagedAppRegistrations](../api/intune_mam_androidManagedAppRegistration_list.md)|[androidManagedAppRegistration](../resources/intune_mam_androidManagedAppRegistration.md) collection|List properties and relationships of the [androidManagedAppRegistration](../resources/intune_mam_androidManagedAppRegistration.md) objects.|
|[Get androidManagedAppRegistration](../api/intune_mam_androidManagedAppRegistration_get.md)|[androidManagedAppRegistration](../resources/intune_mam_androidManagedAppRegistration.md)|Read properties and relationships of the [androidManagedAppRegistration](../resources/intune_mam_androidManagedAppRegistration.md) object.|
|[Create androidManagedAppRegistration](../api/intune_mam_androidManagedAppRegistration_create.md)|[androidManagedAppRegistration](../resources/intune_mam_androidManagedAppRegistration.md)|Create a new [androidManagedAppRegistration](../resources/intune_mam_androidManagedAppRegistration.md) object.|
|[Delete androidManagedAppRegistration](../api/intune_mam_androidManagedAppRegistration_delete.md)|None|Deletes a [androidManagedAppRegistration](../resources/intune_mam_androidManagedAppRegistration.md).|
|[Update androidManagedAppRegistration](../api/intune_mam_androidManagedAppRegistration_update.md)|[androidManagedAppRegistration](../resources/intune_mam_androidManagedAppRegistration.md)|Update the properties of a [androidManagedAppRegistration](../resources/intune_mam_androidManagedAppRegistration.md) object.|
|[List managedAppPolicies](../api/intune_mam_androidManagedAppRegistration_list_managedAppPolicy.md)|[managedAppPolicy](../resources/intune_mam_managedAppPolicy.md) collection|Get the managedAppPolicies from the appliedPolicies navigation property.|
|[List managedAppPolicies](../api/intune_mam_androidManagedAppRegistration_list_managedAppPolicy.md)|[managedAppPolicy](../resources/intune_mam_managedAppPolicy.md) collection|Get the managedAppPolicies from the intendedPolicies navigation property.|
|[List managedAppOperations](../api/intune_mam_androidManagedAppRegistration_list_managedAppOperation.md)|[managedAppOperation](../resources/intune_mam_managedAppOperation.md) collection|Get the managedAppOperations from the operations navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|createdDateTime|DateTimeOffset|Date and time of creation Inherited from [managedAppRegistration](../resources/intune_mam_managedAppRegistration.md)|
|lastSyncDateTime|DateTimeOffset|Date and time of last the app synced with management service. Inherited from [managedAppRegistration](../resources/intune_mam_managedAppRegistration.md)|
|applicationVersion|String|App version Inherited from [managedAppRegistration](../resources/intune_mam_managedAppRegistration.md)|
|managementSdkVersion|String|App management SDK version Inherited from [managedAppRegistration](../resources/intune_mam_managedAppRegistration.md)|
|platformVersion|String|Operating System version Inherited from [managedAppRegistration](../resources/intune_mam_managedAppRegistration.md)|
|deviceType|String|Host device type Inherited from [managedAppRegistration](../resources/intune_mam_managedAppRegistration.md)|
|deviceTag|String|App management SDK generated tag, which helps relate apps hosted on the same device. Not guaranteed to relate apps in all conditions. Inherited from [managedAppRegistration](../resources/intune_mam_managedAppRegistration.md)|
|deviceName|String|Host device name Inherited from [managedAppRegistration](../resources/intune_mam_managedAppRegistration.md)|
|flaggedReasons|String collection|Zero or more reasons an app registration is flagged. E.g. app running on rooted device Inherited from [managedAppRegistration](../resources/intune_mam_managedAppRegistration.md)|
|userId|String|The user Id to who this app registration belongs. Inherited from [managedAppRegistration](../resources/intune_mam_managedAppRegistration.md)|
|appIdentifier|[mobileAppIdentifier](../resources/intune_mam_mobileAppIdentifier.md)|The app package Identifier Inherited from [managedAppRegistration](../resources/intune_mam_managedAppRegistration.md)|
|id|String|Key of the entity. Inherited from [managedAppRegistration](../resources/intune_mam_managedAppRegistration.md)|
|version|String|Version of the entity. Inherited from [managedAppRegistration](../resources/intune_mam_managedAppRegistration.md)|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|appliedPolicies|[managedAppPolicy](../resources/intune_mam_managedAppPolicy.md) collection|Zero or more policys already applied on the registered app when it last synchronized with managment service. Inherited from [managedAppRegistration](intune_mam_managedAppRegistration.md)|
|intendedPolicies|[managedAppPolicy](../resources/intune_mam_managedAppPolicy.md) collection|Zero or more policies admin intended for the app as of now. Inherited from [managedAppRegistration](intune_mam_managedAppRegistration.md)|
|operations|[managedAppOperation](../resources/intune_mam_managedAppOperation.md) collection|Zero or more long running operations triggered on the app registration. Inherited from [managedAppRegistration](intune_mam_managedAppRegistration.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidManagedAppRegistration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.androidManagedAppRegistration",
  "createdDateTime": "String (timestamp)",
  "lastSyncDateTime": "String (timestamp)",
  "applicationVersion": "String",
  "managementSdkVersion": "String",
  "platformVersion": "String",
  "deviceType": "String",
  "deviceTag": "String",
  "deviceName": "String",
  "flaggedReasons": [
    "String"
  ],
  "userId": "String",
  "appIdentifier": {
    "@odata.type": "microsoft.graph.mobileAppIdentifier"
  },
  "id": "String (identifier)",
  "version": "String"
}
```



# managedAppRegistration resource type

The ManagedAppEntity is the base entity type for all other entity types under app management workflow.
The ManagedAppRegistration resource represents the details of an app, with management capability, used by a member of the organization.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List managedAppRegistrations](../api/intune_mam_managedAppRegistration_list.md)|[managedAppRegistration](../resources/intune_mam_managedAppRegistration.md) collection|List properties and relationships of the [managedAppRegistration](../resources/intune_mam_managedAppRegistration.md) objects.|
|[Get managedAppRegistration](../api/intune_mam_managedAppRegistration_get.md)|[managedAppRegistration](../resources/intune_mam_managedAppRegistration.md)|Read properties and relationships of the [managedAppRegistration](../resources/intune_mam_managedAppRegistration.md) object.|
|[getUsersWithFlaggedAppRegistration function](../api/intune_mam_managedAppRegistration_getUsersWithFlaggedAppRegistration.md)|[directoryObject](../resources/intune_mam_directoryObject.md) collection|Not yet documented|
|[getUserIdsWithFlaggedAppRegistration function](../api/intune_mam_managedAppRegistration_getUserIdsWithFlaggedAppRegistration.md)|String collection|Not yet documented|
|[List managedAppPolicies](../api/intune_mam_managedAppRegistration_list_managedAppPolicy.md)|[managedAppPolicy](../resources/intune_mam_managedAppPolicy.md) collection|Get the managedAppPolicies from the appliedPolicies navigation property.|
|[List managedAppPolicies](../api/intune_mam_managedAppRegistration_list_managedAppPolicy.md)|[managedAppPolicy](../resources/intune_mam_managedAppPolicy.md) collection|Get the managedAppPolicies from the intendedPolicies navigation property.|
|[List managedAppOperations](../api/intune_mam_managedAppRegistration_list_managedAppOperation.md)|[managedAppOperation](../resources/intune_mam_managedAppOperation.md) collection|Get the managedAppOperations from the operations navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|createdDateTime|DateTimeOffset|Date and time of creation|
|lastSyncDateTime|DateTimeOffset|Date and time of last the app synced with management service.|
|applicationVersion|String|App version|
|managementSdkVersion|String|App management SDK version|
|platformVersion|String|Operating System version|
|deviceType|String|Host device type|
|deviceTag|String|App management SDK generated tag, which helps relate apps hosted on the same device. Not guaranteed to relate apps in all conditions.|
|deviceName|String|Host device name|
|flaggedReasons|String collection|Zero or more reasons an app registration is flagged. E.g. app running on rooted device|
|userId|String|The user Id to who this app registration belongs.|
|appIdentifier|[mobileAppIdentifier](../resources/intune_mam_mobileAppIdentifier.md)|The app package Identifier|
|id|String|Key of the entity.|
|version|String|Version of the entity.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|appliedPolicies|[managedAppPolicy](../resources/intune_mam_managedAppPolicy.md) collection|Zero or more policys already applied on the registered app when it last synchronized with managment service.|
|intendedPolicies|[managedAppPolicy](../resources/intune_mam_managedAppPolicy.md) collection|Zero or more policies admin intended for the app as of now.|
|operations|[managedAppOperation](../resources/intune_mam_managedAppOperation.md) collection|Zero or more long running operations triggered on the app registration.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedAppRegistration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.managedAppRegistration",
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




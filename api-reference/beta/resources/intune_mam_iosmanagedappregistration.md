# iosManagedAppRegistration resource type> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://www.microsoft.com/en-us/cloud-platform/microsoft-intune-pricing) by the customer.

Represents the synchronization details of an ios app, with management capabilities, for a specific user.
The ManagedAppRegistration resource represents the details of an app, with management capability, used by a member of the organization.

Inherits from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List iosManagedAppRegistrations](../api/intune_mam_iosmanagedappregistration_list.md)|[iosManagedAppRegistration](../resources/intune_mam_iosmanagedappregistration.md) collection|List properties and relationships of the [iosManagedAppRegistration](../resources/intune_mam_iosmanagedappregistration.md) objects.|
|[Get iosManagedAppRegistration](../api/intune_mam_iosmanagedappregistration_get.md)|[iosManagedAppRegistration](../resources/intune_mam_iosmanagedappregistration.md)|Read properties and relationships of the [iosManagedAppRegistration](../resources/intune_mam_iosmanagedappregistration.md) object.|
|[Create iosManagedAppRegistration](../api/intune_mam_iosmanagedappregistration_create.md)|[iosManagedAppRegistration](../resources/intune_mam_iosmanagedappregistration.md)|Create a new [iosManagedAppRegistration](../resources/intune_mam_iosmanagedappregistration.md) object.|
|[Delete iosManagedAppRegistration](../api/intune_mam_iosmanagedappregistration_delete.md)|None|Deletes a [iosManagedAppRegistration](../resources/intune_mam_iosmanagedappregistration.md).|
|[Update iosManagedAppRegistration](../api/intune_mam_iosmanagedappregistration_update.md)|[iosManagedAppRegistration](../resources/intune_mam_iosmanagedappregistration.md)|Update the properties of a [iosManagedAppRegistration](../resources/intune_mam_iosmanagedappregistration.md) object.|
|[List managedAppPolicies](../api/intune_mam_iosmanagedappregistration_list_managedapppolicy.md)|[managedAppPolicy](../resources/intune_mam_managedapppolicy.md) collection|Get the managedAppPolicies from the appliedPolicies navigation property.|
|[List managedAppPolicies](../api/intune_mam_iosmanagedappregistration_list_managedapppolicy.md)|[managedAppPolicy](../resources/intune_mam_managedapppolicy.md) collection|Get the managedAppPolicies from the intendedPolicies navigation property.|
|[List managedAppOperations](../api/intune_mam_iosmanagedappregistration_list_managedappoperation.md)|[managedAppOperation](../resources/intune_mam_managedappoperation.md) collection|Get the managedAppOperations from the operations navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|createdDateTime|DateTimeOffset|Date and time of creation Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|lastSyncDateTime|DateTimeOffset|Date and time of last the app synced with management service. Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|applicationVersion|String|App version Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|managementSdkVersion|String|App management SDK version Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|platformVersion|String|Operating System version Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|deviceType|String|Host device type Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|deviceTag|String|App management SDK generated tag, which helps relate apps hosted on the same device. Not guaranteed to relate apps in all conditions. Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|deviceName|String|Host device name Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|flaggedReasons|String collection|Zero or more reasons an app registration is flagged. E.g. app running on rooted device Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|userId|String|The user Id to who this app registration belongs. Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|appIdentifier|[mobileAppIdentifier](../resources/intune_mam_mobileappidentifier.md)|The app package Identifier Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|id|String|Key of the entity. Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|version|String|Version of the entity. Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|appliedPolicies|[managedAppPolicy](../resources/intune_mam_managedapppolicy.md) collection|Zero or more policys already applied on the registered app when it last synchronized with managment service. Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|intendedPolicies|[managedAppPolicy](../resources/intune_mam_managedapppolicy.md) collection|Zero or more policies admin intended for the app as of now. Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|operations|[managedAppOperation](../resources/intune_mam_managedappoperation.md) collection|Zero or more long running operations triggered on the app registration. Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosManagedAppRegistration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.iosManagedAppRegistration",
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




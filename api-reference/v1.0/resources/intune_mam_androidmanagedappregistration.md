# androidManagedAppRegistration resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Represents the synchronization details of an android app, with management capabilities, for a specific user.
The ManagedAppRegistration resource represents the details of an app, with management capability, used by a member of the organization.

Inherits from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List androidManagedAppRegistrations](../api/intune_mam_androidmanagedappregistration_list.md)|[androidManagedAppRegistration](../resources/intune_mam_androidmanagedappregistration.md) collection|List properties and relationships of the [androidManagedAppRegistration](../resources/intune_mam_androidmanagedappregistration.md) objects.|
|[Get androidManagedAppRegistration](../api/intune_mam_androidmanagedappregistration_get.md)|[androidManagedAppRegistration](../resources/intune_mam_androidmanagedappregistration.md)|Read properties and relationships of the [androidManagedAppRegistration](../resources/intune_mam_androidmanagedappregistration.md) object.|
|[Create androidManagedAppRegistration](../api/intune_mam_androidmanagedappregistration_create.md)|[androidManagedAppRegistration](../resources/intune_mam_androidmanagedappregistration.md)|Create a new [androidManagedAppRegistration](../resources/intune_mam_androidmanagedappregistration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Date and time of creation Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|lastSyncDateTime|DateTimeOffset|Date and time of last the app synced with management service. Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|applicationVersion|String|App version Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|managementSdkVersion|String|App management SDK version Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|platformVersion|String|Operating System version Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|deviceType|String|Host device type Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|deviceTag|String|App management SDK generated tag, which helps relate apps hosted on the same device. Not guaranteed to relate apps in all conditions. Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|deviceName|String|Host device name Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|flaggedReasons|[managedAppFlaggedReason](../resources/intune_mam_managedappflaggedreason.md) collection|Zero or more reasons an app registration is flagged. E.g. app running on rooted device Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|userId|String|The user Id to who this app registration belongs. Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|appIdentifier|[mobileAppIdentifier](../resources/intune_mam_mobileappidentifier.md)|The app package Identifier Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|id|String|Key of the entity. Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|version|String|Version of the entity. Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appliedPolicies|[managedAppPolicy](../resources/intune_mam_managedapppolicy.md) collection|Zero or more policys already applied on the registered app when it last synchronized with managment service. Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|intendedPolicies|[managedAppPolicy](../resources/intune_mam_managedapppolicy.md) collection|Zero or more policies admin intended for the app as of now. Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|
|operations|[managedAppOperation](../resources/intune_mam_managedappoperation.md) collection|Zero or more long running operations triggered on the app registration. Inherited from [managedAppRegistration](../resources/intune_mam_managedappregistration.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidManagedAppRegistration"
}
-->
``` json
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
    "@odata.type": "microsoft.graph.androidMobileAppIdentifier",
    "packageId": "String"
  },
  "id": "String (identifier)",
  "version": "String"
}
```




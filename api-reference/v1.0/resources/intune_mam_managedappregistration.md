# managedAppRegistration resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The ManagedAppEntity is the base entity type for all other entity types under app management workflow.
The ManagedAppRegistration resource represents the details of an app, with management capability, used by a member of the organization.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedAppRegistrations](../api/intune_mam_managedappregistration_list.md)|[managedAppRegistration](../resources/intune_mam_managedappregistration.md) collection|List properties and relationships of the [managedAppRegistration](../resources/intune_mam_managedappregistration.md) objects.|
|[Get managedAppRegistration](../api/intune_mam_managedappregistration_get.md)|[managedAppRegistration](../resources/intune_mam_managedappregistration.md)|Read properties and relationships of the [managedAppRegistration](../resources/intune_mam_managedappregistration.md) object.|
|[getUserIdsWithFlaggedAppRegistration function](../api/intune_mam_managedappregistration_getuseridswithflaggedappregistration.md)|String collection|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Date and time of creation|
|lastSyncDateTime|DateTimeOffset|Date and time of last the app synced with management service.|
|applicationVersion|String|App version|
|managementSdkVersion|String|App management SDK version|
|platformVersion|String|Operating System version|
|deviceType|String|Host device type|
|deviceTag|String|App management SDK generated tag, which helps relate apps hosted on the same device. Not guaranteed to relate apps in all conditions.|
|deviceName|String|Host device name|
|flaggedReasons|[managedAppFlaggedReason](../resources/intune_mam_managedappflaggedreason.md) collection|Zero or more reasons an app registration is flagged. E.g. app running on rooted device|
|userId|String|The user Id to who this app registration belongs.|
|appIdentifier|[mobileAppIdentifier](../resources/intune_mam_mobileappidentifier.md)|The app package Identifier|
|id|String|Key of the entity.|
|version|String|Version of the entity.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appliedPolicies|[managedAppPolicy](../resources/intune_mam_managedapppolicy.md) collection|Zero or more policys already applied on the registered app when it last synchronized with managment service.|
|intendedPolicies|[managedAppPolicy](../resources/intune_mam_managedapppolicy.md) collection|Zero or more policies admin intended for the app as of now.|
|operations|[managedAppOperation](../resources/intune_mam_managedappoperation.md) collection|Zero or more long running operations triggered on the app registration.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedAppRegistration"
}
-->
``` json
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




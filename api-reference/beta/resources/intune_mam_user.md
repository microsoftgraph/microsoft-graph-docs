# user resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Represents an Azure Active Directory user object.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List users](../api/intune_mam_user_list.md)|[user](../resources/intune_mam_user.md) collection|List properties and relationships of the [user](../resources/intune_mam_user.md) objects.|
|[Get user](../api/intune_mam_user_get.md)|[user](../resources/intune_mam_user.md)|Read properties and relationships of the [user](../resources/intune_mam_user.md) object.|
|[Create user](../api/intune_mam_user_create.md)|[user](../resources/intune_mam_user.md)|Create a new [user](../resources/intune_mam_user.md) object.|
|[Delete user](../api/intune_mam_user_delete.md)|None|Deletes a [user](../resources/intune_mam_user.md).|
|[Update user](../api/intune_mam_user_update.md)|[user](../resources/intune_mam_user.md)|Update the properties of a [user](../resources/intune_mam_user.md) object.|
|[getManagedAppDiagnosticStatuses function](../api/intune_mam_user_getmanagedappdiagnosticstatuses.md)|[managedAppDiagnosticStatus](../resources/intune_mam_managedappdiagnosticstatus.md) collection|Gets diagnostics validation status for a given user.|
|[getManagedAppPolicies function](../api/intune_mam_user_getmanagedapppolicies.md)|[managedAppPolicy](../resources/intune_mam_managedapppolicy.md) collection|Gets app restrictions for a given user.|
|[wipeManagedAppRegistrationByDeviceTag action](../api/intune_mam_user_wipemanagedappregistrationbydevicetag.md)|None|Issues a wipe operation on an app registration with specified device tag.|
|[List managedAppRegistrations](../api/intune_mam_managedappregistration_list.md)|[managedAppRegistration](../resources/intune_mam_managedappregistration.md) collection|List properties and relationships of the [managedAppRegistration](../resources/intune_mam_managedappregistration.md) objects.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|The user identifier.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|managedAppRegistrations|[managedAppRegistration](../resources/intune_mam_managedappregistration.md) collection|Zero or more managed app registrations that belong to the user.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.user"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.user",
  "id": "String (identifier)"
}
```




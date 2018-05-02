# user resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Represents an Azure Active Directory user object.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List users](../api/intune_shared_user_list.md) objects.|
|[Get user](../api/intune_shared_user_get.md) object.|
|[Create user](../api/intune_shared_user_create.md) object.|
|[Delete user](../api/intune_shared_user_delete.md).|
|[Update user](../api/intune_shared_user_update.md) object.|
|[getManagedAppDiagnosticStatuses function](../api/intune_shared_user_getmanagedappdiagnosticstatuses.md)|[managedAppDiagnosticStatus](../resources/intune_mam_managedappdiagnosticstatus.md) collection|Gets diagnostics validation status for a given user.|
|[getManagedAppPolicies function](../api/intune_shared_user_getmanagedapppolicies.md)|[managedAppPolicy](../resources/intune_mam_managedapppolicy.md) collection|Gets app restrictions for a given user.|
|[removeAllDevicesFromManagement action](../api/intune_shared_user_removealldevicesfrommanagement.md)|None|Retire all devices from management for this user|
|[wipeManagedAppRegistrationsByDeviceTag action](../api/intune_shared_user_wipemanagedappregistrationsbydevicetag.md)|None|Issues a wipe operation on an app registration with specified device tag.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier of the user.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deviceManagementTroubleshootingEvents|[deviceManagementTroubleshootingEvent](../resources/intune_troubleshooting_devicemanagementtroubleshootingevent.md) collection|The list of troubleshooting events for this user.|
|managedAppRegistrations|[managedAppRegistration](../resources/intune_mam_managedappregistration.md) collection|Zero or more managed app registrations that belong to the user.|
|managedDevices|[managedDevice](../resources/intune_devices_manageddevice.md) collection|The managed devices associated with the user.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.user"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.user",
  "id": "String (identifier)"
}
```




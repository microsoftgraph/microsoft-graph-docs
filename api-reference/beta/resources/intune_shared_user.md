# user resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Represents an Azure Active Directory user object.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List users](../api/intune_shared_user_list.md) collection|List properties and relationships of the [user](../resources/intune_shared_user.md) objects.|
|[Get user](../api/intune_shared_user_get.md)|Read properties and relationships of the [user](../resources/intune_shared_user.md) object.|
|[Create user](../api/intune_shared_user_create.md)|Create a new [user](../resources/intune_shared_user.md) object.|
|[Delete user](../api/intune_shared_user_delete.md).|
|[Update user](../api/intune_shared_user_update.md)|Update the properties of a [user](../resources/intune_shared_user.md) object.|
|[exportDeviceAndAppManagementData function](../api/intune_shared_user_exportdeviceandappmanagementdata.md)|[deviceAndAppManagementData](../resources/intune_onboarding_deviceandappmanagementdata.md)|Not yet documented|
|[getEffectiveDeviceEnrollmentConfigurations function](../api/intune_shared_user_geteffectivedeviceenrollmentconfigurations.md)|[deviceEnrollmentConfiguration](../resources/intune_onboarding_deviceenrollmentconfiguration.md) collection|Not yet documented|
|[getLoggedOnManagedDevices function](../api/intune_shared_user_getloggedonmanageddevices.md)|[managedDevice](../resources/intune_devices_manageddevice.md) collection|Not yet documented|
|[getManagedAppDiagnosticStatuses function](../api/intune_shared_user_getmanagedappdiagnosticstatuses.md)|[managedAppDiagnosticStatus](../resources/intune_mam_managedappdiagnosticstatus.md) collection|Gets diagnostics validation status for a given user.|
|[getManagedAppPolicies function](../api/intune_shared_user_getmanagedapppolicies.md)|[managedAppPolicy](../resources/intune_mam_managedapppolicy.md) collection|Gets app restrictions for a given user.|
|[removeAllDevicesFromManagement action](../api/intune_shared_user_removealldevicesfrommanagement.md)|None|Retire all devices from management for this user|
|[wipeManagedAppRegistrationByDeviceTag action](../api/intune_shared_user_wipemanagedappregistrationbydevicetag.md)|None|Issues a wipe operation on an app registration with specified device tag.|
|[wipeManagedAppRegistrationsByDeviceTag action](../api/intune_shared_user_wipemanagedappregistrationsbydevicetag.md)|None|Issues a wipe operation on an app registration with specified device tag.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier of the user.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deviceEnrollmentConfigurations|[deviceEnrollmentConfiguration](../resources/intune_onboarding_deviceenrollmentconfiguration.md) collection|Get enrollment configurations targeted to the user|
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




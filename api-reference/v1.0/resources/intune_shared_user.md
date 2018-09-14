﻿# user resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Represents an Azure Active Directory user object.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List users](../api/intune_shared_user_list.md) objects.|[user](../resources/intune_shared_user.md) collection|List properties and relationships of the [user](../resources/intune_shared_user.md) objects.|
|[Get user](../api/intune_shared_user_get.md) object.|[user](../resources/intune_shared_user.md) collection|Read properties and relationships of the [user](../resources/intune_shared_user.md) object.|
|[Create user](../api/intune_shared_user_create.md) object.|[user](../resources/intune_shared_user.md) collection|Create a new [user](../resources/intune_shared_user.md) object.|
|[Delete user](../api/intune_shared_user_delete.md).|None|Deletes a [user](../resources/intune_shared_user.md).|
|[Update user](../api/intune_shared_user_update.md) object.|[user](../resources/intune_shared_user.md)|Update the properties of a [user](../resources/intune_shared_user.md) object.|
|**Device management**|
|[removeAllDevicesFromManagement action](../api/intune_shared_user_removealldevicesfrommanagement.md)|None|Retire all devices from management for this user|
|**Mobile app management (MAM)**|
|[getManagedAppDiagnosticStatuses function](../api/intune_shared_user_getmanagedappdiagnosticstatuses.md)|[managedAppDiagnosticStatus](../resources/intune_mam_managedappdiagnosticstatus.md) collection|Gets diagnostics validation status for a given user.|
|[getManagedAppPolicies function](../api/intune_shared_user_getmanagedapppolicies.md)|[managedAppPolicy](../resources/intune_mam_managedapppolicy.md) collection|Gets app restrictions for a given user.|
|[wipeManagedAppRegistrationsByDeviceTag action](../api/intune_shared_user_wipemanagedappregistrationsbydevicetag.md)|None|Issues a wipe operation on an app registration with specified device tag.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier of the user.|
|**On-boarding**|
|deviceEnrollmentLimit|Int32|The limit on the maximum number of devices that the user is permitted to enroll. Allowed values are 5 or 1000.|


## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|**Device management**|
|managedDevices|[managedDevice](../resources/intune_devices_manageddevice.md) collection|The managed devices associated with the user.|
|**Mobile app management (MAM)**|
|managedAppRegistrations|[managedAppRegistration](../resources/intune_mam_managedappregistration.md) collection|Zero or more managed app registrations that belong to the user.|
|**Troubleshooting**|
|deviceManagementTroubleshootingEvents|[deviceManagementTroubleshootingEvent](../resources/intune_troubleshooting_devicemanagementtroubleshootingevent.md) collection|The list of troubleshooting events for this user.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.directoryObject",
  "openType": true,
  "@odata.type": "microsoft.graph.user"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.user",
  "id": "String (identifier)",
  "deviceEnrollmentLimit": 5
}
```

<!-- {
  "type": "#page.annotation",
  "suppressions": [
    "Warning: Resource microsoft.graph.user is defined in multiple files: /api-reference/v1.0/resources/intune_shared_user.md, /api-reference/v1.0/resources/user.md",
  ]
}-->

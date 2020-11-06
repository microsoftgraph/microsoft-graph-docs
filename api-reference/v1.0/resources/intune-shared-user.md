---
title: "user resource type"
description: "Represents an Azure Active Directory user object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# user resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents an Azure Active Directory user object.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List users](../api/intune-shared-user-list.md) objects.|[user](../resources/intune-shared-user.md) collection|List properties and relationships of the [user](../resources/intune-shared-user.md) objects.|
|[Get user](../api/intune-shared-user-get.md) object.|[user](../resources/intune-shared-user.md) collection|Read properties and relationships of the [user](../resources/intune-shared-user.md) object.|
|[Create user](../api/intune-shared-user-create.md) object.|[user](../resources/intune-shared-user.md) collection|Create a new [user](../resources/intune-shared-user.md) object.|
|[Delete user](../api/intune-shared-user-delete.md).|None|Deletes a [user](../resources/intune-shared-user.md).|
|[Update user](../api/intune-shared-user-update.md) object.|[user](../resources/intune-shared-user.md)|Update the properties of a [user](../resources/intune-shared-user.md) object.|
|**Device management**|
|[removeAllDevicesFromManagement action](../api/intune-shared-user-removealldevicesfrommanagement.md)|None|Retire all devices from management for this user|
|**Mobile app management (MAM)**|
|[getManagedAppDiagnosticStatuses function](../api/intune-shared-user-getmanagedappdiagnosticstatuses.md)|[managedAppDiagnosticStatus](../resources/intune-mam-managedappdiagnosticstatus.md) collection|Gets diagnostics validation status for a given user.|
|[getManagedAppPolicies function](../api/intune-shared-user-getmanagedapppolicies.md)|[managedAppPolicy](../resources/intune-mam-managedapppolicy.md) collection|Gets app restrictions for a given user.|
|[wipeManagedAppRegistrationsByDeviceTag action](../api/intune-shared-user-wipemanagedappregistrationsbydevicetag.md)|None|Issues a wipe operation on an app registration with specified device tag.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier of the user.|
|**Onboarding**|
|deviceEnrollmentLimit|Int32|The limit on the maximum number of devices that the user is permitted to enroll. Allowed values are 5 or 1000.|


## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|**Device management**|
|managedDevices|[managedDevice](../resources/intune-devices-manageddevice.md) collection|The managed devices associated with the user.|
|**Mobile app management (MAM)**|
|managedAppRegistrations|[managedAppRegistration](../resources/intune-mam-managedappregistration.md) collection|Zero or more managed app registrations that belong to the user.|
|**Troubleshooting**|
|deviceManagementTroubleshootingEvents|[deviceManagementTroubleshootingEvent](../resources/intune-troubleshooting-devicemanagementtroubleshootingevent.md) collection|The list of troubleshooting events for this user.|

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







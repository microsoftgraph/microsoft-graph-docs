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

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents an Azure Active Directory user object.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List users](../api/intune-shared-user-list.md) objects.|[user](../resources/intune-shared-user.md) collection|List properties and relationships of the [user](../resources/intune-shared-user.md) objects.|
|[Get user](../api/intune-shared-user-get.md) object.|[user](../resources/intune-shared-user.md)|Read properties and relationships of the [user](../resources/intune-shared-user.md) object.|
|[Create user](../api/intune-shared-user-create.md) object.|[user](../resources/intune-shared-user.md)|Create a new [user](../resources/intune-shared-user.md) object.|
|[Delete user](../api/intune-shared-user-delete.md).|None|Deletes a [user](../resources/intune-shared-user.md).|
|[Update user](../api/intune-shared-user-update.md) object.|[user](../resources/intune-shared-user.md)|Update the properties of a [user](../resources/intune-shared-user.md) object.|
|**Device management**|
|[getLoggedOnManagedDevices function](../api/intune-shared-user-getloggedonmanageddevices.md)|[managedDevice](../resources/intune-devices-manageddevice.md) collection|Not yet documented|
|[removeAllDevicesFromManagement action](../api/intune-shared-user-removealldevicesfrommanagement.md)|None|Retire all devices from management for this user|
|**Mobile application management (MAM)**|
|[getManagedAppDiagnosticStatuses function](../api/intune-shared-user-getmanagedappdiagnosticstatuses.md)|[managedAppDiagnosticStatus](../resources/intune-mam-managedappdiagnosticstatus.md) collection|Gets diagnostics validation status for a given user.|
|[getManagedAppPolicies function](../api/intune-shared-user-getmanagedapppolicies.md)|[managedAppPolicy](../resources/intune-mam-managedapppolicy.md) collection|Gets app restrictions for a given user.|
|[wipeManagedAppRegistrationByDeviceTag action](../api/intune-shared-user-wipemanagedappregistrationbydevicetag.md)|None|Issues a wipe operation on an app registration with specified device tag.|
|[wipeManagedAppRegistrationsByDeviceTag action](../api/intune-shared-user-wipemanagedappregistrationsbydevicetag.md)|None|Issues a wipe operation on an app registration with specified device tag.|
|**Onboarding**|
|[exportDeviceAndAppManagementData function](../api/intune-shared-user-exportdeviceandappmanagementdata.md)|[deviceAndAppManagementData](../resources/intune-onboarding-deviceandappmanagementdata.md)|Not yet documented|
|[getEffectiveDeviceEnrollmentConfigurations function](../api/intune-shared-user-geteffectivedeviceenrollmentconfigurations.md)|[deviceEnrollmentConfiguration](../resources/intune-shared-deviceenrollmentconfiguration.md) collection|Not yet documented|
|**Troubleshooting**|
|[getManagedDevicesWithAppFailures function](../api/intune-shared-user-getmanageddeviceswithappfailures.md)|String collection|Retrieves the list of devices with failed apps.|


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
|**Mobile application management (MAM)**|
|managedAppRegistrations|[managedAppRegistration](../resources/intune-mam-managedappregistration.md) collection|Zero or more managed app registrations that belong to the user.|
|**Onboarding**|
|deviceEnrollmentConfigurations|[deviceEnrollmentConfiguration](../resources/intune-shared-deviceenrollmentconfiguration.md) collection|Get enrollment configurations targeted to the user|
|**Troubleshooting**|
|deviceManagementTroubleshootingEvents|[deviceManagementTroubleshootingEvent](../resources/intune-troubleshooting-devicemanagementtroubleshootingevent.md) collection|The list of troubleshooting events for this user.|
|mobileAppIntentAndStates|[mobileAppIntentAndState](../resources/intune-troubleshooting-mobileappintentandstate.md) collection|The list of troubleshooting events for this user.|
|mobileAppTroubleshootingEvents|[mobileAppTroubleshootingEvent](../resources/intune-shared-mobileapptroubleshootingevent.md) collection|The list of mobile app troubleshooting events for this user.|

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





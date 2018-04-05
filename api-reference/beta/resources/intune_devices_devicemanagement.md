# deviceManagement resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device management functionality.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune_devices_devicemanagement_get.md)|[deviceManagement](../resources/intune_devices_devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_devices_devicemanagement.md) object.|
|[Update deviceManagement](../api/intune_devices_devicemanagement_update.md)|[deviceManagement](../resources/intune_devices_devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune_devices_devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the device|
|subscriptionState|String|Tenant mobile device management subscription state. Possible values are: `pending`, `active`, `warning`, `disabled`, `deleted`, `blocked`, `lockedOut`.|
|subscriptions|String|Tenant's Subscription. Possible values are: `none`, `intune`, `office365`, `intunePremium`, `intune_EDU`, `intune_SMB`.|
|adminConsent|[adminConsent](../resources/intune_devices_adminconsent.md)|Admin consent information.|
|deviceProtectionOverview|[deviceProtectionOverview](../resources/intune_devices_deviceprotectionoverview.md)|Device protection overview.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|remoteActionAudits|[remoteActionAudit](../resources/intune_devices_remoteactionaudit.md) collection|The list of device remote action audits with the tenant.|
|applePushNotificationCertificate|[applePushNotificationCertificate](../resources/intune_devices_applepushnotificationcertificate.md)|Apple push notification certificate.|
|deviceManagementScripts|[deviceManagementScript](../resources/intune_devices_devicemanagementscript.md) collection|The list of device management scripts associated with the tenant.|
|managedDeviceOverview|[managedDeviceOverview](../resources/intune_devices_manageddeviceoverview.md)|Device overview|
|detectedApps|[detectedApp](../resources/intune_devices_detectedapp.md) collection|The list of detected apps associated with a device.|
|managedDevices|[managedDevice](../resources/intune_devices_manageddevice.md) collection|The list of managed devices.|
|windowsMalwareInformation|[windowsMalwareInformation](../resources/intune_devices_windowsmalwareinformation.md) collection|The list of affected malware in the tenant.|
|dataSharingConsents|[dataSharingConsent](../resources/intune_devices_datasharingconsent.md) collection|Data sharing consents.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)",
  "subscriptionState": "String",
  "subscriptions": "String",
  "adminConsent": {
    "@odata.type": "microsoft.graph.adminConsent",
    "shareAPNSData": "String"
  },
  "deviceProtectionOverview": {
    "@odata.type": "microsoft.graph.deviceProtectionOverview",
    "totalReportedDeviceCount": 1024,
    "inactiveThreatAgentDeviceCount": 1024,
    "unknownStateThreatAgentDeviceCount": 1024,
    "pendingSignatureUpdateDeviceCount": 1024,
    "cleanDeviceCount": 1024,
    "pendingFullScanDeviceCount": 1024,
    "pendingRestartDeviceCount": 1024,
    "pendingManualStepsDeviceCount": 1024,
    "pendingOfflineScanDeviceCount": 1024,
    "criticalFailuresDeviceCount": 1024
  }
}
```




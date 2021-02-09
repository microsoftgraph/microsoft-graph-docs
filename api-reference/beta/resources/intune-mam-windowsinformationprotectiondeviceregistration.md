---
title: "windowsInformationProtectionDeviceRegistration resource type"
description: "Represents device registration records for Bring-Your-Own-Device(BYOD) Windows devices."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# windowsInformationProtectionDeviceRegistration resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents device registration records for Bring-Your-Own-Device(BYOD) Windows devices.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsInformationProtectionDeviceRegistrations](../api/intune-mam-windowsinformationprotectiondeviceregistration-list.md)|[windowsInformationProtectionDeviceRegistration](../resources/intune-mam-windowsinformationprotectiondeviceregistration.md) collection|List properties and relationships of the [windowsInformationProtectionDeviceRegistration](../resources/intune-mam-windowsinformationprotectiondeviceregistration.md) objects.|
|[Get windowsInformationProtectionDeviceRegistration](../api/intune-mam-windowsinformationprotectiondeviceregistration-get.md)|[windowsInformationProtectionDeviceRegistration](../resources/intune-mam-windowsinformationprotectiondeviceregistration.md)|Read properties and relationships of the [windowsInformationProtectionDeviceRegistration](../resources/intune-mam-windowsinformationprotectiondeviceregistration.md) object.|
|[Create windowsInformationProtectionDeviceRegistration](../api/intune-mam-windowsinformationprotectiondeviceregistration-create.md)|[windowsInformationProtectionDeviceRegistration](../resources/intune-mam-windowsinformationprotectiondeviceregistration.md)|Create a new [windowsInformationProtectionDeviceRegistration](../resources/intune-mam-windowsinformationprotectiondeviceregistration.md) object.|
|[Delete windowsInformationProtectionDeviceRegistration](../api/intune-mam-windowsinformationprotectiondeviceregistration-delete.md)|None|Deletes a [windowsInformationProtectionDeviceRegistration](../resources/intune-mam-windowsinformationprotectiondeviceregistration.md).|
|[Update windowsInformationProtectionDeviceRegistration](../api/intune-mam-windowsinformationprotectiondeviceregistration-update.md)|[windowsInformationProtectionDeviceRegistration](../resources/intune-mam-windowsinformationprotectiondeviceregistration.md)|Update the properties of a [windowsInformationProtectionDeviceRegistration](../resources/intune-mam-windowsinformationprotectiondeviceregistration.md) object.|
|[wipe action](../api/intune-mam-windowsinformationprotectiondeviceregistration-wipe.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|userId|String|UserId associated with this device registration record.|
|deviceRegistrationId|String|Device identifier for this device registration record.|
|deviceName|String|Device name.|
|deviceType|String|Device type, for example, Windows laptop VS Windows phone.|
|deviceMacAddress|String|Device Mac address.|
|lastCheckInDateTime|DateTimeOffset|Last checkin time of the device.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsInformationProtectionDeviceRegistration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsInformationProtectionDeviceRegistration",
  "id": "String (identifier)",
  "userId": "String",
  "deviceRegistrationId": "String",
  "deviceName": "String",
  "deviceType": "String",
  "deviceMacAddress": "String",
  "lastCheckInDateTime": "String (timestamp)"
}
```





---
title: "embeddedSIMDeviceState resource type"
description: "Describes the embedded SIM activation code deployment state in relation to a device."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# embeddedSIMDeviceState resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Describes the embedded SIM activation code deployment state in relation to a device.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List embeddedSIMDeviceStates](../api/intune-esim-embeddedsimdevicestate-list.md)|[embeddedSIMDeviceState](../resources/intune-esim-embeddedsimdevicestate.md) collection|List properties and relationships of the [embeddedSIMDeviceState](../resources/intune-esim-embeddedsimdevicestate.md) objects.|
|[Get embeddedSIMDeviceState](../api/intune-esim-embeddedsimdevicestate-get.md)|[embeddedSIMDeviceState](../resources/intune-esim-embeddedsimdevicestate.md)|Read properties and relationships of the [embeddedSIMDeviceState](../resources/intune-esim-embeddedsimdevicestate.md) object.|
|[Create embeddedSIMDeviceState](../api/intune-esim-embeddedsimdevicestate-create.md)|[embeddedSIMDeviceState](../resources/intune-esim-embeddedsimdevicestate.md)|Create a new [embeddedSIMDeviceState](../resources/intune-esim-embeddedsimdevicestate.md) object.|
|[Delete embeddedSIMDeviceState](../api/intune-esim-embeddedsimdevicestate-delete.md)|None|Deletes a [embeddedSIMDeviceState](../resources/intune-esim-embeddedsimdevicestate.md).|
|[Update embeddedSIMDeviceState](../api/intune-esim-embeddedsimdevicestate-update.md)|[embeddedSIMDeviceState](../resources/intune-esim-embeddedsimdevicestate.md)|Update the properties of a [embeddedSIMDeviceState](../resources/intune-esim-embeddedsimdevicestate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the embedded SIM device status. System generated value assigned when created.|
|createdDateTime|DateTimeOffset|The time the embedded SIM device status was created. Generated service side.|
|modifiedDateTime|DateTimeOffset|The time the embedded SIM device status was last modified. Updated service side.|
|lastSyncDateTime|DateTimeOffset|The time the embedded SIM device last checked in. Updated service side.|
|universalIntegratedCircuitCardIdentifier|String|The Universal Integrated Circuit Card Identifier (UICCID) identifying the hardware onto which a profile is to be deployed.|
|deviceName|String|Device name to which the subscription was provisioned e.g. DESKTOP-JOE|
|userName|String|Username which the subscription was provisioned to e.g. joe@contoso.com|
|state|[embeddedSIMDeviceStateValue](../resources/intune-esim-embeddedsimdevicestatevalue.md)|The state of the profile operation applied to the device. Possible values are: `notEvaluated`, `failed`, `installing`, `installed`, `deleting`, `error`, `deleted`, `removedByUser`.|
|stateDetails|String|String description of the provisioning state.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.embeddedSIMDeviceState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.embeddedSIMDeviceState",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "lastSyncDateTime": "String (timestamp)",
  "universalIntegratedCircuitCardIdentifier": "String",
  "deviceName": "String",
  "userName": "String",
  "state": "String",
  "stateDetails": "String"
}
```





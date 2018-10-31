﻿# embeddedSIMDeviceState resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Describes the embedded SIM activation code deployment state in relation to a device.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List embeddedSIMDeviceStates](../api/intune_esim_embeddedsimdevicestate_list.md)|[embeddedSIMDeviceState](../resources/intune_esim_embeddedsimdevicestate.md) collection|List properties and relationships of the [embeddedSIMDeviceState](../resources/intune_esim_embeddedsimdevicestate.md) objects.|
|[Get embeddedSIMDeviceState](../api/intune_esim_embeddedsimdevicestate_get.md)|[embeddedSIMDeviceState](../resources/intune_esim_embeddedsimdevicestate.md)|Read properties and relationships of the [embeddedSIMDeviceState](../resources/intune_esim_embeddedsimdevicestate.md) object.|
|[Create embeddedSIMDeviceState](../api/intune_esim_embeddedsimdevicestate_create.md)|[embeddedSIMDeviceState](../resources/intune_esim_embeddedsimdevicestate.md)|Create a new [embeddedSIMDeviceState](../resources/intune_esim_embeddedsimdevicestate.md) object.|
|[Delete embeddedSIMDeviceState](../api/intune_esim_embeddedsimdevicestate_delete.md)|None|Deletes a [embeddedSIMDeviceState](../resources/intune_esim_embeddedsimdevicestate.md).|
|[Update embeddedSIMDeviceState](../api/intune_esim_embeddedsimdevicestate_update.md)|[embeddedSIMDeviceState](../resources/intune_esim_embeddedsimdevicestate.md)|Update the properties of a [embeddedSIMDeviceState](../resources/intune_esim_embeddedsimdevicestate.md) object.|

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
|state|[embeddedSIMDeviceStateValue](../resources/intune_esim_embeddedsimdevicestatevalue.md)|The state of the profile operation applied to the device. Possible values are: `notEvaluated`, `failed`, `installing`, `installed`, `deleting`, `error`, `deleted`, `removedByUser`.|
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






﻿# embeddedSIMActivationCodePool resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

A pool represents a group of embedded SIM activation codes.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List embeddedSIMActivationCodePools](../api/intune_esim_embeddedsimactivationcodepool_list.md)|[embeddedSIMActivationCodePool](../resources/intune_esim_embeddedsimactivationcodepool.md) collection|List properties and relationships of the [embeddedSIMActivationCodePool](../resources/intune_esim_embeddedsimactivationcodepool.md) objects.|
|[Get embeddedSIMActivationCodePool](../api/intune_esim_embeddedsimactivationcodepool_get.md)|[embeddedSIMActivationCodePool](../resources/intune_esim_embeddedsimactivationcodepool.md)|Read properties and relationships of the [embeddedSIMActivationCodePool](../resources/intune_esim_embeddedsimactivationcodepool.md) object.|
|[Create embeddedSIMActivationCodePool](../api/intune_esim_embeddedsimactivationcodepool_create.md)|[embeddedSIMActivationCodePool](../resources/intune_esim_embeddedsimactivationcodepool.md)|Create a new [embeddedSIMActivationCodePool](../resources/intune_esim_embeddedsimactivationcodepool.md) object.|
|[Delete embeddedSIMActivationCodePool](../api/intune_esim_embeddedsimactivationcodepool_delete.md)|None|Deletes a [embeddedSIMActivationCodePool](../resources/intune_esim_embeddedsimactivationcodepool.md).|
|[Update embeddedSIMActivationCodePool](../api/intune_esim_embeddedsimactivationcodepool_update.md)|[embeddedSIMActivationCodePool](../resources/intune_esim_embeddedsimactivationcodepool.md)|Update the properties of a [embeddedSIMActivationCodePool](../resources/intune_esim_embeddedsimactivationcodepool.md) object.|
|[assign action](../api/intune_esim_embeddedsimactivationcodepool_assign.md)|[embeddedSIMActivationCodePoolAssignment](../resources/intune_esim_embeddedsimactivationcodepoolassignment.md) collection|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the embedded SIM activation code pool. System generated value assigned when created.|
|displayName|String|The admin defined name of the embedded SIM activation code pool.|
|createdDateTime|DateTimeOffset|The time the embedded SIM activation code pool was created. Generated service side.|
|modifiedDateTime|DateTimeOffset|The time the embedded SIM activation code pool was last modified. Updated service side.|
|activationCodes|[embeddedSIMActivationCode](../resources/intune_esim_embeddedsimactivationcode.md) collection|The activation codes which belong to this pool. This navigation property is used to post activation codes to Intune but cannot be used to read activation codes from Intune.|
|activationCodeCount|Int32|The total count of activation codes which belong to this pool.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[embeddedSIMActivationCodePoolAssignment](../resources/intune_esim_embeddedsimactivationcodepoolassignment.md) collection|Navigational property to a list of targets to which this pool is assigned.|
|deviceStates|[embeddedSIMDeviceState](../resources/intune_esim_embeddedsimdevicestate.md) collection|Navigational property to a list of device states for this pool.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.embeddedSIMActivationCodePool"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.embeddedSIMActivationCodePool",
  "id": "String (identifier)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "activationCodes": [
    {
      "@odata.type": "microsoft.graph.embeddedSIMActivationCode",
      "integratedCircuitCardIdentifier": "String",
      "matchingIdentifier": "String",
      "smdpPlusServerAddress": "String"
    }
  ],
  "activationCodeCount": 1024
}
```






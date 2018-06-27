# mobileAppIntentAndState resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

MobileApp Intent and Install State for a given device.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileAppIntentAndStates](../api/intune_troubleshooting_mobileappintentandstate_list.md)|[mobileAppIntentAndState](../resources/intune_troubleshooting_mobileappintentandstate.md) collection|List properties and relationships of the [mobileAppIntentAndState](../resources/intune_troubleshooting_mobileappintentandstate.md) objects.|
|[Get mobileAppIntentAndState](../api/intune_troubleshooting_mobileappintentandstate_get.md)|[mobileAppIntentAndState](../resources/intune_troubleshooting_mobileappintentandstate.md)|Read properties and relationships of the [mobileAppIntentAndState](../resources/intune_troubleshooting_mobileappintentandstate.md) object.|
|[Create mobileAppIntentAndState](../api/intune_troubleshooting_mobileappintentandstate_create.md)|[mobileAppIntentAndState](../resources/intune_troubleshooting_mobileappintentandstate.md)|Create a new [mobileAppIntentAndState](../resources/intune_troubleshooting_mobileappintentandstate.md) object.|
|[Delete mobileAppIntentAndState](../api/intune_troubleshooting_mobileappintentandstate_delete.md)|None|Deletes a [mobileAppIntentAndState](../resources/intune_troubleshooting_mobileappintentandstate.md).|
|[Update mobileAppIntentAndState](../api/intune_troubleshooting_mobileappintentandstate_update.md)|[mobileAppIntentAndState](../resources/intune_troubleshooting_mobileappintentandstate.md)|Update the properties of a [mobileAppIntentAndState](../resources/intune_troubleshooting_mobileappintentandstate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|UUID for the object|
|managedDeviceIdentifier|String|Device identifier created or collected by Intune.|
|userId|String|Identifier for the user that tried to enroll the device.|
|mobileAppList|[mobileAppIntentAndStateDetail](../resources/intune_troubleshooting_mobileappintentandstatedetail.md) collection|The list of payload intents and states for the tenant.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppIntentAndState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppIntentAndState",
  "id": "String (identifier)",
  "managedDeviceIdentifier": "String",
  "userId": "String",
  "mobileAppList": [
    {
      "@odata.type": "microsoft.graph.mobileAppIntentAndStateDetail",
      "applicationId": "String",
      "displayName": "String",
      "mobileAppIntent": "String",
      "displayVersion": "String",
      "installState": "String"
    }
  ]
}
```




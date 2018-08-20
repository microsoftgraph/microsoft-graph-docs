# updateWindowsDeviceAccountActionParameter resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceAccount|[windowsDeviceAccount](../resources/intune_devices_windowsdeviceaccount.md)|Not yet documented|
|passwordRotationEnabled|Boolean|Not yet documented|
|calendarSyncEnabled|Boolean|Not yet documented|
|deviceAccountEmail|String|Not yet documented|
|exchangeServer|String|Not yet documented|
|sessionInitiationProtocalAddress|String|Not yet documented|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.updateWindowsDeviceAccountActionParameter"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.updateWindowsDeviceAccountActionParameter",
  "deviceAccount": {
    "@odata.type": "microsoft.graph.windowsDeviceAccount",
    "password": "String"
  },
  "passwordRotationEnabled": true,
  "calendarSyncEnabled": true,
  "deviceAccountEmail": "String",
  "exchangeServer": "String",
  "sessionInitiationProtocalAddress": "String"
}
```




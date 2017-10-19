# deviceExchangeAccessStateSummary resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Device Exchange Access State summary
## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedDeviceCount|Int32|Total count of devices with Exchange Access State: Allowed.|
|blockedDeviceCount|Int32|Total count of devices with Exchange Access State: Blocked.|
|quarantinedDeviceCount|Int32|Total count of devices with Exchange Access State: Quarantined.|
|unknownDeviceCount|Int32|Total count of devices with Exchange Access State: Unknown.|
|unavailableDeviceCount|Int32|Total count of devices for which no Exchange Access State could be found.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceExchangeAccessStateSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceExchangeAccessStateSummary",
  "allowedDeviceCount": 1024,
  "blockedDeviceCount": 1024,
  "quarantinedDeviceCount": 1024,
  "unknownDeviceCount": 1024,
  "unavailableDeviceCount": 1024
}
```




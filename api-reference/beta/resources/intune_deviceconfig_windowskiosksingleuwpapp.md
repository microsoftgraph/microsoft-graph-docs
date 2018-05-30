# windowsKioskSingleUWPApp resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The class used to identify the UWP app info for the kiosk configuration

Inherits from [windowsKioskAppConfiguration](../resources/intune_deviceconfig_windowskioskappconfiguration.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|uwpApp|[windowsKioskUWPApp](../resources/intune_deviceconfig_windowskioskuwpapp.md)|This is the only Application User Model ID (AUMID) that will be available to launch use while in Kiosk Mode|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsKioskSingleUWPApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsKioskSingleUWPApp",
  "uwpApp": {
    "@odata.type": "microsoft.graph.windowsKioskUWPApp",
    "appUserModelId": "String",
    "appId": "String",
    "containedAppId": "String"
  }
}
```




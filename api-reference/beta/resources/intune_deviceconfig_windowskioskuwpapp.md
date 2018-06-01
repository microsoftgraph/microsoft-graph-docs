# windowsKioskUWPApp resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The base class for a type of apps

Inherits from [windowsKioskAppBase](../resources/intune_deviceconfig_windowskioskappbase.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appUserModelId|String|This is the only Application User Model ID (AUMID) that will be available to launch use while in Kiosk Mode|
|appId|String|This references an Intune App that will be target to the same assignments as Kiosk configuration|
|containedAppId|String|This references an contained App from an Intune App|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsKioskUWPApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsKioskUWPApp",
  "appUserModelId": "String",
  "appId": "String",
  "containedAppId": "String"
}
```




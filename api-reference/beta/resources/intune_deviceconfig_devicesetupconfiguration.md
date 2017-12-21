# deviceSetupConfiguration resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

This is the base class for Setup Configuration. Setup configurations are platform specific and individual per-platform setup configurations inherit from here.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceSetupConfigurations](../api/intune_deviceconfig_devicesetupconfiguration_list.md)|[deviceSetupConfiguration](../resources/intune_deviceconfig_devicesetupconfiguration.md) collection|List properties and relationships of the [deviceSetupConfiguration](../resources/intune_deviceconfig_devicesetupconfiguration.md) objects.|
|[Get deviceSetupConfiguration](../api/intune_deviceconfig_devicesetupconfiguration_get.md)|[deviceSetupConfiguration](../resources/intune_deviceconfig_devicesetupconfiguration.md)|Read properties and relationships of the [deviceSetupConfiguration](../resources/intune_deviceconfig_devicesetupconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|createdDateTime|DateTimeOffset|DateTime the object was created.|
|description|String|Admin provided description of the Device Configuration.|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified.|
|displayName|String|Admin provided name of the device configuration.|
|version|Int32|Version of the device configuration.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceSetupConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceSetupConfiguration",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "version": 1024
}
```




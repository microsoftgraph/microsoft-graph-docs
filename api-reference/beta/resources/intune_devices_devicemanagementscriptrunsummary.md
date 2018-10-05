# deviceManagementScriptRunSummary resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties for the run summary of a device management script.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagementScriptRunSummary](../api/intune_devices_devicemanagementscriptrunsummary_get.md)|[deviceManagementScriptRunSummary](../resources/intune_devices_devicemanagementscriptrunsummary.md)|Read properties and relationships of the [deviceManagementScriptRunSummary](../resources/intune_devices_devicemanagementscriptrunsummary.md) object.|
|[Update deviceManagementScriptRunSummary](../api/intune_devices_devicemanagementscriptrunsummary_update.md)|[deviceManagementScriptRunSummary](../resources/intune_devices_devicemanagementscriptrunsummary.md)|Update the properties of a [deviceManagementScriptRunSummary](../resources/intune_devices_devicemanagementscriptrunsummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the device management script run summary entity.|
|successDeviceCount|Int32|Success device count.|
|errorDeviceCount|Int32|Error device count.|
|successUserCount|Int32|Success user count.|
|errorUserCount|Int32|Error user count.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementScriptRunSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementScriptRunSummary",
  "id": "String (identifier)",
  "successDeviceCount": 1024,
  "errorDeviceCount": 1024,
  "successUserCount": 1024,
  "errorUserCount": 1024
}
```




# managedDevice resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Devices that are managed or pre-enrolled through Intune
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedDevices](../api/intune_deviceconfig_manageddevice_list.md)|[managedDevice](../resources/intune_deviceconfig_manageddevice.md) collection|List properties and relationships of the [managedDevice](../resources/intune_deviceconfig_manageddevice.md) objects.|
|[Get managedDevice](../api/intune_deviceconfig_manageddevice_get.md)|[managedDevice](../resources/intune_deviceconfig_manageddevice.md)|Read properties and relationships of the [managedDevice](../resources/intune_deviceconfig_manageddevice.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Not yet documented|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deviceConfigurationStates|[deviceConfigurationState](../resources/intune_deviceconfig_deviceconfigurationstate.md) collection|Device configuration states for this device.|
|deviceCompliancePolicyStates|[deviceCompliancePolicyState](../resources/intune_deviceconfig_devicecompliancepolicystate.md) collection|Device compliance policy states for this device.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedDevice"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDevice",
  "id": "String (identifier)"
}
```




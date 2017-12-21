# androidDeviceComplianceLocalActionLockDevice resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Local Action Lock Device Only Configuration

Inherits from [androidDeviceComplianceLocalActionBase](../resources/intune_deviceconfig_androiddevicecompliancelocalactionbase.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List androidDeviceComplianceLocalActionLockDevices](../api/intune_deviceconfig_androiddevicecompliancelocalactionlockdevice_list.md)|[androidDeviceComplianceLocalActionLockDevice](../resources/intune_deviceconfig_androiddevicecompliancelocalactionlockdevice.md) collection|List properties and relationships of the [androidDeviceComplianceLocalActionLockDevice](../resources/intune_deviceconfig_androiddevicecompliancelocalactionlockdevice.md) objects.|
|[Get androidDeviceComplianceLocalActionLockDevice](../api/intune_deviceconfig_androiddevicecompliancelocalactionlockdevice_get.md)|[androidDeviceComplianceLocalActionLockDevice](../resources/intune_deviceconfig_androiddevicecompliancelocalactionlockdevice.md)|Read properties and relationships of the [androidDeviceComplianceLocalActionLockDevice](../resources/intune_deviceconfig_androiddevicecompliancelocalactionlockdevice.md) object.|
|[Create androidDeviceComplianceLocalActionLockDevice](../api/intune_deviceconfig_androiddevicecompliancelocalactionlockdevice_create.md)|[androidDeviceComplianceLocalActionLockDevice](../resources/intune_deviceconfig_androiddevicecompliancelocalactionlockdevice.md)|Create a new [androidDeviceComplianceLocalActionLockDevice](../resources/intune_deviceconfig_androiddevicecompliancelocalactionlockdevice.md) object.|
|[Delete androidDeviceComplianceLocalActionLockDevice](../api/intune_deviceconfig_androiddevicecompliancelocalactionlockdevice_delete.md)|None|Deletes a [androidDeviceComplianceLocalActionLockDevice](../resources/intune_deviceconfig_androiddevicecompliancelocalactionlockdevice.md).|
|[Update androidDeviceComplianceLocalActionLockDevice](../api/intune_deviceconfig_androiddevicecompliancelocalactionlockdevice_update.md)|[androidDeviceComplianceLocalActionLockDevice](../resources/intune_deviceconfig_androiddevicecompliancelocalactionlockdevice.md)|Update the properties of a [androidDeviceComplianceLocalActionLockDevice](../resources/intune_deviceconfig_androiddevicecompliancelocalactionlockdevice.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [androidDeviceComplianceLocalActionBase](../resources/intune_deviceconfig_androiddevicecompliancelocalactionbase.md)|
|gracePeriodInMinutes|Int32|Number of minutes to wait till a local action is enforced. Valid values 0 to 2147483647 Inherited from [androidDeviceComplianceLocalActionBase](../resources/intune_deviceconfig_androiddevicecompliancelocalactionbase.md)|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidDeviceComplianceLocalActionLockDevice"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidDeviceComplianceLocalActionLockDevice",
  "id": "String (identifier)",
  "gracePeriodInMinutes": 1024
}
```




# androidDeviceComplianceLocalActionLockDeviceWithPasscode resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Local Action Lock Device with Passcode Configuration

Inherits from [androidDeviceComplianceLocalActionBase](../resources/intune_deviceconfig_androiddevicecompliancelocalactionbase.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List androidDeviceComplianceLocalActionLockDeviceWithPasscodes](../api/intune_deviceconfig_androiddevicecompliancelocalactionlockdevicewithpasscode_list.md)|[androidDeviceComplianceLocalActionLockDeviceWithPasscode](../resources/intune_deviceconfig_androiddevicecompliancelocalactionlockdevicewithpasscode.md) collection|List properties and relationships of the [androidDeviceComplianceLocalActionLockDeviceWithPasscode](../resources/intune_deviceconfig_androiddevicecompliancelocalactionlockdevicewithpasscode.md) objects.|
|[Get androidDeviceComplianceLocalActionLockDeviceWithPasscode](../api/intune_deviceconfig_androiddevicecompliancelocalactionlockdevicewithpasscode_get.md)|[androidDeviceComplianceLocalActionLockDeviceWithPasscode](../resources/intune_deviceconfig_androiddevicecompliancelocalactionlockdevicewithpasscode.md)|Read properties and relationships of the [androidDeviceComplianceLocalActionLockDeviceWithPasscode](../resources/intune_deviceconfig_androiddevicecompliancelocalactionlockdevicewithpasscode.md) object.|
|[Create androidDeviceComplianceLocalActionLockDeviceWithPasscode](../api/intune_deviceconfig_androiddevicecompliancelocalactionlockdevicewithpasscode_create.md)|[androidDeviceComplianceLocalActionLockDeviceWithPasscode](../resources/intune_deviceconfig_androiddevicecompliancelocalactionlockdevicewithpasscode.md)|Create a new [androidDeviceComplianceLocalActionLockDeviceWithPasscode](../resources/intune_deviceconfig_androiddevicecompliancelocalactionlockdevicewithpasscode.md) object.|
|[Delete androidDeviceComplianceLocalActionLockDeviceWithPasscode](../api/intune_deviceconfig_androiddevicecompliancelocalactionlockdevicewithpasscode_delete.md)|None|Deletes a [androidDeviceComplianceLocalActionLockDeviceWithPasscode](../resources/intune_deviceconfig_androiddevicecompliancelocalactionlockdevicewithpasscode.md).|
|[Update androidDeviceComplianceLocalActionLockDeviceWithPasscode](../api/intune_deviceconfig_androiddevicecompliancelocalactionlockdevicewithpasscode_update.md)|[androidDeviceComplianceLocalActionLockDeviceWithPasscode](../resources/intune_deviceconfig_androiddevicecompliancelocalactionlockdevicewithpasscode.md)|Update the properties of a [androidDeviceComplianceLocalActionLockDeviceWithPasscode](../resources/intune_deviceconfig_androiddevicecompliancelocalactionlockdevicewithpasscode.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [androidDeviceComplianceLocalActionBase](../resources/intune_deviceconfig_androiddevicecompliancelocalactionbase.md)|
|gracePeriodInMinutes|Int32|Number of minutes to wait till a local action is enforced. Valid values 0 to 2147483647 Inherited from [androidDeviceComplianceLocalActionBase](../resources/intune_deviceconfig_androiddevicecompliancelocalactionbase.md)|
|passcode|String|Passcode to reset to Android device.|
|passcodeSignInFailureCountBeforeWipe|Int32|Number of sign in failures before wiping device, the value can be 4-11. Valid values 4 to 11|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidDeviceComplianceLocalActionLockDeviceWithPasscode"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidDeviceComplianceLocalActionLockDeviceWithPasscode",
  "id": "String (identifier)",
  "gracePeriodInMinutes": 1024,
  "passcode": "String",
  "passcodeSignInFailureCountBeforeWipe": 1024
}
```




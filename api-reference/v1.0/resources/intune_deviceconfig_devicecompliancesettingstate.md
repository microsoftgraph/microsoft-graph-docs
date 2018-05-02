# deviceComplianceSettingState resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Device compliance setting State for a given device.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceComplianceSettingStates](../api/intune_deviceconfig_devicecompliancesettingstate_list.md)|[deviceComplianceSettingState](../resources/intune_deviceconfig_devicecompliancesettingstate.md) collection|List properties and relationships of the [deviceComplianceSettingState](../resources/intune_deviceconfig_devicecompliancesettingstate.md) objects.|
|[Get deviceComplianceSettingState](../api/intune_deviceconfig_devicecompliancesettingstate_get.md)|[deviceComplianceSettingState](../resources/intune_deviceconfig_devicecompliancesettingstate.md)|Read properties and relationships of the [deviceComplianceSettingState](../resources/intune_deviceconfig_devicecompliancesettingstate.md) object.|
|[Create deviceComplianceSettingState](../api/intune_deviceconfig_devicecompliancesettingstate_create.md)|[deviceComplianceSettingState](../resources/intune_deviceconfig_devicecompliancesettingstate.md)|Create a new [deviceComplianceSettingState](../resources/intune_deviceconfig_devicecompliancesettingstate.md) object.|
|[Delete deviceComplianceSettingState](../api/intune_deviceconfig_devicecompliancesettingstate_delete.md)|None|Deletes a [deviceComplianceSettingState](../resources/intune_deviceconfig_devicecompliancesettingstate.md).|
|[Update deviceComplianceSettingState](../api/intune_deviceconfig_devicecompliancesettingstate_update.md)|[deviceComplianceSettingState](../resources/intune_deviceconfig_devicecompliancesettingstate.md)|Update the properties of a [deviceComplianceSettingState](../resources/intune_deviceconfig_devicecompliancesettingstate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity|
|setting|String|The setting class name and property name.|
|settingName|String|The Setting Name that is being reported|
|deviceId|String|The Device Id that is being reported|
|deviceName|String|The Device Name that is being reported|
|userId|String|The user Id that is being reported|
|userEmail|String|The User email address that is being reported|
|userName|String|The User Name that is being reported|
|userPrincipalName|String|The User PrincipalName that is being reported|
|deviceModel|String|The device model that is being reported|
|state|[complianceStatus](../resources/intune_deviceconfig_compliancestatus.md)|The compliance state of the setting. Possible values are: `unknown`, `notApplicable`, `compliant`, `remediated`, `nonCompliant`, `error`, `conflict`.|
|complianceGracePeriodExpirationDateTime|DateTimeOffset|The DateTime when device compliance grace period expires|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceComplianceSettingState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceComplianceSettingState",
  "id": "String (identifier)",
  "setting": "String",
  "settingName": "String",
  "deviceId": "String",
  "deviceName": "String",
  "userId": "String",
  "userEmail": "String",
  "userName": "String",
  "userPrincipalName": "String",
  "deviceModel": "String",
  "state": "String",
  "complianceGracePeriodExpirationDateTime": "String (timestamp)"
}
```




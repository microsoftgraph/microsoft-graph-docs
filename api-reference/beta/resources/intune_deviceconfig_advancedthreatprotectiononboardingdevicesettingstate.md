﻿# advancedThreatProtectionOnboardingDeviceSettingState resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

ATP onboarding State for a given device.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List advancedThreatProtectionOnboardingDeviceSettingStates](../api/intune_deviceconfig_advancedthreatprotectiononboardingdevicesettingstate_list.md)|[advancedThreatProtectionOnboardingDeviceSettingState](../resources/intune_deviceconfig_advancedthreatprotectiononboardingdevicesettingstate.md) collection|List properties and relationships of the [advancedThreatProtectionOnboardingDeviceSettingState](../resources/intune_deviceconfig_advancedthreatprotectiononboardingdevicesettingstate.md) objects.|
|[Get advancedThreatProtectionOnboardingDeviceSettingState](../api/intune_deviceconfig_advancedthreatprotectiononboardingdevicesettingstate_get.md)|[advancedThreatProtectionOnboardingDeviceSettingState](../resources/intune_deviceconfig_advancedthreatprotectiononboardingdevicesettingstate.md)|Read properties and relationships of the [advancedThreatProtectionOnboardingDeviceSettingState](../resources/intune_deviceconfig_advancedthreatprotectiononboardingdevicesettingstate.md) object.|
|[Create advancedThreatProtectionOnboardingDeviceSettingState](../api/intune_deviceconfig_advancedthreatprotectiononboardingdevicesettingstate_create.md)|[advancedThreatProtectionOnboardingDeviceSettingState](../resources/intune_deviceconfig_advancedthreatprotectiononboardingdevicesettingstate.md)|Create a new [advancedThreatProtectionOnboardingDeviceSettingState](../resources/intune_deviceconfig_advancedthreatprotectiononboardingdevicesettingstate.md) object.|
|[Delete advancedThreatProtectionOnboardingDeviceSettingState](../api/intune_deviceconfig_advancedthreatprotectiononboardingdevicesettingstate_delete.md)|None|Deletes a [advancedThreatProtectionOnboardingDeviceSettingState](../resources/intune_deviceconfig_advancedthreatprotectiononboardingdevicesettingstate.md).|
|[Update advancedThreatProtectionOnboardingDeviceSettingState](../api/intune_deviceconfig_advancedthreatprotectiononboardingdevicesettingstate_update.md)|[advancedThreatProtectionOnboardingDeviceSettingState](../resources/intune_deviceconfig_advancedthreatprotectiononboardingdevicesettingstate.md)|Update the properties of a [advancedThreatProtectionOnboardingDeviceSettingState](../resources/intune_deviceconfig_advancedthreatprotectiononboardingdevicesettingstate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity|
|platformType|[deviceType](../resources/intune_shared_devicetype.md)|Device platform type. Possible values are: `desktop`, `windowsRT`, `winMO6`, `nokia`, `windowsPhone`, `mac`, `winCE`, `winEmbedded`, `iPhone`, `iPad`, `iPod`, `android`, `iSocConsumer`, `unix`, `macMDM`, `holoLens`, `surfaceHub`, `androidForWork`, `androidEnterprise`, `blackberry`, `palm`, `unknown`.|
|setting|String|The setting class name and property name.|
|settingName|String|The Setting Name that is being reported|
|deviceId|String|The Device Id that is being reported|
|deviceName|String|The Device Name that is being reported|
|userId|String|The user Id that is being reported|
|userEmail|String|The User email address that is being reported|
|userName|String|The User Name that is being reported|
|userPrincipalName|String|The User PrincipalName that is being reported|
|deviceModel|String|The device model that is being reported|
|state|[complianceStatus](../resources/intune_shared_compliancestatus.md)|The compliance state of the setting. Possible values are: `unknown`, `notApplicable`, `compliant`, `remediated`, `nonCompliant`, `error`, `conflict`, `notAssigned`.|
|complianceGracePeriodExpirationDateTime|DateTimeOffset|The DateTime when device compliance grace period expires|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.advancedThreatProtectionOnboardingDeviceSettingState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.advancedThreatProtectionOnboardingDeviceSettingState",
  "id": "String (identifier)",
  "platformType": "String",
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






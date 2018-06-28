# managedDeviceMobileAppConfigurationState resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Managed Device Mobile App Configuration State for a given device.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedDeviceMobileAppConfigurationStates](../api/intune_deviceconfig_manageddevicemobileappconfigurationstate_list.md)|[managedDeviceMobileAppConfigurationState](../resources/intune_deviceconfig_manageddevicemobileappconfigurationstate.md) collection|List properties and relationships of the [managedDeviceMobileAppConfigurationState](../resources/intune_deviceconfig_manageddevicemobileappconfigurationstate.md) objects.|
|[Get managedDeviceMobileAppConfigurationState](../api/intune_deviceconfig_manageddevicemobileappconfigurationstate_get.md)|[managedDeviceMobileAppConfigurationState](../resources/intune_deviceconfig_manageddevicemobileappconfigurationstate.md)|Read properties and relationships of the [managedDeviceMobileAppConfigurationState](../resources/intune_deviceconfig_manageddevicemobileappconfigurationstate.md) object.|
|[Create managedDeviceMobileAppConfigurationState](../api/intune_deviceconfig_manageddevicemobileappconfigurationstate_create.md)|[managedDeviceMobileAppConfigurationState](../resources/intune_deviceconfig_manageddevicemobileappconfigurationstate.md)|Create a new [managedDeviceMobileAppConfigurationState](../resources/intune_deviceconfig_manageddevicemobileappconfigurationstate.md) object.|
|[Delete managedDeviceMobileAppConfigurationState](../api/intune_deviceconfig_manageddevicemobileappconfigurationstate_delete.md)|None|Deletes a [managedDeviceMobileAppConfigurationState](../resources/intune_deviceconfig_manageddevicemobileappconfigurationstate.md).|
|[Update managedDeviceMobileAppConfigurationState](../api/intune_deviceconfig_manageddevicemobileappconfigurationstate_update.md)|[managedDeviceMobileAppConfigurationState](../resources/intune_deviceconfig_manageddevicemobileappconfigurationstate.md)|Update the properties of a [managedDeviceMobileAppConfigurationState](../resources/intune_deviceconfig_manageddevicemobileappconfigurationstate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|displayName|String|The name of the policy for this policyBase|
|version|Int32|The version of the policy|
|platformType|[policyPlatformType](../resources/intune_deviceconfig_policyplatformtype.md)|Platform type that the policy applies to. Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`, `androidWorkProfile`, `all`.|
|state|[complianceStatus](../resources/intune_shared_compliancestatus.md)|The compliance state of the policy. Possible values are: `unknown`, `notApplicable`, `compliant`, `remediated`, `nonCompliant`, `error`, `conflict`.|
|settingCount|Int32|Count of how many setting a policy holds|
|userId|String|User unique identifier, must be Guid|
|userPrincipalName|String|User Principal Name|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedDeviceMobileAppConfigurationState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDeviceMobileAppConfigurationState",
  "id": "String (identifier)",
  "displayName": "String",
  "version": 1024,
  "platformType": "String",
  "state": "String",
  "settingCount": 1024,
  "userId": "String",
  "userPrincipalName": "String"
}
```



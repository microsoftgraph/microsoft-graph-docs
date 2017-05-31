# deviceCompliancePolicyState resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Device Compliance Policy State for a given device.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceCompliancePolicyStates](../api/intune_deviceconfig_devicecompliancepolicystate_list.md)|[deviceCompliancePolicyState](../resources/intune_deviceconfig_devicecompliancepolicystate.md) collection|List properties and relationships of the [deviceCompliancePolicyState](../resources/intune_deviceconfig_devicecompliancepolicystate.md) objects.|
|[Get deviceCompliancePolicyState](../api/intune_deviceconfig_devicecompliancepolicystate_get.md)|[deviceCompliancePolicyState](../resources/intune_deviceconfig_devicecompliancepolicystate.md)|Read properties and relationships of the [deviceCompliancePolicyState](../resources/intune_deviceconfig_devicecompliancepolicystate.md) object.|
|[Create deviceCompliancePolicyState](../api/intune_deviceconfig_devicecompliancepolicystate_create.md)|[deviceCompliancePolicyState](../resources/intune_deviceconfig_devicecompliancepolicystate.md)|Create a new [deviceCompliancePolicyState](../resources/intune_deviceconfig_devicecompliancepolicystate.md) object.|
|[Delete deviceCompliancePolicyState](../api/intune_deviceconfig_devicecompliancepolicystate_delete.md)|None|Deletes a [deviceCompliancePolicyState](../resources/intune_deviceconfig_devicecompliancepolicystate.md).|
|[Update deviceCompliancePolicyState](../api/intune_deviceconfig_devicecompliancepolicystate_update.md)|[deviceCompliancePolicyState](../resources/intune_deviceconfig_devicecompliancepolicystate.md)|Update the properties of a [deviceCompliancePolicyState](../resources/intune_deviceconfig_devicecompliancepolicystate.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|settingStates|[deviceCompliancePolicySettingState](../resources/intune_deviceconfig_devicecompliancepolicysettingstate.md) collection|Not yet documented|
|displayName|String|The name of the policy for this policyBase|
|version|Int32|The version of the policy|
|platformType|String|Platform type that the policy applies to Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`.|
|state|String|The compliance state of the policy Possible values are: `unknown`, `notApplicable`, `compliant`, `remediated`, `nonCompliant`, `error`, `conflict`.|
|settingCount|Int32|Count of how many setting a policy holds|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceCompliancePolicyState"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceCompliancePolicyState",
  "id": "String (identifier)",
  "settingStates": [
    {
      "@odata.type": "microsoft.graph.deviceCompliancePolicySettingState",
      "setting": "String",
      "settingName": "String",
      "instanceDisplayName": "String",
      "state": "String",
      "errorCode": 1024,
      "errorDescription": "String",
      "userId": "String",
      "userName": "String",
      "userEmail": "String",
      "userPrincipalName": "String",
      "sources": [
        {
          "@odata.type": "microsoft.graph.settingSource",
          "id": "String",
          "displayName": "String"
        }
      ],
      "currentValue": "String"
    }
  ],
  "displayName": "String",
  "version": 1024,
  "platformType": "String",
  "state": "String",
  "settingCount": 1024
}
```




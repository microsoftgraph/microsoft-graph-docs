# deviceCompliancePolicySettingState resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Device Compilance Policy Setting State for a given device.
## Properties
|Property|Type|Description|
|---|---|---|
|setting|String|The setting that is being reported|
|instanceDisplayName|String|Name of setting instance that is being reported.|
|state|String|The compliance state of the setting Possible values are: `unknown`, `notApplicable`, `compliant`, `remediated`, `nonCompliant`, `error`, `conflict`.|
|errorCode|Int32|Error code for the setting|
|errorDescription|String|Error description|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceCompliancePolicySettingState"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceCompliancePolicySettingState",
  "setting": "String",
  "instanceDisplayName": "String",
  "state": "String",
  "errorCode": 1024,
  "errorDescription": "String"
}
```




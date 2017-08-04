# complianceSettingStateSummary resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Device Compilance Policy Setting State summary across the account.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List complianceSettingStateSummaries](../api/intune_deviceconfig_compliancesettingstatesummary_list.md)|[complianceSettingStateSummary](../resources/intune_deviceconfig_compliancesettingstatesummary.md) collection|List properties and relationships of the [complianceSettingStateSummary](../resources/intune_deviceconfig_compliancesettingstatesummary.md) objects.|
|[Get complianceSettingStateSummary](../api/intune_deviceconfig_compliancesettingstatesummary_get.md)|[complianceSettingStateSummary](../resources/intune_deviceconfig_compliancesettingstatesummary.md)|Read properties and relationships of the [complianceSettingStateSummary](../resources/intune_deviceconfig_compliancesettingstatesummary.md) object.|
|[Create complianceSettingStateSummary](../api/intune_deviceconfig_compliancesettingstatesummary_create.md)|[complianceSettingStateSummary](../resources/intune_deviceconfig_compliancesettingstatesummary.md)|Create a new [complianceSettingStateSummary](../resources/intune_deviceconfig_compliancesettingstatesummary.md) object.|
|[Delete complianceSettingStateSummary](../api/intune_deviceconfig_compliancesettingstatesummary_delete.md)|None|Deletes a [complianceSettingStateSummary](../resources/intune_deviceconfig_compliancesettingstatesummary.md).|
|[Update complianceSettingStateSummary](../api/intune_deviceconfig_compliancesettingstatesummary_update.md)|[complianceSettingStateSummary](../resources/intune_deviceconfig_compliancesettingstatesummary.md)|Update the properties of a [complianceSettingStateSummary](../resources/intune_deviceconfig_compliancesettingstatesummary.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|setting|String|The setting class name and property name.|
|settingName|String|Name of the setting.|
|instanceDisplayName|String|Name of setting instance that is being reported.|
|settingPlatform|String|Setting platform Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`.|
|platformType|String|Setting platform Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`.|
|id|String|Key of the entity.|
|unknownDeviceCount|Int32|Number of unknown devices|
|notApplicableDeviceCount|Int32|Number of not applicable devices|
|compliantDeviceCount|Int32|Number of compliant devices|
|remediatedDeviceCount|Int32|Number of remediated devices|
|nonCompliantDeviceCount|Int32|Number of NonCompliant devices|
|errorDeviceCount|Int32|Number of error devices|
|conflictDeviceCount|Int32|Number of conflict devices|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.complianceSettingStateSummary"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.complianceSettingStateSummary",
  "setting": "String",
  "settingName": "String",
  "instanceDisplayName": "String",
  "settingPlatform": "String",
  "platformType": "String",
  "id": "String (identifier)",
  "unknownDeviceCount": 1024,
  "notApplicableDeviceCount": 1024,
  "compliantDeviceCount": 1024,
  "remediatedDeviceCount": 1024,
  "nonCompliantDeviceCount": 1024,
  "errorDeviceCount": 1024,
  "conflictDeviceCount": 1024
}
```




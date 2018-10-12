# deviceConfigurationUserStateSummary resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceConfigurationUserStateSummary](../api/intune_deviceconfig_deviceconfigurationuserstatesummary_get.md)|[deviceConfigurationUserStateSummary](../resources/intune_deviceconfig_deviceconfigurationuserstatesummary.md)|Read properties and relationships of the [deviceConfigurationUserStateSummary](../resources/intune_deviceconfig_deviceconfigurationuserstatesummary.md) object.|
|[Update deviceConfigurationUserStateSummary](../api/intune_deviceconfig_deviceconfigurationuserstatesummary_update.md)|[deviceConfigurationUserStateSummary](../resources/intune_deviceconfig_deviceconfigurationuserstatesummary.md)|Update the properties of a [deviceConfigurationUserStateSummary](../resources/intune_deviceconfig_deviceconfigurationuserstatesummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|unknownUserCount|Int32|Number of unknown users|
|notApplicableUserCount|Int32|Number of not applicable users|
|compliantUserCount|Int32|Number of compliant users|
|remediatedUserCount|Int32|Number of remediated users|
|nonCompliantUserCount|Int32|Number of NonCompliant users|
|errorUserCount|Int32|Number of error users|
|conflictUserCount|Int32|Number of conflict users|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceConfigurationUserStateSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceConfigurationUserStateSummary",
  "id": "String (identifier)",
  "unknownUserCount": 1024,
  "notApplicableUserCount": 1024,
  "compliantUserCount": 1024,
  "remediatedUserCount": 1024,
  "nonCompliantUserCount": 1024,
  "errorUserCount": 1024,
  "conflictUserCount": 1024
}
```




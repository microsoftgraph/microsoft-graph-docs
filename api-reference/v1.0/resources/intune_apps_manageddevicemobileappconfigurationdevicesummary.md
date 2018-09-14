# managedDeviceMobileAppConfigurationDeviceSummary resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties, inherited properties and actions for an MDM mobile app configuration device status summary.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get managedDeviceMobileAppConfigurationDeviceSummary](../api/intune_apps_manageddevicemobileappconfigurationdevicesummary_get.md)|[managedDeviceMobileAppConfigurationDeviceSummary](../resources/intune_apps_manageddevicemobileappconfigurationdevicesummary.md)|Read properties and relationships of the [managedDeviceMobileAppConfigurationDeviceSummary](../resources/intune_apps_manageddevicemobileappconfigurationdevicesummary.md) object.|
|[Update managedDeviceMobileAppConfigurationDeviceSummary](../api/intune_apps_manageddevicemobileappconfigurationdevicesummary_update.md)|[managedDeviceMobileAppConfigurationDeviceSummary](../resources/intune_apps_manageddevicemobileappconfigurationdevicesummary.md)|Update the properties of a [managedDeviceMobileAppConfigurationDeviceSummary](../resources/intune_apps_manageddevicemobileappconfigurationdevicesummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|pendingCount|Int32|Number of pending devices|
|notApplicableCount|Int32|Number of not applicable devices|
|successCount|Int32|Number of succeeded devices|
|errorCount|Int32|Number of error devices|
|failedCount|Int32|Number of failed devices|
|lastUpdateDateTime|DateTimeOffset|Last update time|
|configurationVersion|Int32|Version of the policy for that overview|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedDeviceMobileAppConfigurationDeviceSummary"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDeviceMobileAppConfigurationDeviceSummary",
  "id": "String (identifier)",
  "pendingCount": 1024,
  "notApplicableCount": 1024,
  "successCount": 1024,
  "errorCount": 1024,
  "failedCount": 1024,
  "lastUpdateDateTime": "String (timestamp)",
  "configurationVersion": 1024
}
```









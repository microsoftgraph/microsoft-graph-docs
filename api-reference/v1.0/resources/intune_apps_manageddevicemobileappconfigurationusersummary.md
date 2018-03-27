# managedDeviceMobileAppConfigurationUserSummary resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties, inherited properties and actions for an MDM mobile app configuration user status summary.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get managedDeviceMobileAppConfigurationUserSummary](../api/intune_apps_manageddevicemobileappconfigurationusersummary_get.md)|[managedDeviceMobileAppConfigurationUserSummary](../resources/intune_apps_manageddevicemobileappconfigurationusersummary.md)|Read properties and relationships of the [managedDeviceMobileAppConfigurationUserSummary](../resources/intune_apps_manageddevicemobileappconfigurationusersummary.md) object.|
|[Update managedDeviceMobileAppConfigurationUserSummary](../api/intune_apps_manageddevicemobileappconfigurationusersummary_update.md)|[managedDeviceMobileAppConfigurationUserSummary](../resources/intune_apps_manageddevicemobileappconfigurationusersummary.md)|Update the properties of a [managedDeviceMobileAppConfigurationUserSummary](../resources/intune_apps_manageddevicemobileappconfigurationusersummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|pendingCount|Int32|Number of pending Users|
|notApplicableCount|Int32|Number of not applicable devices|
|successCount|Int32|Number of succeeded Users|
|errorCount|Int32|Number of error Users|
|failedCount|Int32|Number of failed Users|
|lastUpdateDateTime|DateTimeOffset|Last update time|
|configurationVersion|Int32|Version of the policy for that overview|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.managedDeviceMobileAppConfigurationUserSummary"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDeviceMobileAppConfigurationUserSummary",
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




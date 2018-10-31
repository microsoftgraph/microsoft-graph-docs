﻿# deviceConfigurationConflictSummary resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Conflict summary for a set of device configuration policies.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceConfigurationConflictSummaries](../api/intune_deviceconfig_deviceconfigurationconflictsummary_list.md)|[deviceConfigurationConflictSummary](../resources/intune_deviceconfig_deviceconfigurationconflictsummary.md) collection|List properties and relationships of the [deviceConfigurationConflictSummary](../resources/intune_deviceconfig_deviceconfigurationconflictsummary.md) objects.|
|[Get deviceConfigurationConflictSummary](../api/intune_deviceconfig_deviceconfigurationconflictsummary_get.md)|[deviceConfigurationConflictSummary](../resources/intune_deviceconfig_deviceconfigurationconflictsummary.md)|Read properties and relationships of the [deviceConfigurationConflictSummary](../resources/intune_deviceconfig_deviceconfigurationconflictsummary.md) object.|
|[Create deviceConfigurationConflictSummary](../api/intune_deviceconfig_deviceconfigurationconflictsummary_create.md)|[deviceConfigurationConflictSummary](../resources/intune_deviceconfig_deviceconfigurationconflictsummary.md)|Create a new [deviceConfigurationConflictSummary](../resources/intune_deviceconfig_deviceconfigurationconflictsummary.md) object.|
|[Delete deviceConfigurationConflictSummary](../api/intune_deviceconfig_deviceconfigurationconflictsummary_delete.md)|None|Deletes a [deviceConfigurationConflictSummary](../resources/intune_deviceconfig_deviceconfigurationconflictsummary.md).|
|[Update deviceConfigurationConflictSummary](../api/intune_deviceconfig_deviceconfigurationconflictsummary_update.md)|[deviceConfigurationConflictSummary](../resources/intune_deviceconfig_deviceconfigurationconflictsummary.md)|Update the properties of a [deviceConfigurationConflictSummary](../resources/intune_deviceconfig_deviceconfigurationconflictsummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|conflictingDeviceConfigurations|[settingSource](../resources/intune_deviceconfig_settingsource.md) collection|The set of policies in conflict with the given setting|
|id|String|The id for this set of conflicting policies. This id is the ids of all the policies in ConflictingDeviceConfigurations in lexicographical order separated by underscores.|
|contributingSettings|String collection|The set of settings in conflict with the given policies|
|deviceCheckinsImpacted|Int32|The count of checkins impacted by the conflicting policies and settings|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceConfigurationConflictSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceConfigurationConflictSummary",
  "conflictingDeviceConfigurations": [
    {
      "@odata.type": "microsoft.graph.settingSource",
      "id": "String",
      "displayName": "String"
    }
  ],
  "id": "String (identifier)",
  "contributingSettings": [
    "String"
  ],
  "deviceCheckinsImpacted": 1024
}
```






---
title: "deviceConfigurationConflictSummary resource type"
description: "Conflict summary for a set of device configuration policies."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceConfigurationConflictSummary resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Conflict summary for a set of device configuration policies.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceConfigurationConflictSummaries](../api/intune-deviceconfig-deviceconfigurationconflictsummary-list.md)|[deviceConfigurationConflictSummary](../resources/intune-deviceconfig-deviceconfigurationconflictsummary.md) collection|List properties and relationships of the [deviceConfigurationConflictSummary](../resources/intune-deviceconfig-deviceconfigurationconflictsummary.md) objects.|
|[Get deviceConfigurationConflictSummary](../api/intune-deviceconfig-deviceconfigurationconflictsummary-get.md)|[deviceConfigurationConflictSummary](../resources/intune-deviceconfig-deviceconfigurationconflictsummary.md)|Read properties and relationships of the [deviceConfigurationConflictSummary](../resources/intune-deviceconfig-deviceconfigurationconflictsummary.md) object.|
|[Create deviceConfigurationConflictSummary](../api/intune-deviceconfig-deviceconfigurationconflictsummary-create.md)|[deviceConfigurationConflictSummary](../resources/intune-deviceconfig-deviceconfigurationconflictsummary.md)|Create a new [deviceConfigurationConflictSummary](../resources/intune-deviceconfig-deviceconfigurationconflictsummary.md) object.|
|[Delete deviceConfigurationConflictSummary](../api/intune-deviceconfig-deviceconfigurationconflictsummary-delete.md)|None|Deletes a [deviceConfigurationConflictSummary](../resources/intune-deviceconfig-deviceconfigurationconflictsummary.md).|
|[Update deviceConfigurationConflictSummary](../api/intune-deviceconfig-deviceconfigurationconflictsummary-update.md)|[deviceConfigurationConflictSummary](../resources/intune-deviceconfig-deviceconfigurationconflictsummary.md)|Update the properties of a [deviceConfigurationConflictSummary](../resources/intune-deviceconfig-deviceconfigurationconflictsummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|conflictingDeviceConfigurations|[settingSource](../resources/intune-deviceconfig-settingsource.md) collection|The set of policies in conflict with the given setting|
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
      "displayName": "String",
      "sourceType": "String"
    }
  ],
  "id": "String (identifier)",
  "contributingSettings": [
    "String"
  ],
  "deviceCheckinsImpacted": 1024
}
```





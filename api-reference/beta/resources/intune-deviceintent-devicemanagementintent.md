---
title: "deviceManagementIntent resource type"
description: "Entity that represents an intent to apply settings to a device"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementIntent resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity that represents an intent to apply settings to a device

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementIntents](../api/intune-deviceintent-devicemanagementintent-list.md)|[deviceManagementIntent](../resources/intune-deviceintent-devicemanagementintent.md) collection|List properties and relationships of the [deviceManagementIntent](../resources/intune-deviceintent-devicemanagementintent.md) objects.|
|[Get deviceManagementIntent](../api/intune-deviceintent-devicemanagementintent-get.md)|[deviceManagementIntent](../resources/intune-deviceintent-devicemanagementintent.md)|Read properties and relationships of the [deviceManagementIntent](../resources/intune-deviceintent-devicemanagementintent.md) object.|
|[Create deviceManagementIntent](../api/intune-deviceintent-devicemanagementintent-create.md)|[deviceManagementIntent](../resources/intune-deviceintent-devicemanagementintent.md)|Create a new [deviceManagementIntent](../resources/intune-deviceintent-devicemanagementintent.md) object.|
|[Delete deviceManagementIntent](../api/intune-deviceintent-devicemanagementintent-delete.md)|None|Deletes a [deviceManagementIntent](../resources/intune-deviceintent-devicemanagementintent.md).|
|[Update deviceManagementIntent](../api/intune-deviceintent-devicemanagementintent-update.md)|[deviceManagementIntent](../resources/intune-deviceintent-devicemanagementintent.md)|Update the properties of a [deviceManagementIntent](../resources/intune-deviceintent-devicemanagementintent.md) object.|
|[updateSettings action](../api/intune-deviceintent-devicemanagementintent-updatesettings.md)|None|Not yet documented|
|[migrateToTemplate action](../api/intune-deviceintent-devicemanagementintent-migratetotemplate.md)|None|Not yet documented|
|[createCopy action](../api/intune-deviceintent-devicemanagementintent-createcopy.md)|[deviceManagementIntent](../resources/intune-deviceintent-devicemanagementintent.md)|Not yet documented|
|[assign action](../api/intune-deviceintent-devicemanagementintent-assign.md)|None|Not yet documented|
|[compare function](../api/intune-deviceintent-devicemanagementintent-compare.md)|[deviceManagementSettingComparison](../resources/intune-deviceintent-devicemanagementsettingcomparison.md) collection|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The intent ID|
|displayName|String|The user given display name|
|description|String|The user given description|
|isAssigned|Boolean|Signifies whether or not the intent is assigned to users|
|lastModifiedDateTime|DateTimeOffset|When the intent was last modified|
|templateId|String|The ID of the template this intent was created from (if any)|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|settings|[deviceManagementSettingInstance](../resources/intune-deviceintent-devicemanagementsettinginstance.md) collection|Collection of all settings to be applied|
|categories|[deviceManagementIntentSettingCategory](../resources/intune-deviceintent-devicemanagementintentsettingcategory.md) collection|Collection of setting categories within the intent|
|assignments|[deviceManagementIntentAssignment](../resources/intune-deviceintent-devicemanagementintentassignment.md) collection|Collection of assignments|
|deviceSettingStateSummaries|[deviceManagementIntentDeviceSettingStateSummary](../resources/intune-deviceintent-devicemanagementintentdevicesettingstatesummary.md) collection|Collection of settings and their states and counts of devices that belong to corresponding state for all settings within the intent|
|deviceStates|[deviceManagementIntentDeviceState](../resources/intune-deviceintent-devicemanagementintentdevicestate.md) collection|Collection of states of all devices that the intent is applied to|
|userStates|[deviceManagementIntentUserState](../resources/intune-deviceintent-devicemanagementintentuserstate.md) collection|Collection of states of all users that the intent is applied to|
|deviceStateSummary|[deviceManagementIntentDeviceStateSummary](../resources/intune-deviceintent-devicemanagementintentdevicestatesummary.md)|A summary of device states and counts of devices that belong to corresponding state for all devices that the intent is applied to|
|userStateSummary|[deviceManagementIntentUserStateSummary](../resources/intune-deviceintent-devicemanagementintentuserstatesummary.md)|A summary of user states and counts of users that belong to corresponding state for all users that the intent is applied to|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementIntent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementIntent",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "isAssigned": true,
  "lastModifiedDateTime": "String (timestamp)",
  "templateId": "String",
  "roleScopeTagIds": [
    "String"
  ]
}
```





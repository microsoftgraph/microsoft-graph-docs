---
title: "settingStateDeviceSummary resource type"
description: "Device Compilance Policy and Configuration for a Setting State summary"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# settingStateDeviceSummary resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Device Compilance Policy and Configuration for a Setting State summary

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List settingStateDeviceSummaries](../api/intune-deviceconfig-settingstatedevicesummary-list.md)|[settingStateDeviceSummary](../resources/intune-deviceconfig-settingstatedevicesummary.md) collection|List properties and relationships of the [settingStateDeviceSummary](../resources/intune-deviceconfig-settingstatedevicesummary.md) objects.|
|[Get settingStateDeviceSummary](../api/intune-deviceconfig-settingstatedevicesummary-get.md)|[settingStateDeviceSummary](../resources/intune-deviceconfig-settingstatedevicesummary.md)|Read properties and relationships of the [settingStateDeviceSummary](../resources/intune-deviceconfig-settingstatedevicesummary.md) object.|
|[Create settingStateDeviceSummary](../api/intune-deviceconfig-settingstatedevicesummary-create.md)|[settingStateDeviceSummary](../resources/intune-deviceconfig-settingstatedevicesummary.md)|Create a new [settingStateDeviceSummary](../resources/intune-deviceconfig-settingstatedevicesummary.md) object.|
|[Delete settingStateDeviceSummary](../api/intune-deviceconfig-settingstatedevicesummary-delete.md)|None|Deletes a [settingStateDeviceSummary](../resources/intune-deviceconfig-settingstatedevicesummary.md).|
|[Update settingStateDeviceSummary](../api/intune-deviceconfig-settingstatedevicesummary-update.md)|[settingStateDeviceSummary](../resources/intune-deviceconfig-settingstatedevicesummary.md)|Update the properties of a [settingStateDeviceSummary](../resources/intune-deviceconfig-settingstatedevicesummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|settingName|String|Name of the setting|
|instancePath|String|Name of the InstancePath for the setting|
|unknownDeviceCount|Int32|Device Unkown count for the setting|
|notApplicableDeviceCount|Int32|Device Not Applicable count for the setting|
|compliantDeviceCount|Int32|Device Compliant count for the setting|
|remediatedDeviceCount|Int32|Device Compliant count for the setting|
|nonCompliantDeviceCount|Int32|Device NonCompliant count for the setting|
|errorDeviceCount|Int32|Device error count for the setting|
|conflictDeviceCount|Int32|Device conflict error count for the setting|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.settingStateDeviceSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.settingStateDeviceSummary",
  "id": "String (identifier)",
  "settingName": "String",
  "instancePath": "String",
  "unknownDeviceCount": 1024,
  "notApplicableDeviceCount": 1024,
  "compliantDeviceCount": 1024,
  "remediatedDeviceCount": 1024,
  "nonCompliantDeviceCount": 1024,
  "errorDeviceCount": 1024,
  "conflictDeviceCount": 1024
}
```





---
title: "securityBaselineSettingState resource type"
description: "The security baseline compliance state of a setting for a device"
author: "tfitzmac"
localization_priority: Normal
ms.prod: "Intune"
---

# securityBaselineSettingState resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The security baseline compliance state of a setting for a device

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List securityBaselineSettingStates](../api/intune-deviceintent-securitybaselinesettingstate-list.md)|[securityBaselineSettingState](../resources/intune-deviceintent-securitybaselinesettingstate.md) collection|List properties and relationships of the [securityBaselineSettingState](../resources/intune-deviceintent-securitybaselinesettingstate.md) objects.|
|[Get securityBaselineSettingState](../api/intune-deviceintent-securitybaselinesettingstate-get.md)|[securityBaselineSettingState](../resources/intune-deviceintent-securitybaselinesettingstate.md)|Read properties and relationships of the [securityBaselineSettingState](../resources/intune-deviceintent-securitybaselinesettingstate.md) object.|
|[Create securityBaselineSettingState](../api/intune-deviceintent-securitybaselinesettingstate-create.md)|[securityBaselineSettingState](../resources/intune-deviceintent-securitybaselinesettingstate.md)|Create a new [securityBaselineSettingState](../resources/intune-deviceintent-securitybaselinesettingstate.md) object.|
|[Delete securityBaselineSettingState](../api/intune-deviceintent-securitybaselinesettingstate-delete.md)|None|Deletes a [securityBaselineSettingState](../resources/intune-deviceintent-securitybaselinesettingstate.md).|
|[Update securityBaselineSettingState](../api/intune-deviceintent-securitybaselinesettingstate-update.md)|[securityBaselineSettingState](../resources/intune-deviceintent-securitybaselinesettingstate.md)|Update the properties of a [securityBaselineSettingState](../resources/intune-deviceintent-securitybaselinesettingstate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier of the entity|
|settingName|String|The setting name that is being reported|
|state|[securityBaselineComplianceState](../resources/intune-deviceintent-securitybaselinecompliancestate.md)|The compliance state of the security baseline setting. Possible values are: `unknown`, `secure`, `notApplicable`, `notSecure`, `error`, `conflict`.|
|settingCategoryId|String|The setting category id which this setting belongs to|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.securityBaselineSettingState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.securityBaselineSettingState",
  "id": "String (identifier)",
  "settingName": "String",
  "state": "String",
  "settingCategoryId": "String"
}
```




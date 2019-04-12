---
title: "securityBaselineState resource type"
description: "Security baseline state for a device."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "Intune"
---

# securityBaselineState resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Security baseline state for a device.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List securityBaselineStates](../api/intune-deviceintent-securitybaselinestate-list.md)|[securityBaselineState](../resources/intune-deviceintent-securitybaselinestate.md) collection|List properties and relationships of the [securityBaselineState](../resources/intune-deviceintent-securitybaselinestate.md) objects.|
|[Get securityBaselineState](../api/intune-deviceintent-securitybaselinestate-get.md)|[securityBaselineState](../resources/intune-deviceintent-securitybaselinestate.md)|Read properties and relationships of the [securityBaselineState](../resources/intune-deviceintent-securitybaselinestate.md) object.|
|[Create securityBaselineState](../api/intune-deviceintent-securitybaselinestate-create.md)|[securityBaselineState](../resources/intune-deviceintent-securitybaselinestate.md)|Create a new [securityBaselineState](../resources/intune-deviceintent-securitybaselinestate.md) object.|
|[Delete securityBaselineState](../api/intune-deviceintent-securitybaselinestate-delete.md)|None|Deletes a [securityBaselineState](../resources/intune-deviceintent-securitybaselinestate.md).|
|[Update securityBaselineState](../api/intune-deviceintent-securitybaselinestate-update.md)|[securityBaselineState](../resources/intune-deviceintent-securitybaselinestate.md)|Update the properties of a [securityBaselineState](../resources/intune-deviceintent-securitybaselinestate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|securityBaselineTemplateId|String|The security baseline template id|
|displayName|String|The display name of the security baseline|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|settingStates|[securityBaselineSettingState](../resources/intune-deviceintent-securitybaselinesettingstate.md) collection|The security baseline state for different settings for a device|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.securityBaselineState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.securityBaselineState",
  "id": "String (identifier)",
  "securityBaselineTemplateId": "String",
  "displayName": "String"
}
```




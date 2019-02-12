---
title: "vppTokenActionResult resource type"
description: "The status of the action performed with an Apple Volume Purchase Program token."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# vppTokenActionResult resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The status of the action performed with an Apple Volume Purchase Program token.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionName|String|Action name|
|actionState|[actionState](../resources/intune-shared-actionstate.md)|State of the action. Possible values are: `none`, `pending`, `canceled`, `active`, `done`, `failed`, `notSupported`.|
|startDateTime|DateTimeOffset|Time the action was initiated|
|lastUpdatedDateTime|DateTimeOffset|Time the action state was last updated|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.vppTokenActionResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.vppTokenActionResult",
  "actionName": "String",
  "actionState": "String",
  "startDateTime": "String (timestamp)",
  "lastUpdatedDateTime": "String (timestamp)"
}
```





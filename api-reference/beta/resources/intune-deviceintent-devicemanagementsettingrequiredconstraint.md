---
title: "deviceManagementSettingRequiredConstraint resource type"
description: "Constraint that enforces a particular required setting that is not null/undefined/empty string/not configured"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementSettingRequiredConstraint resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Constraint that enforces a particular required setting that is not null/undefined/empty string/not configured


Inherits from [deviceManagementConstraint](../resources/intune-deviceintent-devicemanagementconstraint.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|notConfiguredValue|String|List of value which means not configured for the setting|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementSettingRequiredConstraint"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementSettingRequiredConstraint",
  "notConfiguredValue": "String"
}
```





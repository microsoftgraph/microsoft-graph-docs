---
title: "deviceManagementSettingBooleanConstraint resource type"
description: "Constraint the enforces a particular boolean value"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementSettingBooleanConstraint resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Constraint the enforces a particular boolean value


Inherits from [deviceManagementConstraint](../resources/intune-deviceintent-devicemanagementconstraint.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|value|Boolean|The boolean value to compare against|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementSettingBooleanConstraint"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementSettingBooleanConstraint",
  "value": true
}
```





---
title: "deviceManagementSettingDependency resource type"
description: "Dependency information for a setting"
author: "davidmu1"
localization_priority: Normal
ms.prod: "Intune"
doc_type: resourcePageType
---

# deviceManagementSettingDependency resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Dependency information for a setting

## Properties
|Property|Type|Description|
|:---|:---|:---|
|definitionId|String|The setting definition ID of the setting depended on|
|constraints|[deviceManagementConstraint](../resources/intune-deviceintent-devicemanagementconstraint.md) collection|Collection of constraints for the dependency setting value|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementSettingDependency"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementSettingDependency",
  "definitionId": "String",
  "constraints": [
    {
      "@odata.type": "microsoft.graph.deviceManagementSettingAppConstraint",
      "supportedTypes": [
        "String"
      ]
    }
  ]
}
```




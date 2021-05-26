---
title: "deviceManagementConfigurationChoiceSettingValueConstantDefaultTemplate resource type"
description: "Choice Setting Value Constant Default Template"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementConfigurationChoiceSettingValueConstantDefaultTemplate resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Choice Setting Value Constant Default Template


Inherits from [deviceManagementConfigurationChoiceSettingValueDefaultTemplate](../resources/intune-deviceconfigv2-devicemanagementconfigurationchoicesettingvaluedefaulttemplate.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|settingDefinitionOptionId|String|Default Constant Value|
|children|[deviceManagementConfigurationSettingInstanceTemplate](../resources/intune-deviceconfigv2-devicemanagementconfigurationsettinginstancetemplate.md) collection|Option Children|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValueConstantDefaultTemplate"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingValueConstantDefaultTemplate",
  "settingDefinitionOptionId": "String",
  "children": [
    {
      "@odata.type": "microsoft.graph.deviceManagementConfigurationSimpleSettingInstanceTemplate",
      "settingInstanceTemplateId": "String",
      "settingDefinitionId": "String",
      "isRequired": true,
      "simpleSettingValueTemplate": {
        "@odata.type": "microsoft.graph.deviceManagementConfigurationStringSettingValueTemplate",
        "settingValueTemplateId": "String",
        "defaultValue": {
          "@odata.type": "microsoft.graph.deviceManagementConfigurationStringSettingValueConstantDefaultTemplate",
          "constantValue": "String"
        }
      }
    }
  ]
}
```





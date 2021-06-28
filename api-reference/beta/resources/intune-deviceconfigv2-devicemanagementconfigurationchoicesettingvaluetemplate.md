---
title: "deviceManagementConfigurationChoiceSettingValueTemplate resource type"
description: "Choice Setting Value Template"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementConfigurationChoiceSettingValueTemplate resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Choice Setting Value Template

## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultValue|[deviceManagementConfigurationChoiceSettingValueDefaultTemplate](../resources/intune-deviceconfigv2-devicemanagementconfigurationchoicesettingvaluedefaulttemplate.md)|Choice Setting Value Default Template.|
|recommendedValueDefinition|[deviceManagementConfigurationChoiceSettingValueDefinitionTemplate](../resources/intune-deviceconfigv2-devicemanagementconfigurationchoicesettingvaluedefinitiontemplate.md)|Recommended definition override.|
|requiredValueDefinition|[deviceManagementConfigurationChoiceSettingValueDefinitionTemplate](../resources/intune-deviceconfigv2-devicemanagementconfigurationchoicesettingvaluedefinitiontemplate.md)|Required definition override.|
|settingValueTemplateId|String|Setting Value Template Id|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValueTemplate"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingValueTemplate",
  "defaultValue": {
    "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValueConstantDefaultTemplate",
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
  },
  "recommendedValueDefinition": {
    "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValueDefinitionTemplate",
    "allowedOptions": [
      {
        "@odata.type": "microsoft.graph.deviceManagementConfigurationOptionDefinitionTemplate",
        "itemId": "String",
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
    ]
  },
  "requiredValueDefinition": {
    "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValueDefinitionTemplate",
    "allowedOptions": [
      {
        "@odata.type": "microsoft.graph.deviceManagementConfigurationOptionDefinitionTemplate",
        "itemId": "String",
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
    ]
  },
  "settingValueTemplateId": "String"
}
```





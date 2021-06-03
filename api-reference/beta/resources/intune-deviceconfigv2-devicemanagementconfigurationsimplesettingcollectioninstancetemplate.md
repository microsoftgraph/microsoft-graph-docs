---
title: "deviceManagementConfigurationSimpleSettingCollectionInstanceTemplate resource type"
description: "Simple Setting Collection Instance Template"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementConfigurationSimpleSettingCollectionInstanceTemplate resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Simple Setting Collection Instance Template


Inherits from [deviceManagementConfigurationSettingInstanceTemplate](../resources/intune-deviceconfigv2-devicemanagementconfigurationsettinginstancetemplate.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|settingInstanceTemplateId|String|Setting Instance Template Id Inherited from [deviceManagementConfigurationSettingInstanceTemplate](../resources/intune-deviceconfigv2-devicemanagementconfigurationsettinginstancetemplate.md)|
|settingDefinitionId|String|Setting Definition Id Inherited from [deviceManagementConfigurationSettingInstanceTemplate](../resources/intune-deviceconfigv2-devicemanagementconfigurationsettinginstancetemplate.md)|
|isRequired|Boolean|Indicates if a policy must specify this setting. Inherited from [deviceManagementConfigurationSettingInstanceTemplate](../resources/intune-deviceconfigv2-devicemanagementconfigurationsettinginstancetemplate.md)|
|simpleSettingCollectionValueTemplate|[deviceManagementConfigurationSimpleSettingValueTemplate](../resources/intune-deviceconfigv2-devicemanagementconfigurationsimplesettingvaluetemplate.md) collection|Simple Setting Collection Value Template|
|allowUnmanagedValues|Boolean|Linked policy may append values which are not present in the template.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstanceTemplate"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstanceTemplate",
  "settingInstanceTemplateId": "String",
  "settingDefinitionId": "String",
  "isRequired": true,
  "simpleSettingCollectionValueTemplate": [
    {
      "@odata.type": "microsoft.graph.deviceManagementConfigurationStringSettingValueTemplate",
      "settingValueTemplateId": "String",
      "defaultValue": {
        "@odata.type": "microsoft.graph.deviceManagementConfigurationStringSettingValueConstantDefaultTemplate",
        "constantValue": "String"
      }
    }
  ],
  "allowUnmanagedValues": true
}
```





---
title: "deviceManagementConfigurationStringSettingValueTemplate resource type"
description: "String Setting Value Template"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementConfigurationStringSettingValueTemplate resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

String Setting Value Template


Inherits from [deviceManagementConfigurationSimpleSettingValueTemplate](../resources/intune-deviceconfigv2-devicemanagementconfigurationsimplesettingvaluetemplate.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|settingValueTemplateId|String|Setting Value Template Id Inherited from [deviceManagementConfigurationSimpleSettingValueTemplate](../resources/intune-deviceconfigv2-devicemanagementconfigurationsimplesettingvaluetemplate.md)|
|defaultValue|[deviceManagementConfigurationStringSettingValueDefaultTemplate](../resources/intune-deviceconfigv2-devicemanagementconfigurationstringsettingvaluedefaulttemplate.md)|String Setting Value Default Template.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementConfigurationStringSettingValueTemplate"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValueTemplate",
  "settingValueTemplateId": "String",
  "defaultValue": {
    "@odata.type": "microsoft.graph.deviceManagementConfigurationStringSettingValueConstantDefaultTemplate",
    "constantValue": "String"
  }
}
```





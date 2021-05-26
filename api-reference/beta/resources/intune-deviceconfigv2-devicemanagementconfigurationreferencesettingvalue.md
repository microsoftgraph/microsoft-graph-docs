---
title: "deviceManagementConfigurationReferenceSettingValue resource type"
description: "Model for ReferenceSettingValue"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementConfigurationReferenceSettingValue resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Model for ReferenceSettingValue


Inherits from [deviceManagementConfigurationStringSettingValue](../resources/intune-deviceconfigv2-devicemanagementconfigurationstringsettingvalue.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|settingValueTemplateReference|[deviceManagementConfigurationSettingValueTemplateReference](../resources/intune-deviceconfigv2-devicemanagementconfigurationsettingvaluetemplatereference.md)|Setting value template reference Inherited from [deviceManagementConfigurationSettingValue](../resources/intune-deviceconfigv2-devicemanagementconfigurationsettingvalue.md)|
|value|String|Value of the string setting. Inherited from [deviceManagementConfigurationStringSettingValue](../resources/intune-deviceconfigv2-devicemanagementconfigurationstringsettingvalue.md)|
|note|String|A note that admin can use to put some contextual information|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementConfigurationReferenceSettingValue"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationReferenceSettingValue",
  "settingValueTemplateReference": {
    "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
    "settingValueTemplateId": "String",
    "useTemplateDefault": true
  },
  "value": "String",
  "note": "String"
}
```





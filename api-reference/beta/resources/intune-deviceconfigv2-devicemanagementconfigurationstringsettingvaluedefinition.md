---
title: "deviceManagementConfigurationStringSettingValueDefinition resource type"
description: "String constraints"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementConfigurationStringSettingValueDefinition resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

String constraints


Inherits from [deviceManagementConfigurationSettingValueDefinition](../resources/intune-deviceconfigv2-devicemanagementconfigurationsettingvaluedefinition.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|format|[deviceManagementConfigurationStringFormat](../resources/intune-deviceconfigv2-devicemanagementconfigurationstringformat.md)|Pre-defined format of the string. Possible values are: `none`, `email`, `guid`, `ip`, `base64`, `url`, `version`, `xml`, `date`, `time`, `binary`, `regEx`, `json`, `dateTime`, `surfaceHub`.|
|inputValidationSchema|String|Regular expression or any xml or json schema that the input string should match|
|maximumLength|Int64|Maximum length of string. Valid values 0 to 87516|
|minimumLength|Int64|Minimum length of string. Valid values 0 to 87516|
|isSecret|Boolean|Specifies whether the setting needs to be treated as a secret. Settings marked as yes will be encrypted in transit and at rest and will be displayed as asterisks when represented in the UX.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementConfigurationStringSettingValueDefinition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValueDefinition",
  "format": "String",
  "inputValidationSchema": "String",
  "maximumLength": 1024,
  "minimumLength": 1024,
  "isSecret": true
}
```





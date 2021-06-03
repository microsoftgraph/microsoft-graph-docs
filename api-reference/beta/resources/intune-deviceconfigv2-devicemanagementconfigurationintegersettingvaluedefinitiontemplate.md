---
title: "deviceManagementConfigurationIntegerSettingValueDefinitionTemplate resource type"
description: "Integer Setting Value Definition Template"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementConfigurationIntegerSettingValueDefinitionTemplate resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Integer Setting Value Definition Template

## Properties
|Property|Type|Description|
|:---|:---|:---|
|minValue|Int32|Integer Setting Minimum Value. Valid values -2147483648 to 2147483647|
|maxValue|Int32|Integer Setting Maximum Value. Valid values -2147483648 to 2147483647|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementConfigurationIntegerSettingValueDefinitionTemplate"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationIntegerSettingValueDefinitionTemplate",
  "minValue": 1024,
  "maxValue": 1024
}
```





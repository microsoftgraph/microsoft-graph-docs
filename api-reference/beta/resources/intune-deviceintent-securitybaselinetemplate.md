---
title: "securityBaselineTemplate resource type"
description: "The security baseline template of the account"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# securityBaselineTemplate resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The security baseline template of the account


Inherits from [deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List securityBaselineTemplates](../api/intune-deviceintent-securitybaselinetemplate-list.md)|[securityBaselineTemplate](../resources/intune-deviceintent-securitybaselinetemplate.md) collection|List properties and relationships of the [securityBaselineTemplate](../resources/intune-deviceintent-securitybaselinetemplate.md) objects.|
|[Get securityBaselineTemplate](../api/intune-deviceintent-securitybaselinetemplate-get.md)|[securityBaselineTemplate](../resources/intune-deviceintent-securitybaselinetemplate.md)|Read properties and relationships of the [securityBaselineTemplate](../resources/intune-deviceintent-securitybaselinetemplate.md) object.|
|[Create securityBaselineTemplate](../api/intune-deviceintent-securitybaselinetemplate-create.md)|[securityBaselineTemplate](../resources/intune-deviceintent-securitybaselinetemplate.md)|Create a new [securityBaselineTemplate](../resources/intune-deviceintent-securitybaselinetemplate.md) object.|
|[Delete securityBaselineTemplate](../api/intune-deviceintent-securitybaselinetemplate-delete.md)|None|Deletes a [securityBaselineTemplate](../resources/intune-deviceintent-securitybaselinetemplate.md).|
|[Update securityBaselineTemplate](../api/intune-deviceintent-securitybaselinetemplate-update.md)|[securityBaselineTemplate](../resources/intune-deviceintent-securitybaselinetemplate.md)|Update the properties of a [securityBaselineTemplate](../resources/intune-deviceintent-securitybaselinetemplate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The template ID Inherited from [deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md)|
|displayName|String|The template's display name Inherited from [deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md)|
|description|String|The template's description Inherited from [deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md)|
|versionInfo|String|The template's version information Inherited from [deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md)|
|isDeprecated|Boolean|The template is deprecated or not. Intents cannot be created from a deprecated template. Inherited from [deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md)|
|intentCount|Int32|Number of Intents created from this template. Inherited from [deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md)|
|templateType|[deviceManagementTemplateType](../resources/intune-deviceintent-devicemanagementtemplatetype.md)|The template's type. Inherited from [deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md). Possible values are: `securityBaseline`, `specializedDevices`, `advancedThreatProtectionSecurityBaseline`, `deviceConfiguration`, `custom`, `securityTemplate`, `microsoftEdgeSecurityBaseline`, `microsoftOffice365ProPlusSecurityBaseline`, `deviceCompliance`, `deviceConfigurationForOffice365`, `cloudPC`, `firewallSharedSettings`.|
|platformType|[policyPlatformType](../resources/intune-shared-policyplatformtype.md)|The template's platform. Inherited from [deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md). Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`, `androidWorkProfile`, `windows10XProfile`, `all`.|
|templateSubtype|[deviceManagementTemplateSubtype](../resources/intune-deviceintent-devicemanagementtemplatesubtype.md)|The template's subtype. Inherited from [deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md). Possible values are: `none`, `firewall`, `diskEncryption`, `attackSurfaceReduction`, `endpointDetectionReponse`, `accountProtection`, `antivirus`, `firewallSharedAppList`, `firewallSharedIpList`, `firewallSharedPortlist`.|
|publishedDateTime|DateTimeOffset|When the template was published Inherited from [deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|settings|[deviceManagementSettingInstance](../resources/intune-deviceintent-devicemanagementsettinginstance.md) collection|Collection of all settings this template has Inherited from [deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md)|
|categories|[deviceManagementTemplateSettingCategory](../resources/intune-deviceintent-devicemanagementtemplatesettingcategory.md) collection|Collection of setting categories within the template Inherited from [deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md)|
|migratableTo|[deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md) collection|Collection of templates this template can migrate to Inherited from [deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md)|
|deviceStateSummary|[securityBaselineStateSummary](../resources/intune-deviceintent-securitybaselinestatesummary.md)|The security baseline device state summary|
|deviceStates|[securityBaselineDeviceState](../resources/intune-deviceintent-securitybaselinedevicestate.md) collection|The security baseline device states|
|categoryDeviceStateSummaries|[securityBaselineCategoryStateSummary](../resources/intune-deviceintent-securitybaselinecategorystatesummary.md) collection|The security baseline per category device state summary|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.securityBaselineTemplate"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.securityBaselineTemplate",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "versionInfo": "String",
  "isDeprecated": true,
  "intentCount": 1024,
  "templateType": "String",
  "platformType": "String",
  "templateSubtype": "String",
  "publishedDateTime": "String (timestamp)"
}
```





---
title: "deviceManagementTemplate resource type"
description: "Entity that represents a defined collection of device settings"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementTemplate resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity that represents a defined collection of device settings

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementTemplates](../api/intune-deviceintent-devicemanagementtemplate-list.md)|[deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md) collection|List properties and relationships of the [deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md) objects.|
|[Get deviceManagementTemplate](../api/intune-deviceintent-devicemanagementtemplate-get.md)|[deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md)|Read properties and relationships of the [deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md) object.|
|[Create deviceManagementTemplate](../api/intune-deviceintent-devicemanagementtemplate-create.md)|[deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md)|Create a new [deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md) object.|
|[Delete deviceManagementTemplate](../api/intune-deviceintent-devicemanagementtemplate-delete.md)|None|Deletes a [deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md).|
|[Update deviceManagementTemplate](../api/intune-deviceintent-devicemanagementtemplate-update.md)|[deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md)|Update the properties of a [deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md) object.|
|[createInstance action](../api/intune-deviceintent-devicemanagementtemplate-createinstance.md)|[deviceManagementIntent](../resources/intune-deviceintent-devicemanagementintent.md)|Not yet documented|
|[compare function](../api/intune-deviceintent-devicemanagementtemplate-compare.md)|[deviceManagementSettingComparison](../resources/intune-deviceintent-devicemanagementsettingcomparison.md) collection|Not yet documented|
|[importOffice365DeviceConfigurationPolicies action](../api/intune-deviceintent-devicemanagementtemplate-importoffice365deviceconfigurationpolicies.md)|[deviceManagementIntent](../resources/intune-deviceintent-devicemanagementintent.md) collection|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The template ID|
|displayName|String|The template's display name|
|description|String|The template's description|
|versionInfo|String|The template's version information|
|isDeprecated|Boolean|The template is deprecated or not. Intents cannot be created from a deprecated template.|
|intentCount|Int32|Number of Intents created from this template.|
|templateType|[deviceManagementTemplateType](../resources/intune-deviceintent-devicemanagementtemplatetype.md)|The template's type. Possible values are: `securityBaseline`, `specializedDevices`, `advancedThreatProtectionSecurityBaseline`, `deviceConfiguration`, `custom`, `securityTemplate`, `microsoftEdgeSecurityBaseline`, `microsoftOffice365ProPlusSecurityBaseline`, `deviceCompliance`, `deviceConfigurationForOffice365`, `cloudPC`, `firewallSharedSettings`.|
|platformType|[policyPlatformType](../resources/intune-shared-policyplatformtype.md)|The template's platform. Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`, `androidWorkProfile`, `windows10XProfile`, `all`.|
|templateSubtype|[deviceManagementTemplateSubtype](../resources/intune-deviceintent-devicemanagementtemplatesubtype.md)|The template's subtype. Possible values are: `none`, `firewall`, `diskEncryption`, `attackSurfaceReduction`, `endpointDetectionReponse`, `accountProtection`, `antivirus`, `firewallSharedAppList`, `firewallSharedIpList`, `firewallSharedPortlist`.|
|publishedDateTime|DateTimeOffset|When the template was published|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|settings|[deviceManagementSettingInstance](../resources/intune-deviceintent-devicemanagementsettinginstance.md) collection|Collection of all settings this template has|
|categories|[deviceManagementTemplateSettingCategory](../resources/intune-deviceintent-devicemanagementtemplatesettingcategory.md) collection|Collection of setting categories within the template|
|migratableTo|[deviceManagementTemplate](../resources/intune-deviceintent-devicemanagementtemplate.md) collection|Collection of templates this template can migrate to|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementTemplate"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementTemplate",
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





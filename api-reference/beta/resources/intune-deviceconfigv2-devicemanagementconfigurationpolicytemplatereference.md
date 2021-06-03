---
title: "deviceManagementConfigurationPolicyTemplateReference resource type"
description: "Policy template reference information"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementConfigurationPolicyTemplateReference resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Policy template reference information

## Properties
|Property|Type|Description|
|:---|:---|:---|
|templateId|String|Template id|
|templateFamily|[deviceManagementConfigurationTemplateFamily](../resources/intune-deviceconfigv2-devicemanagementconfigurationtemplatefamily.md)|Template Family of the referenced Template. This property is read-only. Possible values are: `none`, `endpointSecurityAntivirus`, `endpointSecurityDiskEncryption`, `endpointSecurityFirewall`, `endpointSecurityEndpointDetectionAndResponse`, `endpointSecurityAttackSurfaceReduction`, `endpointSecurityAccountProtection`, `endpointSecurityApplicationControl`.|
|templateDisplayName|String|Template Display Name of the referenced template. This property is read-only.|
|templateDisplayVersion|String|Template Display Version of the referenced Template. This property is read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementConfigurationPolicyTemplateReference"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationPolicyTemplateReference",
  "templateId": "String",
  "templateFamily": "String",
  "templateDisplayName": "String",
  "templateDisplayVersion": "String"
}
```





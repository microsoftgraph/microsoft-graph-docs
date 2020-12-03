---
title: "securityConfigurationTask resource type"
description: "A security configuration task."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# securityConfigurationTask resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A security configuration task.


Inherits from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List securityConfigurationTasks](../api/intune-partnerintegration-securityconfigurationtask-list.md)|[securityConfigurationTask](../resources/intune-partnerintegration-securityconfigurationtask.md) collection|List properties and relationships of the [securityConfigurationTask](../resources/intune-partnerintegration-securityconfigurationtask.md) objects.|
|[Get securityConfigurationTask](../api/intune-partnerintegration-securityconfigurationtask-get.md)|[securityConfigurationTask](../resources/intune-partnerintegration-securityconfigurationtask.md)|Read properties and relationships of the [securityConfigurationTask](../resources/intune-partnerintegration-securityconfigurationtask.md) object.|
|[Create securityConfigurationTask](../api/intune-partnerintegration-securityconfigurationtask-create.md)|[securityConfigurationTask](../resources/intune-partnerintegration-securityconfigurationtask.md)|Create a new [securityConfigurationTask](../resources/intune-partnerintegration-securityconfigurationtask.md) object.|
|[Delete securityConfigurationTask](../api/intune-partnerintegration-securityconfigurationtask-delete.md)|None|Deletes a [securityConfigurationTask](../resources/intune-partnerintegration-securityconfigurationtask.md).|
|[Update securityConfigurationTask](../api/intune-partnerintegration-securityconfigurationtask-update.md)|[securityConfigurationTask](../resources/intune-partnerintegration-securityconfigurationtask.md)|Update the properties of a [securityConfigurationTask](../resources/intune-partnerintegration-securityconfigurationtask.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The entity key. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|
|displayName|String|The name. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|
|description|String|The description. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|
|createdDateTime|DateTimeOffset|The created date. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|
|dueDateTime|DateTimeOffset|The due date. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|
|category|[deviceAppManagementTaskCategory](../resources/intune-partnerintegration-deviceappmanagementtaskcategory.md)|The category. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md). Possible values are: `unknown`, `advancedThreatProtection`.|
|priority|[deviceAppManagementTaskPriority](../resources/intune-partnerintegration-deviceappmanagementtaskpriority.md)|The priority. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md). Possible values are: `none`, `high`, `low`.|
|creator|String|The email address of the creator. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|
|creatorNotes|String|Notes from the creator. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|
|assignedTo|String|The name or email of the admin this task is assigned to. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|
|status|[deviceAppManagementTaskStatus](../resources/intune-partnerintegration-deviceappmanagementtaskstatus.md)|The status. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md). Possible values are: `unknown`, `pending`, `active`, `completed`, `rejected`.|
|endpointSecurityPolicy|[endpointSecurityConfigurationType](../resources/intune-partnerintegration-endpointsecurityconfigurationtype.md)|The endpoint security policy type. Possible values are: `unknown`, `antivirus`, `diskEncryption`, `firewall`, `endpointDetectionAndResponse`, `attackSurfaceReduction`, `accountProtection`.|
|applicablePlatform|[endpointSecurityConfigurationApplicablePlatform](../resources/intune-partnerintegration-endpointsecurityconfigurationapplicableplatform.md)|The applicable platform. Possible values are: `unknown`, `macOS`, `windows10AndLater`, `windows10AndWindowsServer`.|
|endpointSecurityPolicyProfile|[endpointSecurityConfigurationProfileType](../resources/intune-partnerintegration-endpointsecurityconfigurationprofiletype.md)|The endpoint security policy profile. Possible values are: `unknown`, `antivirus`, `windowsSecurity`, `bitLocker`, `fileVault`, `firewall`, `firewallRules`, `endpointDetectionAndResponse`, `deviceControl`, `appAndBrowserIsolation`, `exploitProtection`, `webProtection`, `applicationControl`, `attackSurfaceReductionRules`, `accountProtection`.|
|insights|String|Information about the mitigation.|
|managedDeviceCount|Int32|The number of vulnerable devices.|
|intendedSettings|[keyValuePair](../resources/intune-shared-keyvaluepair.md) collection|The intended settings and their values.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|managedDevices|[vulnerableManagedDevice](../resources/intune-partnerintegration-vulnerablemanageddevice.md) collection|The vulnerable managed devices.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.securityConfigurationTask"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.securityConfigurationTask",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "dueDateTime": "String (timestamp)",
  "category": "String",
  "priority": "String",
  "creator": "String",
  "creatorNotes": "String",
  "assignedTo": "String",
  "status": "String",
  "endpointSecurityPolicy": "String",
  "applicablePlatform": "String",
  "endpointSecurityPolicyProfile": "String",
  "insights": "String",
  "managedDeviceCount": 1024,
  "intendedSettings": [
    {
      "@odata.type": "microsoft.graph.keyValuePair",
      "name": "String",
      "value": "String"
    }
  ]
}
```





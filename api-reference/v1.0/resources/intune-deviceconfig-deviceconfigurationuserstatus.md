---
title: "deviceConfigurationUserStatus resource type"
description: "Not yet documented"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceConfigurationUserStatus resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceConfigurationUserStatuses](../api/intune-deviceconfig-deviceconfigurationuserstatus-list.md)|[deviceConfigurationUserStatus](../resources/intune-deviceconfig-deviceconfigurationuserstatus.md) collection|List properties and relationships of the [deviceConfigurationUserStatus](../resources/intune-deviceconfig-deviceconfigurationuserstatus.md) objects.|
|[Get deviceConfigurationUserStatus](../api/intune-deviceconfig-deviceconfigurationuserstatus-get.md)|[deviceConfigurationUserStatus](../resources/intune-deviceconfig-deviceconfigurationuserstatus.md)|Read properties and relationships of the [deviceConfigurationUserStatus](../resources/intune-deviceconfig-deviceconfigurationuserstatus.md) object.|
|[Create deviceConfigurationUserStatus](../api/intune-deviceconfig-deviceconfigurationuserstatus-create.md)|[deviceConfigurationUserStatus](../resources/intune-deviceconfig-deviceconfigurationuserstatus.md)|Create a new [deviceConfigurationUserStatus](../resources/intune-deviceconfig-deviceconfigurationuserstatus.md) object.|
|[Delete deviceConfigurationUserStatus](../api/intune-deviceconfig-deviceconfigurationuserstatus-delete.md)|None|Deletes a [deviceConfigurationUserStatus](../resources/intune-deviceconfig-deviceconfigurationuserstatus.md).|
|[Update deviceConfigurationUserStatus](../api/intune-deviceconfig-deviceconfigurationuserstatus-update.md)|[deviceConfigurationUserStatus](../resources/intune-deviceconfig-deviceconfigurationuserstatus.md)|Update the properties of a [deviceConfigurationUserStatus](../resources/intune-deviceconfig-deviceconfigurationuserstatus.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|userDisplayName|String|User name of the DevicePolicyStatus.|
|devicesCount|Int32|Devices count for that user.|
|status|[complianceStatus](../resources/intune-shared-compliancestatus.md)|Compliance status of the policy report. Possible values are: `unknown`, `notApplicable`, `compliant`, `remediated`, `nonCompliant`, `error`, `conflict`, `notAssigned`.|
|lastReportedDateTime|DateTimeOffset|Last modified date time of the policy report.|
|userPrincipalName|String|UserPrincipalName.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceConfigurationUserStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceConfigurationUserStatus",
  "id": "String (identifier)",
  "userDisplayName": "String",
  "devicesCount": 1024,
  "status": "String",
  "lastReportedDateTime": "String (timestamp)",
  "userPrincipalName": "String"
}
```





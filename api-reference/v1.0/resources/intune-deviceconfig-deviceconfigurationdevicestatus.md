---
title: "deviceConfigurationDeviceStatus resource type"
description: "Not yet documented"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceConfigurationDeviceStatus resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceConfigurationDeviceStatuses](../api/intune-deviceconfig-deviceconfigurationdevicestatus-list.md)|[deviceConfigurationDeviceStatus](../resources/intune-deviceconfig-deviceconfigurationdevicestatus.md) collection|List properties and relationships of the [deviceConfigurationDeviceStatus](../resources/intune-deviceconfig-deviceconfigurationdevicestatus.md) objects.|
|[Get deviceConfigurationDeviceStatus](../api/intune-deviceconfig-deviceconfigurationdevicestatus-get.md)|[deviceConfigurationDeviceStatus](../resources/intune-deviceconfig-deviceconfigurationdevicestatus.md)|Read properties and relationships of the [deviceConfigurationDeviceStatus](../resources/intune-deviceconfig-deviceconfigurationdevicestatus.md) object.|
|[Create deviceConfigurationDeviceStatus](../api/intune-deviceconfig-deviceconfigurationdevicestatus-create.md)|[deviceConfigurationDeviceStatus](../resources/intune-deviceconfig-deviceconfigurationdevicestatus.md)|Create a new [deviceConfigurationDeviceStatus](../resources/intune-deviceconfig-deviceconfigurationdevicestatus.md) object.|
|[Delete deviceConfigurationDeviceStatus](../api/intune-deviceconfig-deviceconfigurationdevicestatus-delete.md)|None|Deletes a [deviceConfigurationDeviceStatus](../resources/intune-deviceconfig-deviceconfigurationdevicestatus.md).|
|[Update deviceConfigurationDeviceStatus](../api/intune-deviceconfig-deviceconfigurationdevicestatus-update.md)|[deviceConfigurationDeviceStatus](../resources/intune-deviceconfig-deviceconfigurationdevicestatus.md)|Update the properties of a [deviceConfigurationDeviceStatus](../resources/intune-deviceconfig-deviceconfigurationdevicestatus.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|deviceDisplayName|String|Device name of the DevicePolicyStatus.|
|userName|String|The User Name that is being reported|
|deviceModel|String|The device model that is being reported|
|complianceGracePeriodExpirationDateTime|DateTimeOffset|The DateTime when device compliance grace period expires|
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
  "@odata.type": "microsoft.graph.deviceConfigurationDeviceStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceConfigurationDeviceStatus",
  "id": "String (identifier)",
  "deviceDisplayName": "String",
  "userName": "String",
  "deviceModel": "String",
  "complianceGracePeriodExpirationDateTime": "String (timestamp)",
  "status": "String",
  "lastReportedDateTime": "String (timestamp)",
  "userPrincipalName": "String"
}
```





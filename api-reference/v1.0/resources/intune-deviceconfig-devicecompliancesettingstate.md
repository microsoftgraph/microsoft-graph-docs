---
title: "deviceComplianceSettingState resource type"
description: "Device compliance setting State for a given device."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceComplianceSettingState resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Device compliance setting State for a given device.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceComplianceSettingStates](../api/intune-deviceconfig-devicecompliancesettingstate-list.md)|[deviceComplianceSettingState](../resources/intune-deviceconfig-devicecompliancesettingstate.md) collection|List properties and relationships of the [deviceComplianceSettingState](../resources/intune-deviceconfig-devicecompliancesettingstate.md) objects.|
|[Get deviceComplianceSettingState](../api/intune-deviceconfig-devicecompliancesettingstate-get.md)|[deviceComplianceSettingState](../resources/intune-deviceconfig-devicecompliancesettingstate.md)|Read properties and relationships of the [deviceComplianceSettingState](../resources/intune-deviceconfig-devicecompliancesettingstate.md) object.|
|[Create deviceComplianceSettingState](../api/intune-deviceconfig-devicecompliancesettingstate-create.md)|[deviceComplianceSettingState](../resources/intune-deviceconfig-devicecompliancesettingstate.md)|Create a new [deviceComplianceSettingState](../resources/intune-deviceconfig-devicecompliancesettingstate.md) object.|
|[Delete deviceComplianceSettingState](../api/intune-deviceconfig-devicecompliancesettingstate-delete.md)|None|Deletes a [deviceComplianceSettingState](../resources/intune-deviceconfig-devicecompliancesettingstate.md).|
|[Update deviceComplianceSettingState](../api/intune-deviceconfig-devicecompliancesettingstate-update.md)|[deviceComplianceSettingState](../resources/intune-deviceconfig-devicecompliancesettingstate.md)|Update the properties of a [deviceComplianceSettingState](../resources/intune-deviceconfig-devicecompliancesettingstate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity|
|setting|String|The setting class name and property name.|
|settingName|String|The Setting Name that is being reported|
|deviceId|String|The Device Id that is being reported|
|deviceName|String|The Device Name that is being reported|
|userId|String|The user Id that is being reported|
|userEmail|String|The User email address that is being reported|
|userName|String|The User Name that is being reported|
|userPrincipalName|String|The User PrincipalName that is being reported|
|deviceModel|String|The device model that is being reported|
|state|[complianceStatus](../resources/intune-shared-compliancestatus.md)|The compliance state of the setting. Possible values are: `unknown`, `notApplicable`, `compliant`, `remediated`, `nonCompliant`, `error`, `conflict`, `notAssigned`.|
|complianceGracePeriodExpirationDateTime|DateTimeOffset|The DateTime when device compliance grace period expires|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceComplianceSettingState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceComplianceSettingState",
  "id": "String (identifier)",
  "setting": "String",
  "settingName": "String",
  "deviceId": "String",
  "deviceName": "String",
  "userId": "String",
  "userEmail": "String",
  "userName": "String",
  "userPrincipalName": "String",
  "deviceModel": "String",
  "state": "String",
  "complianceGracePeriodExpirationDateTime": "String (timestamp)"
}
```





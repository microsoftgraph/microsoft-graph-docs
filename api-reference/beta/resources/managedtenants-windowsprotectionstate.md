---
title: "windowsProtectionState resource type"
description: "Represent the Windows protection state for managed devices running Windows."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# windowsProtectionState resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represent the Windows protection state for managed devices running Windows.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List windowsProtectionStates](../api/managedtenants-managedtenant-list-windowsprotectionstates.md)|[microsoft.graph.managedTenants.windowsProtectionState](../resources/managedtenants-windowsprotectionstate.md) collection|Get a list of the [windowsProtectionState](../resources/managedtenants-windowsprotectionstate.md) objects and their properties.|
|[Get windowsProtectionState](../api/managedtenants-windowsprotectionstate-get.md)|[microsoft.graph.managedTenants.windowsProtectionState](../resources/managedtenants-windowsprotectionstate.md)|Read the properties and relationships of a [windowsProtectionState](../resources/managedtenants-windowsprotectionstate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|antiMalwareVersion|String|The anti-malware version for the managed device. Optional. Read-only.|
|attentionRequired|Boolean|A flag indicating whether attention is required for the managed device. Optional. Read-only.|
|deviceDeleted|Boolean|A flag indicating whether the managed device has been deleted. Optional. Read-only.|
|devicePropertyRefreshDateTime|DateTimeOffset|The date and time the device property has been refreshed. Optional. Read-only.|
|engineVersion|String|The anti-virus engine version for the managed device. Optional. Read-only.|
|fullScanOverdue|Boolean|A flag indicating whether quick scan is overdue for the managed device. Optional. Read-only.|
|fullScanRequired|Boolean|A flag indicating whether full scan is overdue for the managed device. Optional. Read-only.|
|id|String|The unique identifier for the Windows protection state. Required. Read-only.|
|lastFullScanDateTime|DateTimeOffset|The date and time a full scan was completed. Optional. Read-only.|
|lastFullScanSignatureVersion|String|The version anti-malware version used to perform the last full scan. Optional. Read-only.|
|lastQuickScanDateTime|DateTimeOffset|The date and time a quick scan was completed. Optional. Read-only.|
|lastQuickScanSignatureVersion|String|The version anti-malware version used to perform the last full scan. Optional. Read-only.|
|lastRefreshedDateTime|DateTimeOffset|Date and time the entity was last updated in the multi-tenant management platform. Optional. Read-only.|
|lastReportedDateTime|DateTimeOffset|The date and time the protection state was last reported for the managed device. Optional. Read-only.|
|malwareProtectionEnabled|Boolean|A flag indicating whether malware protection is enabled for the managed device. Optional. Read-only.|
|managedDeviceHealthState|String|The health state for the managed device. Optional. Read-only.|
|managedDeviceId|String|The unique identifier for the managed device. Optional. Read-only.|
|managedDeviceName|String|The display name for the managed device. Optional. Read-only.|
|networkInspectionSystemEnabled|Boolean|A flag indicating whether the network inspection system is enabled. Optional. Read-only.|
|quickScanOverdue|Boolean|A flag indicating weather a quick scan is overdue. Optional. Read-only.|
|realTimeProtectionEnabled|Boolean|A flag indicating whether real time protection is enabled. Optional. Read-only.|
|rebootRequired|Boolean|A flag indicating whether a reboot is required. Optional. Read-only.|
|signatureUpdateOverdue|Boolean|A flag indicating whether an signature update is overdue. Optional. Read-only.|
|signatureVersion|String|The signature version for the managed device. Optional. Read-only.|
|tenantDisplayName|String|The display name for the managed tenant. Optional. Read-only.|
|tenantId|String|The Azure Active Directory tenant identifier for the [managed tenant](../resources/managedtenants-tenant.md). Optional. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.windowsProtectionState",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.windowsProtectionState",
  "id": "String (identifier)",
  "tenantId": "String",
  "tenantDisplayName": "String",
  "managedDeviceId": "String",
  "managedDeviceName": "String",
  "malwareProtectionEnabled": "Boolean",
  "managedDeviceHealthState": "String",
  "realTimeProtectionEnabled": "Boolean",
  "networkInspectionSystemEnabled": "Boolean",
  "quickScanOverdue": "Boolean",
  "fullScanOverdue": "Boolean",
  "signatureUpdateOverdue": "Boolean",
  "rebootRequired": "Boolean",
  "attentionRequired": "Boolean",
  "fullScanRequired": "Boolean",
  "engineVersion": "String",
  "signatureVersion": "String",
  "antiMalwareVersion": "String",
  "lastQuickScanDateTime": "String (timestamp)",
  "lastFullScanDateTime": "String (timestamp)",
  "lastQuickScanSignatureVersion": "String",
  "lastFullScanSignatureVersion": "String",
  "lastReportedDateTime": "String (timestamp)",
  "devicePropertyRefreshDateTime": "String (timestamp)",
  "deviceDeleted": "Boolean",
  "lastRefreshedDateTime": "String (timestamp)"
}
```

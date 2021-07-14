---
title: "managedDeviceCompliance resource type"
description: "Represents the state of device compliance for each managed device belonging to a given managed tenant."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# managedDeviceCompliance resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the state of device compliance for each managed device belonging to a given managed tenant.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List managedDeviceCompliances](../api/managedtenants-managedtenant-list-manageddevicecompliances.md)|[microsoft.graph.managedTenants.managedDeviceCompliance](../resources/managedtenants-manageddevicecompliance.md) collection|Get a list of the [managedDeviceCompliance](../resources/managedtenants-manageddevicecompliance.md) objects and their properties.|
|[Get managedDeviceCompliance](../api/managedtenants-manageddevicecompliance-get.md)|[microsoft.graph.managedTenants.managedDeviceCompliance](../resources/managedtenants-manageddevicecompliance.md)|Read the properties and relationships of a [managedDeviceCompliance](../resources/managedtenants-manageddevicecompliance.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|complianceStatus|String|Compliance state of the device. This property is read-only. Possible values are: `unknown`, `compliant`, `noncompliant`, `conflict`, `error`, `inGracePeriod`, `configManager`. Optional. Read-only.|
|deviceType|String|Platform of the device. This property is read-only. Possible values are: `desktop`, `windowsRT`, `winMO6`, `nokia`, `windowsPhone`, `mac`, `winCE`, `winEmbedded`, `iPhone`, `iPad`, `iPod`, `android`, `iSocConsumer`, `unix`, `macMDM`, `holoLens`, `surfaceHub`, `androidForWork`, `androidEnterprise`, `windows10x`, `androidnGMS`, `chromeOS`, `linux`, `blackberry`, `palm`, `unknown`, `cloudPC`.  Optional. Read-only.|
|id|String|The unique identity for this entity. Required. Read-only.|
|inGracePeriodUntilDateTime|DateTimeOffset|The date and time when the grace period will expire. Optional. Read-only.|
|lastRefreshedDateTime|DateTimeOffset|Date and time the entity was last updated in the multi-tenant management platform. Optional. Read-only.|
|lastSyncDateTime|DateTimeOffset|The date and time that the device last completed a successful sync with Microsoft Endpoint Manager. Optional. Read-only.|
|managedDeviceId|String|The identifier for the managed device in Microsoft Endpoint Manager. Optional. Read-only.|
|managedDeviceName|String|The display name for the managed device. Optional. Read-only.|
|manufacturer|String|The manufacture for the device. Optional. Read-only.|
|model|String|The model for the device. Optional. Read-only.|
|osDescription|String|The description of the operating system for the managed device. Optional. Read-only.|
|osVersion|String|The version of the operating system for the managed device. Optional. Read-only.|
|ownerType|String|The type of owner for the managed device. Optional. Read-only.|
|tenantDisplayName|String|The display name for the managed tenant. Optional. Read-only.|
|tenantId|String|The Azure Active Directory tenant identifier for the [managed tenant](../resources/managedtenants-tenant.md). Optional. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.managedDeviceCompliance",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.managedDeviceCompliance",
  "id": "String (identifier)",
  "tenantId": "String",
  "tenantDisplayName": "String",
  "managedDeviceId": "String",
  "managedDeviceName": "String",
  "complianceStatus": "String",
  "osDescription": "String",
  "osVersion": "String",
  "lastSyncDateTime": "String (timestamp)",
  "ownerType": "String",
  "model": "String",
  "manufacturer": "String",
  "inGracePeriodUntilDateTime": "String (timestamp)",
  "lastRefreshedDateTime": "String (timestamp)",
  "deviceType": "String"
}
```

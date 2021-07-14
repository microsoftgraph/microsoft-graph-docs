---
title: "cloudPcOverview resource type"
description: "Represents an overview of cloud PCs for a given managed tenant."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# cloudPcOverview resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an overview of cloud PCs for a given managed tenant.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPcOverviews](../api/managedtenants-managedtenant-list-cloudpcsoverview.md)|[microsoft.graph.managedTenants.cloudPcOverview](../resources/managedtenants-cloudpcoverview.md) collection|Get a list of the [cloudPcOverview](../resources/managedtenants-cloudpcoverview.md) objects and their properties.|
|[Get cloudPcOverview](../api/managedtenants-cloudpcoverview-get.md)|[microsoft.graph.managedTenants.cloudPcOverview](../resources/managedtenants-cloudpcoverview.md)|Read the properties and relationships of a [cloudPcOverview](../resources/managedtenants-cloudpcoverview.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the cloud PC overview. Required. Read-only.|
|lastRefreshedDateTime|DateTimeOffset|Date and time the entity was last updated in the multi-tenant management platform. Optional. Read-only.|
|numberOfCloudPcConnectionStatusFailed|Int32|The number of cloud PC connections that have a status of `failed`. Optional. Read-only.|
|numberOfCloudPcConnectionStatusPassed|Int32|The number of cloud PC connections that have a status of `passed`. Optional. Read-only.|
|numberOfCloudPcConnectionStatusPending|Int32|The number of cloud PC connections that have a status of `pending`. Optional. Read-only.|
|numberOfCloudPcConnectionStatusRunning|Int32|The number of cloud PC connections that have a status of `running`. Optional. Read-only.|
|numberOfCloudPcConnectionStatusUnkownFutureValue|Int32|The number of cloud PC connections that have a status of `unknownFutureValue`. Optional. Read-only.|
|numberOfCloudPcStatusDeprovisioning|Int32|The number of cloud PCs that have a status of `deprovisioning`. Optional. Read-only.|
|numberOfCloudPcStatusFailed|Int32|The number of cloud PCs that have a status of `failed`. Optional. Read-only.|
|numberOfCloudPcStatusInGracePeriod|Int32|The number of cloud PCs that have a status of `inGracePeriod`. Optional. Read-only.|
|numberOfCloudPcStatusNotProvisioned|Int32|The number of cloud PCs that have a status of `notProvisioned`. Optional. Read-only.|
|numberOfCloudPcStatusProvisioned|Int32|The number of cloud PCs that have a status of `provisioned`. Optional. Read-only.|
|numberOfCloudPcStatusProvisioning|Int32|The number of cloud PCs that have a status of `provisioning`. Optional. Read-only.|
|numberOfCloudPcStatusUnknown|Int32|The number of cloud PCs that have a status of `unknown`. Optional. Read-only.|
|numberOfCloudPcStatusUpgrading|Int32|The number of cloud PCs that have a status of `upgrading`. Optional. Read-only.|
|tenantDisplayName|String|The display name for the managed tenant. Optional. Read-only.|
|totalCloudPcConnectionStatus|Int32|The total number of cloud PC connection statuses for the given managed tenant. Optional. Read-only.|
|totalCloudPcStatus|Int32|The total number of cloud PC statues for the given managed tenant. Optional. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.cloudPcOverview",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.cloudPcOverview",
  "id": "String (identifier)",
  "tenantDisplayName": "String",
  "totalCloudPcStatus": "Integer",
  "numberOfCloudPcStatusNotProvisioned": "Integer",
  "numberOfCloudPcStatusProvisioning": "Integer",
  "numberOfCloudPcStatusProvisioned": "Integer",
  "numberOfCloudPcStatusUpgrading": "Integer",
  "numberOfCloudPcStatusInGracePeriod": "Integer",
  "numberOfCloudPcStatusDeprovisioning": "Integer",
  "numberOfCloudPcStatusFailed": "Integer",
  "numberOfCloudPcStatusUnknown": "Integer",
  "totalCloudPcConnectionStatus": "Integer",
  "numberOfCloudPcConnectionStatusPending": "Integer",
  "numberOfCloudPcConnectionStatusRunning": "Integer",
  "numberOfCloudPcConnectionStatusPassed": "Integer",
  "numberOfCloudPcConnectionStatusFailed": "Integer",
  "numberOfCloudPcConnectionStatusUnkownFutureValue": "Integer",
  "lastRefreshedDateTime": "String (timestamp)"
}
```

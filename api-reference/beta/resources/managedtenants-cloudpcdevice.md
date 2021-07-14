---
title: "cloudPcDevice resource type"
description: "Represents a cloud PC device that belongs to a given managed tenant."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# cloudPcDevice resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a cloud PC device that belongs to a given managed tenant.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPcDevices](../api/managedtenants-managedtenant-list-cloudpcdevices.md)|[microsoft.graph.managedTenants.cloudPcDevice](../resources/managedtenants-cloudpcdevice.md) collection|Get a list of the [cloudPcDevice](../resources/managedtenants-cloudpcdevice.md) objects and their properties.|
|[Get cloudPcDevice](../api/managedtenants-cloudpcdevice-get.md)|[microsoft.graph.managedTenants.cloudPcDevice](../resources/managedtenants-cloudpcdevice.md)|Read the properties and relationships of a [cloudPcDevice](../resources/managedtenants-cloudpcdevice.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|cloudPcStatus|String|The status of the cloud PC. Possible values are: `notProvisioned`, `provisioning`, `provisioned`, `upgrading`, `inGracePeriod`, `deprovisioning`, `failed`. Required. Read-only.|
|displayName|String|The display name for the cloud PC. Required. Read-only.|
|id|String|The unique identifier for the cloud PC. Required. Read-only.|
|lastRefreshedDateTime|DateTimeOffset|Date and time the entity was last updated in the multi-tenant management platform. Required. Read-only.|
|managedDeviceId|String|The managed device identifier for the cloud PC. Optional. Read-only.|
|managedDeviceName|String|The managed device display name for the cloud PC. Optional. Read-only.|
|provisioningPolicyId|String|The provisioning policy identifier for the cloud PC. Required. Read-only.|
|servicePlanName|String|The service plan name for the cloud PC. Required. Read-only.|
|tenantDisplayName|String|The display name for the managed tenant. Required. Read-only.|
|tenantId|String|The Azure Active Directory tenant identifier for the [managed tenant](../resources/managedtenants-tenant.md). Required. Read-only.|
|userPrincipalName|String|The user principal name (UPN) of the user assigned to the cloud PC. Required. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.cloudPcDevice",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.cloudPcDevice",
  "id": "String (identifier)",
  "displayName": "String",
  "tenantId": "String",
  "tenantDisplayName": "String",
  "managedDeviceId": "String",
  "managedDeviceName": "String",
  "userPrincipalName": "String",
  "servicePlanName": "String",
  "cloudPcStatus": "String",
  "provisioningPolicyId": "String",
  "lastRefreshedDateTime": "String (timestamp)"
}
```

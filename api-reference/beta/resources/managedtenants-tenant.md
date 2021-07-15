---
title: "tenant resource type"
description: "Represents a tenant associated with the managing entity."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# tenant resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a tenant associated with the managing entity.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List tenants](../api/managedtenants-managedtenant-list-tenants.md)|[microsoft.graph.managedTenants.tenant](../resources/managedtenants-tenant.md) collection|Get a list of the [tenant](../resources/managedtenants-tenant.md) objects and their properties.|
|[Get tenant](../api/managedtenants-tenant-get.md)|[microsoft.graph.managedTenants.tenant](../resources/managedtenants-tenant.md)|Read the properties and relationships of a [tenant](../resources/managedtenants-tenant.md) object.|
|[offboardTenant](../api/managedtenants-tenant-offboardtenant.md)|[microsoft.graph.managedTenants.tenant](../resources/managedtenants-tenant.md)|Off boards a tenant from the multi-tenant management platform.|
|[resetTenantOnboardingStatus](../api/managedtenants-tenant-resettenantonboardingstatus.md)|[microsoft.graph.managedTenants.tenant](../resources/managedtenants-tenant.md)|Resets the tenant onboarding status with the multi-tenant management platform.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contract|[microsoft.graph.managedTenants.tenantContract](../resources/managedtenants-tenantcontract.md)|The relationship details for the tenant with the managing entity.|
|createdDateTime|DateTimeOffset|The date and time the tenant was created in the multi-tenant management platform. Optional. Read-only.|
|displayName|String|The display name for the tenant. Required. Read-only.|
|id|String|The Azure Active Directory tenant identifier for the tenant. Required. Read-only.|
|lastUpdatedDateTime|DateTimeOffset|The date and time the tenant was last updated within the multi-tenant management platform. Optional. Read-only.|
|tenantId|String|The Azure Active Directory tenant identifier for the [managed tenant](../resources/managedtenants-tenant.md). Optional. Read-only.|
|tenantStatusInformation|[microsoft.graph.managedTenants.tenantStatusInformation](../resources/managedtenants-tenantstatusinformation.md)|The onboarding status information for the tenant. Optional. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.tenant",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.tenant",
  "id": "String (identifier)",
  "tenantId": "String",
  "displayName": "String",
  "contract": {
    "@odata.type": "microsoft.graph.managedTenants.tenantContract"
  },
  "tenantStatusInformation": {
    "@odata.type": "microsoft.graph.managedTenants.tenantStatusInformation"
  },
  "lastUpdatedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)"
}
```

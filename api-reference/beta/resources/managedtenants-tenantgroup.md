---
title: "tenantGroup resource type"
description: "Represents a logical group of managed tenants."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# tenantGroup resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a logical group of managed tenants.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List tenantGroups](../api/managedtenants-managedtenant-list-tenantgroups.md)|[microsoft.graph.managedTenants.tenantGroup](../resources/managedtenants-tenantgroup.md) collection|Get a list of the [tenantGroup](../resources/managedtenants-tenantgroup.md) objects and their properties.|
|[Get tenantGroup](../api/managedtenants-tenantgroup-get.md)|[microsoft.graph.managedTenants.tenantGroup](../resources/managedtenants-tenantgroup.md)|Read the properties and relationships of a [tenantGroup](../resources/managedtenants-tenantgroup.md) object.|
|[tenantSearch](../api/managedtenants-tenantgroup-tenantsearch.md)|[microsoft.graph.managedTenants.tenantGroup](../resources/managedtenants-tenantgroup.md) collection|Searches for the specific managed tenant across tenant groups.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allTenantsIncluded|Boolean|A flag indicating whether all managed tenant are included in the tenant group. Required. Read-only.|
|displayName|String|The display name for the tenant group. Optional. Read-only.|
|id|String|The unique identifier for the tenant group. Required. Read-only.|
|managementActions|[microsoft.graph.managedTenants.managementActionInfo](../resources/managedtenants-managementactioninfo.md) collection|The collection of management action associated with the tenant group. Optional. Read-only.|
|managementIntents|[microsoft.graph.managedTenants.managementIntentInfo](../resources/managedtenants-managementintentinfo.md) collection|The collection of management intents associated with the tenant group. Optional. Read-only.|
|tenantIds|String collection|The collection of managed tenant identifiers include in the tenant group. Optional. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.tenantGroup",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.tenantGroup",
  "id": "String (identifier)",
  "displayName": "String",
  "allTenantsIncluded": "Boolean",
  "tenantIds": [
    "String"
  ],
  "managementIntents": [
    {
      "@odata.type": "microsoft.graph.managedTenants.managementIntentInfo"
    }
  ],
  "managementActions": [
    {
      "@odata.type": "microsoft.graph.managedTenants.managementActionInfo"
    }
  ]
}
```

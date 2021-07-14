---
title: "tenantCustomizedInformation resource type"
description: "Represents customizable information for a managed tenant."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# tenantCustomizedInformation resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents customizable information for a managed tenant.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List tenantCustomizedInformations](../api/managedtenants-managedtenant-list-tenantscustomizedinformation.md)|[microsoft.graph.managedTenants.tenantCustomizedInformation](../resources/managedtenants-tenantcustomizedinformation.md) collection|Get a list of the [tenantCustomizedInformation](../resources/managedtenants-tenantcustomizedinformation.md) objects and their properties.|
|[Get tenantCustomizedInformation](../api/managedtenants-tenantcustomizedinformation-get.md)|[microsoft.graph.managedTenants.tenantCustomizedInformation](../resources/managedtenants-tenantcustomizedinformation.md)|Read the properties and relationships of a [tenantCustomizedInformation](../resources/managedtenants-tenantcustomizedinformation.md) object.|
|[Update tenantCustomizedInformation](../api/managedtenants-tenantcustomizedinformation-update.md)|[microsoft.graph.managedTenants.tenantCustomizedInformation](../resources/managedtenants-tenantcustomizedinformation.md)|Update the properties of a [tenantCustomizedInformation](../resources/managedtenants-tenantcustomizedinformation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contacts|[microsoft.graph.managedTenants.tenantContactInformation](../resources/managedtenants-tenantcontactinformation.md) collection|The collection of contacts for the managed tenant. Optional.|
|displayName|String|The display name for the managed tenant. Required. Read-only.|
|id|String|The Azure Active Directory tenant identifier for the managed tenant. Required. Read-only.|
|tenantId|String|The Azure Active Directory tenant identifier for the [managed tenant](../resources/managedtenants-tenant.md). Optional. Read-only.|
|website|String|The website for the managed tenant. Required.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.tenantCustomizedInformation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.tenantCustomizedInformation",
  "id": "String (identifier)",
  "displayName": "String",
  "tenantId": "String",
  "contacts": [
    {
      "@odata.type": "microsoft.graph.managedTenants.tenantContactInformation"
    }
  ],
  "website": "String"
}
```

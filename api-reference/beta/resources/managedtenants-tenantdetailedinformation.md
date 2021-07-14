---
title: "tenantDetailedInformation resource type"
description: "Represents detailed information for a managed tenant."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# tenantDetailedInformation resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information for a managed tenant.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List tenantDetailedInformation](../api/managedtenants-managedtenant-list-tenantsdetailedinformation.md)|[microsoft.graph.managedTenants.tenantDetailedInformation](../resources/managedtenants-tenantdetailedinformation.md) collection|Get a list of the [tenantDetailedInformation](../resources/managedtenants-tenantdetailedinformation.md) objects and their properties.|
|[Get tenantDetailedInformation](../api/managedtenants-tenantdetailedinformation-get.md)|[microsoft.graph.managedTenants.tenantDetailedInformation](../resources/managedtenants-tenantdetailedinformation.md)|Read the properties and relationships of a [tenantDetailedInformation](../resources/managedtenants-tenantdetailedinformation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|city|String|The city where the managed tenant is located. Optional. Read-only.|
|countryCode|String|The code for the country where the managed tenant is located. Optional. Read-only.|
|countryName|String|The name for the country where the managed tenant is located. Optional. Read-only.|
|defaultDomainName|String|The default domain name for the managed tenant. Optional. Read-only.|
|displayName|String|The display name for the managed tenant.|
|id|String|The unique identifier for this entity. Required. Read-only.|
|industryName|String|The business industry associated with the managed tenant. Optional. Read-only.|
|region|String|The region where the managed tenant is located. Optional. Read-only.|
|segmentName|String|The business segment associated with the managed tenant. Optional. Read-only.|
|tenantId|String|The Azure Active Directory tenant identifier for the [managed tenant](../resources/managedtenants-tenant.md).|
|verticalName|String|The vertical associated with the managed tenant. Optional. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.tenantDetailedInformation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.tenantDetailedInformation",
  "id": "String (identifier)",
  "tenantId": "String",
  "displayName": "String",
  "defaultDomainName": "String",
  "countryName": "String",
  "countryCode": "String",
  "city": "String",
  "region": "String",
  "verticalName": "String",
  "industryName": "String",
  "segmentName": "String"
}
```


---
title: "tenantContract resource type"
description: "Represents relationship information between a tenant and the managing entity."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# tenantContract resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents relationship information between a tenant and the managing entity.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contractType|Int32|The type of relationship that exists between the managing entity and tenant. Optional. Read-only.|
|defaultDomainName|String|The default domain name for the tenant. Required. Read-only.|
|displayName|String|The display name for the tenant. Optional. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedTenants.tenantContract"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.tenantContract",
  "contractType": "Integer",
  "displayName": "String",
  "defaultDomainName": "String"
}
```

---
title: "tenantInfo resource type"
description: "Represents information for a managed tenant."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# tenantInfo resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information for a managed tenant.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|tenantId|String|The Azure Active Directory tenant identifier for the [managed tenant](../resources/managedtenants-tenant.md). Optional.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedTenants.tenantInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.tenantInfo",
  "tenantId": "String"
}
```

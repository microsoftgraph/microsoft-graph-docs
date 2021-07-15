---
title: "tenantContactInformation resource type"
description: "Represents a contact at a managed tenant."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# tenantContactInformation resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a contact at a managed tenant.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|email|String|The email address for the contact. Optional|
|name|String|The name for the contact. Required.|
|notes|String|The notes associated with the contact. Optional|
|phone|String|The phone number for the contact. Optional.|
|title|String|The title for the contact. Required.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedTenants.tenantContactInformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.tenantContactInformation",
  "name": "String",
  "title": "String",
  "email": "String",
  "phone": "String",
  "notes": "String"
}
```

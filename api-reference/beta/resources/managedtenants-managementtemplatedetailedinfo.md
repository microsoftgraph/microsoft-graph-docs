---
title: "managementTemplateDetailedInfo resource type"
description: "Represents detailed information for the management template."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# managementTemplateDetailedInfo resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information for the management template.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|managementCategory|The management category for the management template. Possible values are: `custom`, `devices`, `identity`, `unknownFutureValue`. Required. Read-only.|
|displayName|String|The display name for the management template. Required. Read-only.|
|managementTemplateId|String|The unique identifier for the management template. Required. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedTenants.managementTemplateDetailedInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.managementTemplateDetailedInfo",
  "managementTemplateId": "String",
  "displayName": "String",
  "category": "String"
}
```

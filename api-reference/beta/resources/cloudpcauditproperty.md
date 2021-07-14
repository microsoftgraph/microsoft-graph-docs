---
title: "cloudPcAuditProperty resource type"
description: "Represents the audit property. This shows the edited property name, the old value, and the new value."
author: "ecmadao"
localization_priority: Normal
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcAuditProperty resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the audit property. This shows the edited property name, the old value, and the new value.

[!INCLUDE [cloudpc-api-preview](../../includes/cloudpc-api-preview.md)]

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name.|
|oldValue|String|Old value.|
|newValue|String|New value.|

## Relationships

None.

## JSON Representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcAuditProperty"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcAuditProperty",
  "displayName": "String",
  "oldValue": "String",
  "newValue": "String"
}
```

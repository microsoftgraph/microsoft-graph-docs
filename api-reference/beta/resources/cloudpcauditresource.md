---
title: "cloudPcAuditResource resource type"
description: "Represents the audit resource. This shows the target edited resource entity, with multiple edited properties."
author: "ecmadao"
localization_priority: Normal
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcAuditResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the audit resource. This shows the target edited resource entity, with multiple edited properties.

[!INCLUDE [cloudpc-api-preview](../../includes/cloudpc-api-preview.md)]

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The resource entity display name.|
|modifiedProperties|[cloudPcAuditProperty](../resources/cloudpcauditproperty.md) collection|A list of modified properties.|
|type|String|The type of the audit resource.|
|resourceId|String|The ID of the audit resource.|

## Relationships

None

## JSON Representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcAuditResource"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcAuditResource",
  "displayName": "String",
  "modifiedProperties": [
    {
      "@odata.type": "microsoft.graph.cloudPcAuditProperty",
      "displayName": "String",
      "oldValue": "String",
      "newValue": "String"
    }
  ],
  "type": "String",
  "resourceId": "String"
}
```

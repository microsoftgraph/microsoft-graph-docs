---
title: "subscribedSku resource type"
description: " create, update, and delete are not supported. Query filter expressions are not supported. Inherits from directoryObject."
localization_priority: Normal
author: "lleonard-msft"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# subscribedSku resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Only the read operation is supported on subscribed SKUs; create, update, and delete are not supported. Query filter expressions are not supported. Inherits from [directoryObject](directoryobject.md).


## Methods
| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get subscribedSku](../api/subscribedsku-get.md) | [subscribedSku](subscribedsku.md) |Read properties and relationships of subscribedSku object.|
|[List subscribedsku](../api/subscribedsku-list.md) | [subscribedSku](subscribedsku.md) collection |Retrieve the list of commercial subscriptions that an organization has acquired.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|appliesTo|String| For example, "User" or "Company". |
|capabilityStatus|String| For example, "Enabled". |
|consumedUnits|Int32| The number of licenses that have been assigned. |
|id|String| The unique identifier for the subscribed sku object. Key, not nullable. |
|prepaidUnits|[licenseUnitsDetail](licenseunitsdetail.md)| Information about the number and status of prepaid licenses. |
|servicePlans|[servicePlanInfo](serviceplaninfo.md) collection| Information about the service plans that are available with the SKU. Not nullable |
|skuId|Guid| The unique identifier (GUID) for the service SKU. |
|skuPartNumber|String| The SKU part number; for example: "AAD_PREMIUM" or "RMSBASIC". |

## Relationships
None

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.subscribedSku"
}-->

```json
{
  "appliesTo": "string",
  "capabilityStatus": "string",
  "consumedUnits": 1024,
  "id": "string (identifier)",
  "prepaidUnits": {"@odata.type": "microsoft.graph.licenseUnitsDetail"},
  "servicePlans": [{"@odata.type": "microsoft.graph.servicePlanInfo"}],
  "skuId": "guid",
  "skuPartNumber": "string"
}

```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "subscribedSku resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/subscribedsku.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->

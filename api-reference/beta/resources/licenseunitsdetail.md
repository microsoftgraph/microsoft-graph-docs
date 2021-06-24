---
title: "licenseUnitsDetail resource type"
description: "The **prepaidUnits** property of the subscribedSku entity is of type **licenseUnitsDetail**."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "directory-management"
author: "michaelcurnutt"
---

# licenseUnitsDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **prepaidUnits** property of the [subscribedSku](subscribedsku.md) entity is of type **licenseUnitsDetail**. For more information on the progression states of a subscription, see [What if my subscription expires?](/microsoft-365/commerce/subscriptions/what-if-my-subscription-expires?view=o365-worldwide)

## Properties
| Property	   | Type	|Description|
|:-------------|:-----|:----------|
|enabled|Int32| The number of units that are enabled for the active subscription of the service SKU. |
|suspended|Int32| The number of units that are suspended because the subscription of the service SKU has been cancelled. The units cannot be assigned but can still be reactivated before they are deleted. |
|warning|Int32| The number of units that are in warning status. When the subscription of the service SKU has expired, the customer has a grace period to renew their subscription before it is cancelled (moved to a **suspended** state). |

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.licenseUnitsDetail"
}-->

```json
{
  "enabled": 1024,
  "suspended": 1024,
  "warning": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "licenseUnitsDetail resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->



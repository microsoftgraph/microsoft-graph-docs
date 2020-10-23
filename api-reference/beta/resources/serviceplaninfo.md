---
title: "servicePlanInfo resource type"
description: "Contains information about a service plan associated with a subscribed SKU. The **servicePlans** property of the subscribedSku entity is a collection of **servicePlanInfo**."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "krbain"
---

# servicePlanInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about a service plan associated with a subscribed SKU. The **servicePlans** property of the [subscribedSku](subscribedsku.md) entity is a collection of **servicePlanInfo**.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|servicePlanId|Guid|The unique identifier of the service plan.|
|servicePlanName|String|The name of the service plan.|
|provisioningStatus|String|The provisioning status of the service plan. Possible values:<br/>"Success" - Service is fully provisioned.<br/>"Disabled" - Service has been disabled.<br/>"PendingInput" - Service is not yet provisioned; awaiting service confirmation.<br/>"PendingActivation" - Service is provisioned but requires explicit activation by administrator (for example, Intune_O365 service plan).<br/>"PendingProvisioning" - Microsoft has added a new service to the product SKU and it has not been activated in the tenant, yet.|
|appliesTo|String|The object the service plan can be assigned to. Possible values:<br/>"User" - service plan can be assigned to individual users.<br/>"Company" - service plan can be assigned to the entire tenant.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.servicePlanInfo"
}-->

```json
{
  "appliesTo": "string",
  "provisioningStatus": "string",
  "servicePlanId": "guid",
  "servicePlanName": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "servicePlanInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->



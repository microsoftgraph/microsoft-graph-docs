---
title: "physicalAddress resource type"
description: "Represents the street address of a resource such as a contact or event."
localization_priority: Normal
author: "harini84"
ms.prod: "outlook"
doc_type: resourcePageType
---

# physicalAddress resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the street address of a resource such as a contact or event.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|city|String|The city.|
|countryOrRegion|String|The country or region. It's a free-format string value, for example, "United States".|
|postalCode|String|The postal code.|
|postOfficeBox|String|The post office box number.|
|state|String|The state.|
|street|String|The street.|
|type|physicalAddressType|The type of address. Possible values are: `unknown`, `home`, `business`, `other`.|


## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.physicalAddress"
}-->

```json
{
  "city": "string",
  "countryOrRegion": "string",
  "postalCode": "string",
  "postOfficeBox": "string",
  "state": "string",
  "street": "string",
  "type": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "physicalAddress resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->



---
title: "physicalOfficeAddress resource type"
description: "Represents the business address of a resource such as a contact or event."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "dkershaw10"
---

# physicalOfficeAddress resource type

Namespace: microsoft.graph

Represents the business address of a resource such as an organizational contact.

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|city|String|The city.|
|countryOrRegion|String|The country or region. It's a free-format string value, for example, "United States".|
|officeLocation  | String | Office location such as building and office number for an organizational contact.  |
|postalCode|String|The postal code.|
|state|String|The state.|
|street|String|The street.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.physicalOfficeAddress"
}-->

```json
{
  "city": "string",
  "countryOrRegion": "string",
  "officeLocation": "string",
  "postalCode": "string",
  "state": "string",
  "street": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "physicalOfficeAddress resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->



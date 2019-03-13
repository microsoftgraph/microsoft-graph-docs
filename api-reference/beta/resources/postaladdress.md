---
title: "postalAddress resource type"
description: "Represents the street address of a resource such as a contact or event."
localization_priority: Normal
author: "angelgolfer-ms"
ms.prod: "outlook"
doc_type: resourcePageType
---

# postalAddress resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the street address of a location.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|city|String|The city.|
|countryOrRegion|String|The country or region. It's a free-format string value, for example, "United States".|
|isInferred|Boolean|For internal use only.|
|postalCode|String|The postal code.|
|state|String|The state.|
|street|String|The street.|
|type|addressType|The type of address. The possible values are: `unknown`, `home`, `business`, `other`.|


## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.postalAddress"
}-->

```json
{
  "city": "string",
  "countryOrRegion": "string",
  "isInferred": "boolean",
  "postalCode": "string",
  "state": "string",
  "street": "string",
  "type": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "postaladdress resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/postaladdress.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}-->

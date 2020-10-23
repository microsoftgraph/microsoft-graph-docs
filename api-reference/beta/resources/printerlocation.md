---
title: printerLocation resource type
description: Represents the physical and hierarchical location of a printer.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printerLocation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the physical and hierarchical location of a printer.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|latitude|Double|The latitude that the printer is located at.|
|longitude|Double|The longitude that the printer is located at.|
|altitudeInMeters|Int32|The altitude, in meters, that the printer is located at.|
|streetAddress|String|The street address where the printer is located.|
|subUnit|String collection|The subunit hierarchy where the printer is located. The elements should be in hierarchical order. For example, if a campus is divided into different sections, the hierarchy might look like this: `["East Wing", "Block A"]`|
|city|String|The city that the printer is located in.|
|postalCode|String|The postal code that the printer is located in.|
|countryOrRegion|String|The country or region that the printer is located in.|
|site|String|The site that the printer is located in.|
|building|String|The building that the printer is located in.|
|floorNumber|Int32|The floor number that the printer is located on.|
|floorDescription|String|The description of the floor that the printer is located on.|
|roomNumber|Int32|The room number that the printer is located in.|
|roomDescription|String|The description of the room that the printer is located in.|
|organization|String collection|The organizational hierarchy that the printer belongs to. The elements should be in hierarchical order.|
|subdivision|String collection|The subdivision that the printer is located in. The elements should be in hierarchical order.|
|stateOrProvince|String|The state or province that the printer is located in.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printerLocation"
}-->

```json
{
    "latitude": 80.1,
    "longitude": -170.1,
    "altitudeInMeters": 123456,
    "streetAddress": "String",
    "subUnit": ["String"],
    "city": "String",
    "postalCode": "String",
    "countryOrRegion": "String",
    "site": "String",
    "building": "String",
    "floorNumber": 123456,
    "floorDescription": "String",
    "roomNumber": 123456,
    "roomDescription": "String",
    "organization": ["String"],
    "subdivision": ["String"],
    "stateOrProvince": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printerLocation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


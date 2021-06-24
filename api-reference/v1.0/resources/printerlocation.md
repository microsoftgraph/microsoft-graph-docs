---
title: printerLocation resource type
description: Represents the physical and hierarchical location of a printer.
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: resourcePageType
---

# printerLocation resource type

Namespace: microsoft.graph

[!INCLUDE [cloudprinting-pricing-disclaimer](../../includes/cloudprinting-pricing-disclaimer.md)]

Represents the physical and hierarchical location of a printer.

## Properties
|Property|Type|Description|
|:---|:---|:---|
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
|floor|String|The floor that the printer is located on. Only numerical values are supported right now.|
|floorDescription|String|The description of the floor that the printer is located on.|
|roomName|String|The room that the printer is located in. Only numerical values are supported right now.|
|roomDescription|String|The description of the room that the printer is located in.|
|organization|String collection|The organizational hierarchy that the printer belongs to. The elements should be in hierarchical order.|
|subdivision|String collection|The subdivision that the printer is located in. The elements should be in hierarchical order.|
|stateOrProvince|String|The state or province that the printer is located in.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.printerLocation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printerLocation",
  "latitude": "Double",
  "longitude": "Double",
  "altitudeInMeters": "Integer",
  "streetAddress": "String",
  "subunit": [
    "String"
  ],
  "city": "String",
  "postalCode": "String",
  "countryOrRegion": "String",
  "site": "String",
  "building": "String",
  "floor": "String",
  "floorDescription": "String",
  "roomName": "String",
  "roomDescription": "String",
  "organization": [
    "String"
  ],
  "subdivision": [
    "String"
  ],
  "stateOrProvince": "String"
}
```


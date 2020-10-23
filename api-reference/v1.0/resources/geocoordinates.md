---
author: JeremyKelley
ms.author: JeremyKelley
ms.date: 09/10/2017
title: GeoCoordinates
localization_priority: Normal
description: "The GeoCoordinates resource provides geographic coordinates and elevation of a location based on metadata contained within the file."
ms.prod: ""
doc_type: resourcePageType
---

# GeoCoordinates resource type

Namespace: microsoft.graph

The **GeoCoordinates** resource provides geographic coordinates and elevation of a location based on metadata contained within the file.
If a [**DriveItem**](driveitem.md) has a non-null **location** facet, the item represents a file with a known location assocaited with it.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.geoCoordinates"
}-->

```json
{
  "altitude": 1024.13,
  "latitude": 26.13246,
  "longitude": 24.34616
}
```

## Properties

| Property  | Type   | Description
|:----------|:-------|:--------------------------------------------------------
| altitude  | Double | Optional. The altitude (height), in feet,  above sea level for the item. Read-only.
| latitude  | Double | Optional. The latitude, in decimal, for the item. Read-only.
| longitude | Double | Optional. The longitude, in decimal, for the item. Read-only.

## Remarks

For more information about the facets on a DriveItem, see [DriveItem](driveitem.md).

<!-- {
  "type": "#page.annotation",
  "description": "The location facet provides geographic location related properties for an item",
  "keywords": "location,geographic,item,onedrive",
  "section": "documentation",
  "tocPath": "Facets/Location"
} -->


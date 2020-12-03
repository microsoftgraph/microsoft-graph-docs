---
author: JeremyKelley
description: "The geoCoordinates resource provides geographic coordinates and elevation of a location based on metadata contained within the file."
ms.date: 09/10/2017
title: GeoCoordinates
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
---
# geoCoordinates resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides geographic coordinates and elevation of a location based on metadata contained within the file.
If a [**driveItem**](driveitem.md) has a non-null **location** facet, the item represents a file with a known location assocaited with it.

> [!NOTE]
> When updating the latitude and longitude of a photo, a [photo](photo.md) resource (empty or otherwise) must be provided.

## Properties

| Property  | Type   | Description
|:----------|:-------|:--------------------------------------------------------
| altitude  | Double | Optional. The altitude (height), in feet,  above sea level for the item. Read-only.
| latitude  | Double | Optional. The latitude, in decimal, for the item. Writable on OneDrive Personal.
| longitude | Double | Optional. The longitude, in decimal, for the item. Writable on OneDrive Personal.

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

<!--
{
  "type": "#page.annotation",
  "description": "The location facet provides geographic location related properties for an item",
  "keywords": "location,geographic,item,onedrive",
  "section": "documentation",
  "tocPath": "Facets/Location",
  "suppressions": []
}
-->



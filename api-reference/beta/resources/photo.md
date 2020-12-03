---
title: "photo resource type"
description: "The photo resource provides photo and camera properties, for example, EXIF metadata, on a driveItem."
ms.date: 09/10/2017
localization_priority: Normal
author: "JeremyKelley"
ms.prod: ""
doc_type: "resourcePageType"
---

# photo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **photo** resource provides photo and camera properties, for example, EXIF metadata, on a [driveItem](driveitem.md).

> [!NOTE]
> Currently, only **takenDateTime** is available on OneDrive for Business and SharePoint.

## Properties

| Property          | Type          | Description                                                                |
|:------------------|:--------------|:---------------------------------------------------------------------------|
|cameraMake         |String         | Camera manufacturer. Read-only.                                            |
|cameraModel        |String         | Camera model. Read-only.                                                   |
|exposureDenominator|Double         | The denominator for the exposure time fraction from the camera. Read-only. |
|exposureNumerator  |Double         | The numerator for the exposure time fraction from the camera. Read-only.   |
|fNumber            |Double         | The F-stop value from the camera. Read-only.                               |
|focalLength        |Double         | The focal length from the camera. Read-only.                               |
|iso                |Int32          | The ISO value from the camera. Read-only.                                  |
|orientation        |Int16          | The orientation value from the camera. Writable on OneDrive Personal.      |
|takenDateTime      |DateTimeOffset | The date and time the photo was taken in UTC time. Read-only.              |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.photo",
  "baseType": null
}-->

```json
{
  "cameraMake": "String",
  "cameraModel": "String",
  "exposureDenominator": 1000.0,
  "exposureNumerator": 1.0,
  "fNumber": 1.8,
  "focalLength": 22.5,
  "iso": 100,
  "orientation": 3,
  "takenDateTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "The photo resource provides details about the camera and settings on the camera for photos.",
  "keywords": "camera make,camera model, exposure, f-stop, iso, orientation",
  "section": "documentation",
  "tocPath": ""
}-->



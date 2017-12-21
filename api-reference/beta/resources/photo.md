---
author: rgregg
ms.author: rgregg
ms.date: 09/10/2017
title: Photo
---
# Photo resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **photo** resource provides photo and camera properties, for example, EXIF metadata, on a [driveItem](driveitem.md).

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [  ],
  "@odata.type": "microsoft.graph.photo"
}-->
```json
{
  "cameraMake": "string",
  "cameraModel": "string",
  "exposureDenominator": 1000.0,
  "exposureNumerator": 1.0,
  "fNumber": 1.8,
  "focalLength": 22.5,
  "iso": 100,
  "takenDateTime": "String (timestamp)"
}
```

## Properties

| Property                | Type           | Description
|:------------------------|:---------------|:----------------------------------
| **takenDateTime**       | DateTimeOffset | Represents the date and time the photo was taken. Read-only.
| **cameraMake**          | String         | Camera manufacturer. Read-only.
| **cameraModel**         | String         | Camera model. Read-only.
| **fNumber**             | Double         | The F-stop value from the camera. Read-only.
| **exposureDenominator** | Double         | The denominator for the exposure time fraction from the camera. Read-only.
| **exposureNumerator**   | Double         | The numerator for the exposure time fraction from the camera. Read-only.
| **focalLength**         | Double         | The focal length from the camera. Read-only.
| **iso**                 | Int64          | The ISO value from the camera. Read-only.

## Remarks
OneDrive for Business and SharePoint only return the **takenDateTime** property.

For more information about the facets on a DriveItem, see [DriveItem](driveitem.md).
<!-- {
  "type": "#page.annotation",
  "description": "The photo facet provides details about the camera and settings on the camera for photos.",
  "keywords": "camera make,camera model, exposure, f-stop, iso",
  "section": "documentation",
  "tocPath": "Facets/Photo"
} -->

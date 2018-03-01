---
author: rgregg
ms.author: rgregg
ms.date: 09/10/2017
title: PublicationFacet
---
# PublicationFacet resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **publicationFacet** resource provides details on the published status of a [driveItemVersion](driveitemversion.md) or [driveItem](driveitem.md) resource.

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [  ],
  "@odata.type": "microsoft.graph.publicationFacet"
}-->

```json
{
  "level": "published | checkout",
  "versionId": "string"
}
```

## Properties

|   Property    |  Type  | Description |
| :------------ | :----- | :---------- |
| **level**     | String | The state of publication for this document. Either `published` or `checkout`. Read-only.  |
| **versionId** | String | The unique identifier for the version that is visible to the current caller. Read-only.  |


<!-- {
  "type": "#page.annotation",
  "description": "The photo facet provides details about the camera and settings on the camera for photos.",
  "keywords": "camera make,camera model, exposure, f-stop, iso",
  "section": "documentation",
  "tocPath": "Facets/Photo"
} -->

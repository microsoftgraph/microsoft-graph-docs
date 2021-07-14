---
author: MarcMroz
description: "The driveItemSource contains metadata about the source application that the drive item was created in."
title: driveItemSource resource type
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "sites-and-lists"
---
# driveItemSource resource type

Contains metadata about the source of the drive item.

It is available on the source property of [driveItem][item-resource] resources.

## Properties

| Property                 | Type                       | Description                                                                                      |
| :----------------------- | :------------------------  | :----------------------------------------------------------------------------------------------- |
| **application**          | driveItemSourceApplication | Enumeration value that indicates the source application where the file was created.              |
| **externalId**           | string                     | The external identifier for the drive item from the source.                                      |

### driveItemSourceApplication values

| Value               | Description                                       |
|:--------------------|:--------------------------------------------------|
| teams               | The application is Teams.                         |
| yammer              | The application is Yammer.                        |
| sharePoint          | The application is SharePoint.                    |
| oneDrive            | The application is OneDrive.                      |
| stream              | The application is Stream.                        |
| powerPoint          | The application is PowerPoint                     |
| office              | The application is Office                         |
| unknownFutureValue  | Marker value for future compatibility.            |

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "application",
    "externalId",
  ],
  "@odata.type": "microsoft.graph.driveItemSource"
}-->

```json
{
  "application": "string",
  "externalId" : "string"
}
```

## See also

For more information about the facets on a driveItem, see [driveItem](driveitem.md).

[item-resource]: ../resources/driveitem.md

<!-- {
  "type": "#page.annotation",
  "description": "The driveItemSource facet provides information about drive item source.",
  "keywords": "driveItemSoruce,client,media info,onedrive",
  "section": "documentation",
  "tocPath": "Facets/driveItemSource"
} -->

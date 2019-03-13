---
author: rgregg
ms.author: rgregg
ms.date: 09/10/2017
title: Package
localization_priority: Normal
doc_type: resourcePageType
---
# Package resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **Package** resource indicates that a DriveItem is the top level item in a "package" or a collection of items that should be treated as a collection instead of individual items.

An example of a package is a OneNote notebook. 
While the notebook is made up of files and folders that represent the contents of the notebook, the top level item that represents the notebook has a **package** facet to indicate to clients that this is a collection of data that should be treated special.

DriveItems with the **package** facet do not include a **folder** or **file** facet but are conceptually similar to an item with a **folder** facet.

## JSON representation

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.package" } -->
```json
{
  "type": "oneNote"
}
```

| Property Name | Type   | Description                                                                                                                                                                      |
|:--------------|:-------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **type**      | string | An string indicating the type of package. While `oneNote` is the only currently defined value, you should expect other package types to be returned and handle them accordingly. |

## Remarks 

For more information about the facets on a DriveItem, see [DriveItem](driveitem.md).


<!--
{
  "type": "#page.annotation",
  "description": "The Package facet indicates that an item is the root of a special collection of items that should be treated as a single unit.",
  "keywords": "package, facet, onenote",
  "section": "documentation",
  "suppressions": [
    "Error: /api-reference/beta/resources/package.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->

---
author: rgregg
ms.author: rgregg
ms.date: 09/10/2017
title: Root
localization_priority: Normal
doc_type: resourcePageType
---
# Root resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **Root** facet indicates that an object is the top-most one in its hierarchy.
The presence (non-null) of the facet value indicates that the object is the root.
A null (or missing) value indicates the object is not the root.

**Note**: While this facet is empty today, in future API revisions the facet may be populated with additional properties.

## JSON representation

<!-- { "blockType": "resource", "@type": "microsoft.graph.root" } -->

```json
{
}
```

## Properties

The **Root** resource has no properties.


<!--
{
  "type": "#page.annotation",
  "section": "documentation",
  "tocPath": "Facets/Root",
  "suppressions": [
    "Error: /api-reference/beta/resources/root.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->

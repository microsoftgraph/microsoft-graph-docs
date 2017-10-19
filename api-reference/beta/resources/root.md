---
author: rgregg
ms.author: rgregg
ms.date: 09/10/2017
title: Root
---
# Root resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

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


<!-- {
  "type": "#page.annotation",
  "section": "documentation",
  "tocPath": "Facets/Root"
} -->

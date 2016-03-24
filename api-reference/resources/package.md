# package resource type

The **Package** facet indicates that an item is the top level item in a "package" or
a collection of items, that are treated as a collection of data instead of
individual items.

An example of a package is a OneNote notebook. While the notebook is made up
of files and folders that represent the contents of the notebook, the top level
item that represents the notebook has a **Package** facet to indicate to clients
that this is a collection of data that should be treated special.

Items with the **Package** facet do not include a **Folder** or **File** facet
but are conceptually similar to an item with a **Folder** facet.

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

<!-- {
  "type": "#page.annotation",
  "description": "The Package facet indicates that an item is the root of a special collection of items that should be treated as a single unit.",
  "keywords": "package, facet, onenote",
  "section": "documentation"
} -->

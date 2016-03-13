# notes resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get notes](../api/notes_get.md) | [notes](notes.md) |Read properties and relationships of notes object.|
|[Create notebook](../api/notes_post_notebooks.md) |[notebook](notebook.md)| Create a new notebook by posting to the notebooks collection.|
|[List notebooks](../api/notes_list_notebooks.md) |[notebook](notebook.md) collection| Get a notebook object collection.|
|[Create notesOperation](../api/notes_post_operations.md) |[notesOperation](notesoperation.md)| Create a new notesOperation by posting to the operations collection.|
|[List operations](../api/notes_list_operations.md) |[notesOperation](notesoperation.md) collection| Get a notesOperation object collection.|
|[Create page](../api/notes_post_pages.md) |[page](page.md)| Create a new page by posting to the pages collection.|
|[List pages](../api/notes_list_pages.md) |[page](page.md) collection| Get a page object collection.|
|[Create resource](../api/notes_post_resources.md) |[resource](resource.md)| Create a new resource by posting to the resources collection.|
|[List resources](../api/notes_list_resources.md) |[resource](resource.md) collection| Get a resource object collection.|
|[Create sectionGroup](../api/notes_post_sectiongroups.md) |[sectionGroup](sectiongroup.md)| Create a new sectionGroup by posting to the sectionGroups collection.|
|[List sectionGroups](../api/notes_list_sectiongroups.md) |[sectionGroup](sectiongroup.md) collection| Get a sectionGroup object collection.|
|[Create section](../api/notes_post_sections.md) |[section](section.md)| Create a new section by posting to the sections collection.|
|[List sections](../api/notes_list_sections.md) |[section](section.md) collection| Get a section object collection.|
|[Delete](../api/notes_delete.md) | None |Delete notes object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string| Read-only.|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|notebooks|[notebook](notebook.md) collection| Read-only. Nullable.|
|operations|[notesOperation](notesoperation.md) collection| Read-only. Nullable.|
|pages|[page](page.md) collection| Read-only. Nullable.|
|resources|[resource](resource.md) collection| Read-only. Nullable.|
|sectionGroups|[sectionGroup](sectiongroup.md) collection| Read-only. Nullable.|
|sections|[section](section.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.notes"
}-->

```json
{
  "id": "string (identifier)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "notes resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
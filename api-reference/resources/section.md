# section resource type

A section in a OneNote notebook


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get section](../api/section_get.md) | [section](section.md) |Read properties and relationships of section object.|
|[Create page](../api/section_post_pages.md) |[page](page.md)| Create a new page by posting to the pages collection.|
|[List pages](../api/section_list_pages.md) |[page](page.md) collection| Get a page object collection.|
|[Update](../api/section_update.md) | [section](section.md)	|Update section object. |
|[Delete](../api/section_delete.md) | None |Delete section object. |
|[Copytonotebook](../api/section_copytonotebook.md)|[copyStatusModel](copystatusmodel.md)||
|[Copytosectiongroup](../api/section_copytosectiongroup.md)|[copyStatusModel](copystatusmodel.md)||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdBy|string|The user who created the section.|
|createdByIdentity|[oneNoteIdentitySet](onenoteidentityset.md)|The user who created the section.|
|createdTime|[dateTimeOffset](datetimeoffset.md)|The date and time when the section was created.|
|id|string|The unique identifier of the section. Read-only.|
|isDefault|boolean|Indicates whether this is the user's default section.|
|lastModifiedBy|string|The user who last modified the section.|
|lastModifiedByIdentity|[oneNoteIdentitySet](onenoteidentityset.md)|The user who last modified the section.|
|lastModifiedTime|[dateTimeOffset](datetimeoffset.md)|The date and time when the section was last modified.|
|name|string|The name of the section.|
|pagesUrl|string|The /pages endpoint where you can get details for all the pages in the section.|
|self|string|The endpoint where you can get details about the section.|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|pages|[page](page.md) collection| Read-only. Nullable.|
|parentNotebook|[notebook](notebook.md)| Read-only. Nullable.|
|parentSectionGroup|[sectionGroup](sectiongroup.md)| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.section"
}-->

```json
{
  "createdBy": "string",
  "createdByIdentity": {"@odata.type": "microsoft.graph.oneNoteIdentitySet"},
  "createdTime": "String (timestamp)",
  "id": "string (identifier)",
  "isDefault": true,
  "lastModifiedBy": "string",
  "lastModifiedByIdentity": {"@odata.type": "microsoft.graph.oneNoteIdentitySet"},
  "lastModifiedTime": "String (timestamp)",
  "name": "string",
  "pagesUrl": "string",
  "self": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "section resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
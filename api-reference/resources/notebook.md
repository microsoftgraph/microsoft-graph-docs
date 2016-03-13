# notebook resource type

A OneNote notebook


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get notebook](../api/notebook_get.md) | [notebook](notebook.md) |Read properties and relationships of notebook object.|
|[Create sectionGroup](../api/notebook_post_sectiongroups.md) |[sectionGroup](sectiongroup.md)| Create a new sectionGroup by posting to the sectionGroups collection.|
|[List sectionGroups](../api/notebook_list_sectiongroups.md) |[sectionGroup](sectiongroup.md) collection| Get a sectionGroup object collection.|
|[Create section](../api/notebook_post_sections.md) |[section](section.md)| Create a new section by posting to the sections collection.|
|[List sections](../api/notebook_list_sections.md) |[section](section.md) collection| Get a section object collection.|
|[Update](../api/notebook_update.md) | [notebook](notebook.md)	|Update notebook object. |
|[Delete](../api/notebook_delete.md) | None |Delete notebook object. |
|[Copynotebook](../api/notebook_copynotebook.md)|[copyStatusModel](copystatusmodel.md)||
|[Exportnotebook](../api/notebook_exportnotebook.md)|None||
|[Importnotebook](../api/notebook_importnotebook.md)|[importStatusModel](importstatusmodel.md)||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdBy|string|The user who created the notebook.|
|createdByIdentity|[oneNoteIdentitySet](onenoteidentityset.md)|The user who created the notebook.|
|createdTime|[dateTimeOffset](datetimeoffset.md)|The date and time when the notebook was created.|
|id|string|The unique identifier of the notebook. Read-only.|
|isDefault|boolean|Indicates whether this is the user's default notebook.|
|isShared|boolean|Indicates whether the notebook is shared. If true, the contents of the notebook can be seen by people other than the owner.|
|lastModifiedBy|string|The user who last modified the notebook.|
|lastModifiedByIdentity|[oneNoteIdentitySet](onenoteidentityset.md)|The user who last modified the notebook.|
|lastModifiedTime|[dateTimeOffset](datetimeoffset.md)|The date and time when the notebook was last modified.|
|links|[notebookLinks](notebooklinks.md)|The value of oneNoteClientURL can be used to open the notebook using the OneNote native client app if it's installed. The value of oneNoteWebURL can be used to open the web-browser based OneNote Online client.|
|name|string|The name of the notebook.|
|sectionGroupsUrl|string|The URL for the sectionGroups navigation property, which returns all the section groups in the notebook.|
|sectionsUrl|string|The URL for the sections navigation property, which returns all the sections in the notebook.|
|self|string|The endpoint where you can get details about the notebook.|
|userRole|string|One of three values: Owner, Contributor, or Reader. Owner represents owner-level access to the notebook. Contributor represents read/write access to the notebook. Reader represents read-only access to the notebook. Possible values are: `Owner`, `Contributor`, `Reader`, `None`.|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|sectionGroups|[sectionGroup](sectiongroup.md) collection| Read-only. Nullable.|
|sections|[section](section.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.notebook"
}-->

```json
{
  "createdBy": "string",
  "createdByIdentity": {"@odata.type": "microsoft.graph.oneNoteIdentitySet"},
  "createdTime": "String (timestamp)",
  "id": "string (identifier)",
  "isDefault": true,
  "isShared": true,
  "lastModifiedBy": "string",
  "lastModifiedByIdentity": {"@odata.type": "microsoft.graph.oneNoteIdentitySet"},
  "lastModifiedTime": "String (timestamp)",
  "links": {"@odata.type": "microsoft.graph.notebookLinks"},
  "name": "string",
  "sectionGroupsUrl": "string",
  "sectionsUrl": "string",
  "self": "string",
  "userRole": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "notebook resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
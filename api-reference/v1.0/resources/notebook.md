# notebook resource type

A OneNote notebook.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.onenoteEntityHierarchyModel",
  "optionalProperties": [
    "sectionGroups",
    "sections"
  ],
  "@odata.type": "microsoft.graph.notebook"
}-->

```json
{
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "id": "string (identifier)",
  "isDefault": true,
  "isShared": true,
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "links": {"@odata.type": "microsoft.graph.notebookLinks"},
  "displayName": "string",
  "sectionGroupsUrl": "string",
  "sectionsUrl": "string",
  "self": "string",
  "userRole": "String"
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdBy|[identitySet](identityset.md)|Identity of the user, device, and application which created the item. Read-only.|
|createdDateTime|DateTimeOffset|The date and time when the notebook was created. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only.|
|id|String|The unique identifier of the notebook. Read-only.|
|isDefault|Boolean|Indicates whether this is the user's default notebook. Read-only.|
|isShared|Boolean|Indicates whether the notebook is shared. If true, the contents of the notebook can be seen by people other than the owner. Read-only.|
|lastModifiedBy|[identitySet](identityset.md)|Identity of the user, device, and application which created the item. Read-only.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the notebook was last modified. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only.|
|links|[NotebookLinks](notebooklinks.md)|Links for opening the notebook. The `oneNoteClientURL` link opens the notebook in the OneNote native client if it's installed. The `oneNoteWebURL` link opens the notebook in OneNote Online.|
|displayName|String|The name of the notebook.|
|sectionGroupsUrl|String|The URL for the `sectionGroups` navigation property, which returns all the section groups in the notebook. Read-only.|
|sectionsUrl|String|The URL for the `sections` navigation property, which returns all the sections in the notebook. Read-only.|
|self|String|The endpoint where you can get details about the notebook. Read-only.|
|userRole|onenoteUserRole|Possible values are: `Owner`, `Contributor`, `Reader`, `None`. Owner represents owner-level access to the notebook. Contributor represents read/write access to the notebook. Reader represents read-only access to the notebook. Read-only.|

### onenoteUserRole values

| Member      | Value
|:------------|:------------
| Owner       | 0
| Contributor | 1
| Reader      | 2
| None        | -1


## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|sectionGroups|[SectionGroup](sectiongroup.md) collection|The section groups in the notebook. Read-only. Nullable.|
|sections|[OnenoteSection](section.md) collection|The sections in the notebook. Read-only. Nullable.|

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get notebook](../api/notebook_get.md) | [Notebook](notebook.md) |Read the properties and relationships of the notebook.|
|[getRecentNotebooks](../api/notebook_getrecentnotebooks.md) | [recentNotebook](recentnotebook.md) collection | Get a collection of the most recently accessed notebooks for the user. |
|[Create section group](../api/notebook_post_sectiongroups.md) |[SectionGroup](sectiongroup.md)| Create a section group by posting to the sectionGroups collection in the specified notebook.|
|[List section groups](../api/notebook_list_sectiongroups.md) |[SectionGroup](sectiongroup.md) collection| Get a collection of section groups in the specified notebook.|
|[Create section](../api/notebook_post_sections.md) |[OnenoteSection](section.md)| Create a section by posting to the sections collection in the specified notebook.|
|[List sections](../api/notebook_list_sections.md) |[OnenoteSection](section.md) collection| Get a collection of sections in the specified notebook.|
|[copyNotebook](../api/notebook_copynotebook.md)| None | Copies a notebook.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "notebook resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

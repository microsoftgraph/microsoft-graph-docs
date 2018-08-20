# sectionGroup resource type

A section group in a OneNote notebook. Section groups can contain sections and section groups.

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.onenoteEntityHierarchyModel",
  "optionalProperties": [
    "parentNotebook",
    "parentSectionGroup",
    "sectionGroups",
    "sections"
  ],
  "@odata.type": "microsoft.graph.sectionGroup"
}-->

```json
{
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "id": "string (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "string",
  "sectionGroupsUrl": "string",
  "sectionsUrl": "string",
  "self": "string"
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdBy|[identitySet](identityset.md)|Identity of the user, device, and application which created the item. Read-only.|
|createdDateTime|DateTimeOffset|The date and time when the section group was created. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only.|
|id|String|The unique identifier of the section group. Read-only.|
|lastModifiedBy|[identitySet](identityset.md)|Identity of the user, device, and application which created the item. Read-only.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the section group was last modified. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only.|
|displayName|String|The name of the section group.|
|sectionGroupsUrl|String|The URL for the `sectionGroups` navigation property, which returns all the section groups in the section group. Read-only.|
|sectionsUrl|String|The URL for the `sections` navigation property, which returns all the sections in the section group. Read-only.|
|self|String|The endpoint where you can get details about the section group. Read-only.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|parentNotebook|[Notebook](notebook.md)|The notebook that contains the section group. Read-only.|
|parentSectionGroup|[SectionGroup](sectiongroup.md)|The section group that contains the section group. Read-only.|
|sectionGroups|[SectionGroup](sectiongroup.md) collection|The section groups in the section. Read-only. Nullable.|
|sections|[OnenoteSection](section.md) collection|The sections in the section group. Read-only. Nullable.|

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get section group](../api/sectiongroup_get.md) | [SectionGroup](sectiongroup.md) |Read the properties and relationships of the section group.|
|[Create section group](../api/sectiongroup_post_sectiongroups.md) |[SectionGroup](sectiongroup.md)| Create a section group by posting to the sectionGroups collection in the specified section group.|
|[List section groups](../api/sectiongroup_list_sectiongroups.md) |[SectionGroup](sectiongroup.md) collection| Get collection of section groups in the specified section group.|
|[Create section](../api/sectiongroup_post_sections.md) |[OnenoteSection](section.md)| Create a section by posting to the sections collection in the specified section group.|
|[List sections](../api/sectiongroup_list_sections.md) |[OnenoteSection](section.md) collection| Get a collection of sections in the specified section group.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "sectionGroup resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

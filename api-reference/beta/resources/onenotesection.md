---
title: "onenoteSection resource type"
description: "A section in a OneNote notebook. Sections can contain pages."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "jewan-microsoft"
---

# onenoteSection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A section in a OneNote notebook. Sections can contain pages.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdBy|[identitySet](identityset.md)|Identity of the user, device, and application which created the item. Read-only.|
|createdDateTime|DateTimeOffset|The date and time when the section was created. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only.|
|id|String|The unique identifier of the section.  Read-only.|
|isDefault|Boolean|Indicates whether this is the user's default section. Read-only.|
|lastModifiedBy|[identitySet](identityset.md)|Identity of the user, device, and application which created the item. Read-only.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the section was last modified. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only.|
|links|[sectionLinks](sectionlinks.md)|Links for opening the section. The `oneNoteClientURL` link opens the section in the OneNote native client if it's installed. The `oneNoteWebURL` link opens the section in OneNote on the web.|
|displayName|String|The name of the section. |
|pagesUrl|String|The `pages` endpoint where you can get details for all the pages in the section. Read-only.|
|self|String|The endpoint where you can get details about the section. Read-only.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|pages|[onenotePage](onenotepage.md) collection|The collection of pages in the section.  Read-only. Nullable.|
|parentNotebook|[notebook](notebook.md)|The notebook that contains the section.  Read-only.|
|parentSectionGroup|[sectionGroup](sectiongroup.md)|The section group that contains the section.  Read-only.|

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get section](../api/section-get.md) | [onenoteSection](onenotesection.md) |Read the properties and relationships of the section.|
|[Create page](../api/section-post-pages.md) |[onenotePage](onenotepage.md)| Create a page by posting to the pages collection in the specified section.|
|[List pages](../api/section-list-pages.md) |[onenotePage](onenotepage.md) collection| Get a collection of pages in the specified section.|
|[copyToNotebook](../api/section-copytonotebook.md)|None|Copy the section to a specific notebook.|
|[copyToSectionGroup](../api/section-copytosectiongroup.md)|None|Copy the section to a specific section group.|


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "pages",
    "parentNotebook",
    "parentSectionGroup"
  ],
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity",
  "@odata.type": "microsoft.graph.onenoteSection"
}-->

```json
{
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "id": "string (identifier)",
  "isDefault": true,
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "links": {"@odata.type": "microsoft.graph.sectionLinks"},
  "displayName": "string",
  "pagesUrl": "string",
  "self": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "onenoteSection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->



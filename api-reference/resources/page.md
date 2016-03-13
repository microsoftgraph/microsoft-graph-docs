# page resource type

A page in a OneNote section


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get page](../api/page_get.md) | [page](page.md) |Read properties and relationships of page object.|
|[Update](../api/page_update.md) | [page](page.md)	|Update page object. |
|[Delete](../api/page_delete.md) | None |Delete page object. |
|[Copytosection](../api/page_copytosection.md)|[copyStatusModel](copystatusmodel.md)||
|[Patchcontent](../api/page_patchcontent.md)|None||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|content|stream||
|contentUrl|string|The URL for the page's HTML content|
|createdByAppId|string|The unique identifier of the application that created the page|
|createdTime|[dateTimeOffset](datetimeoffset.md)|The date and time when the page was created in UTC format|
|id|string|The unique identifier of the page Read-only.|
|lastModifiedTime|[dateTimeOffset](datetimeoffset.md)||
|level|int32||
|links|[pageLinks](pagelinks.md)|The oneNoteClientURL link to open the page in the OneNote native client if it's installed, and oneNoteWebUrl to open the page in OneNote Online|
|order|int32||
|self|string||
|title|string|The title of the page|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|parentNotebook|[notebook](notebook.md)| Read-only. Nullable.|
|parentSection|[section](section.md)| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.page"
}-->

```json
{
  "content": "stream",
  "contentUrl": "string",
  "createdByAppId": "string",
  "createdTime": "String (timestamp)",
  "id": "string (identifier)",
  "lastModifiedTime": "String (timestamp)",
  "level": 1024,
  "links": {"@odata.type": "microsoft.graph.pageLinks"},
  "order": 1024,
  "self": "string",
  "title": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "page resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
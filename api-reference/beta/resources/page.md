# page resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A page in a OneNote notebook.

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "parentNotebook",
    "parentSection"
  ],
  "@odata.type": "microsoft.graph.onenotePage"
}-->

```json
{
  "content": "stream",
  "contentUrl": "string",
  "createdByAppId": "string",
  "createdDateTime": "String (timestamp)",
  "id": "string (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "level": 1024,
  "links": {"@odata.type": "microsoft.graph.pageLinks"},
  "order": 1024,
  "self": "string",
  "title": "string"
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|content|Stream|The page's HTML content.|
|contentUrl|String|The URL for the page's HTML content.  Read-only.|
|createdByAppId|String|The unique identifier of the application that created the page. Read-only.|
|createdDateTime|DateTimeOffset|The date and time when the page was created. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only.|
|id|String|The unique identifier of the page.  Read-only.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the page was last modified. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only.|
|level|Int32|The indentation level of the page. Read-only.|
|links|[PageLinks](pagelinks.md)|Links for opening the page. The `oneNoteClientURL` link opens the page in the OneNote native client if it 's installed. The `oneNoteWebUrl` link opens the page in OneNote Online. Read-only.|
|order|Int32|The order of the page within its parent section. Read-only.|
|self|String|The endpoint where you can get details about the page. Read-only.|
|title|String|The title of the page. |

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|parentNotebook|[Notebook](notebook.md)|The notebook that contains the page.  Read-only.|
|parentSection|[Section](section.md)|The section that contains the page. Read-only.|

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get page](../api/page_get.md) | [Page](page.md) |Read the properties and relationships of the page.|
|[Update page content](../api/page_update.md) | None |Update the HTML content of the page. |
|[Delete page](../api/page_delete.md) | None |Delete the page. |
|[copyToSection](../api/page_copytosection.md)| None |Copies the page to a specific section.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "page resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
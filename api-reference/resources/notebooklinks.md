# notebookLinks resource type




### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|oneNoteClientUrl|[externalLink](externallink.md)|The value of oneNoteClientURL can be used to open the notebook using the OneNote native client app if it's installed.|
|oneNoteWebUrl|[externalLink](externallink.md)|The value of oneNoteWebURL can be used to open the web-browser based OneNote Online client.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.notebooklinks"
}-->

```json
{
  "oneNoteClientUrl": {"@odata.type": "microsoft.graph.externalLink"},
  "oneNoteWebUrl": {"@odata.type": "microsoft.graph.externalLink"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "notebookLinks resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
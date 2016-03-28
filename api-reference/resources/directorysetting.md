# directorySetting resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get directorySetting](../api/directorysetting_get.md) | [directorySetting](directorysetting.md) |Read properties and relationships of directorySetting object.|
|[Update](../api/directorysetting_update.md) | [directorySetting](directorysetting.md)	|Update directorySetting object. |
|[Delete](../api/directorysetting_delete.md) | None |Delete directorySetting object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|displayName|string||
|id|string| Read-only.|
|templateId|string||
|values|settingValue collection||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.directorySetting"
}-->

```json
{
  "displayName": "string",
  "id": "string (identifier)",
  "templateId": "string",
  "values": [{"@odata.type": "microsoft.graph.settingValue"}]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "directorySetting resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
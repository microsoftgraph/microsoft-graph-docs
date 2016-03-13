# directoryRoleTemplate resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get directoryRoleTemplate](../api/directoryroletemplate_get.md) | [directoryRoleTemplate](directoryroletemplate.md) |Read properties and relationships of directoryRoleTemplate object.|
|[Update](../api/directoryroletemplate_update.md) | [directoryRoleTemplate](directoryroletemplate.md)	|Update directoryRoleTemplate object. |
|[Delete](../api/directoryroletemplate_delete.md) | None |Delete directoryRoleTemplate object. |
|[Checkmembergroups](../api/directoryroletemplate_checkmembergroups.md)|string collection||
|[Getmembergroups](../api/directoryroletemplate_getmembergroups.md)|string collection||
|[Getmemberobjects](../api/directoryroletemplate_getmemberobjects.md)|string collection||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|description|string||
|displayName|string||
|id|string| Read-only.|

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.directoryroletemplate"
}-->

```json
{
  "description": "string",
  "displayName": "string",
  "id": "string (identifier)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "directoryRoleTemplate resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
# directoryRole resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get directoryRole](../api/directoryrole_get.md) | [directoryRole](directoryrole.md) |Read properties and relationships of directoryRole object.|
|[Create member](../api/directoryrole_post_members.md) |[directoryObject](directoryobject.md)| Create a new member by posting to the members collection.|
|[List members](../api/directoryrole_list_members.md) |[directoryObject](directoryobject.md) collection| Get a member object collection.|
|[Update](../api/directoryrole_update.md) | [directoryRole](directoryrole.md)	|Update directoryRole object. |
|[Delete](../api/directoryrole_delete.md) | None |Delete directoryRole object. |
|[Checkmembergroups](../api/directoryrole_checkmembergroups.md)|string collection||
|[Getmembergroups](../api/directoryrole_getmembergroups.md)|string collection||
|[Getmemberobjects](../api/directoryrole_getmemberobjects.md)|string collection||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|description|string||
|displayName|string||
|id|string| Read-only.|
|roleTemplateId|string||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|members|[directoryObject](directoryobject.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.directoryrole"
}-->

```json
{
  "description": "string",
  "displayName": "string",
  "id": "string (identifier)",
  "roleTemplateId": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "directoryRole resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
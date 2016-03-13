# directorySettingTemplate resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get directorySettingTemplate](../api/directorysettingtemplate_get.md) | [directorySettingTemplate](directorysettingtemplate.md) |Read properties and relationships of directorySettingTemplate object.|
|[Update](../api/directorysettingtemplate_update.md) | [directorySettingTemplate](directorysettingtemplate.md)	|Update directorySettingTemplate object. |
|[Delete](../api/directorysettingtemplate_delete.md) | None |Delete directorySettingTemplate object. |
|[Checkmembergroups](../api/directorysettingtemplate_checkmembergroups.md)|string collection||
|[Getmembergroups](../api/directorysettingtemplate_getmembergroups.md)|string collection||
|[Getmemberobjects](../api/directorysettingtemplate_getmemberobjects.md)|string collection||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|description|string||
|displayName|string||
|id|string| Read-only.|
|values|[settingTemplateValue](settingtemplatevalue.md) collection||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.directorysettingtemplate"
}-->

```json
{
  "description": "string",
  "displayName": "string",
  "id": "string (identifier)",
  "values": [{"@odata.type": "microsoft.graph.settingTemplateValue"}]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "directorySettingTemplate resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
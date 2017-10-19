# directorySettingTemplate resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Directory setting templates represent system-defined settings available to the tenant. [Directory settings](directorysetting.md) can be created based on the available directorySettingTemplates, and values changed from their preset defaults. Directory setting templates cannot be created, updated or deleted. These settings can represent tenant-wide settings, or can represent specific entity settings.  Currently, the only templates available apply to Office groups, and include settings such as whether users can create groups or invite guests from outside the organization to become members of a group.

> **Note**: The /beta version of the directorySettingTemplate resource type only applies to groups. The /v1.0 version has been renamed to groupSettingTemplate.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get directorySettingTemplate](../api/directorysettingtemplate_get.md) | [directorySettingTemplate](directorysettingtemplate.md) |Read the specific properties of one of the system defined directorySettingTemplate objects.|
|[List directorySettingTemplate](../api/directorysettingtemplate_list.md) | [Collection of directorySettingTemplate](directorysettingtemplate.md) |List all of the system defined directorySettingTemplate objects.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|description|string|Description of the template. Read-only.|
|displayName|string|Display name of the template. Read-only. |
|id|string| Unique identifier for the template. Read-only.|
|values|[settingTemplateValue](settingtemplatevalue.md) collection| Collection of settingTemplateValues that list the set of available settings, defaults and types that make up this template.  Read-only. |

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.directorySettingTemplate"
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
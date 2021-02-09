---
title: "groupSettingTemplate resource type"
description: "Group setting templates represent system-defined settings available to the tenant."
localization_priority: Normal
author: "yyuank"
ms.prod: "groups"
doc_type: resourcePageType
---

# groupSettingTemplate resource type

Namespace: microsoft.graph

Group setting templates represent system-defined settings available to the tenant. [Group settings](groupsetting.md) can be created based on the available **groupSettingTemplates**, and values changed from their preset defaults. Group setting templates cannot be created, updated or deleted. These settings can represent tenant-wide settings, or can represent specific group settings. Currently, the only templates available apply to Microsoft 365 groups, and include settings such as whether users can create groups or invite guests from outside the organization to become members of a group.

## Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
|[Get groupSettingTemplate](../api/groupsettingtemplate-get.md) | [groupSettingTemplate](groupsettingtemplate.md) | Read the specific properties of one of the system defined groupSettingTemplate objects. |
|[List groupSettingTemplate](../api/groupsettingtemplate-list.md) | [Collection of groupSettingTemplate](groupsettingtemplate.md) |List all of the system defined groupSettingTemplate objects.|

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|description|String| Description of the template. |
|displayName|String| Display name of the template. |
|id|String| Unique identifier for the template. Read-only.|
|values|[settingTemplateValue](settingtemplatevalue.md) collection| Collection of settingTemplateValues that list the set of available settings, defaults and types that make up this template. |

## Relationships

None.


## JSON representation

Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "openType": true,
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.directoryObject",
  "@odata.type": "microsoft.graph.groupSettingTemplate"
}-->

```json
{
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "values": [{"@odata.type": "microsoft.graph.settingTemplateValue"}]
}

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "groupSettingTemplate resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


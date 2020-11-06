---
title: "groupSetting resource type"
description: "Group settings control behaviors such as blocked word lists for group display names or whether guest users are allowed to be group owners."
author: "yyuank"
localization_priority: Normal
ms.prod: "groups"
doc_type: resourcePageType
---

# groupSetting resource type

Namespace: microsoft.graph

Group settings control behaviors such as blocked word lists for group display names or whether guest users are allowed to be group owners.

Group settings can be created based on the available [groupSettingTemplates](groupsettingtemplate.md), and changed from their preset defaults. These settings govern group behaviors at a tenant-wide level or to a specific group. When the same setting is defined at both the tenant-wide and to a specific group, the group-level setting overrides the tenant-wide setting.  For example, the tenant-wide setting may allow guests to be invited by existing members of groups, but an individual group setting can override and not allow guests to be invited by members of the group. Group settings only govern Microsoft 365 groups behavior.

## Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
|[Create setting](../api/groupsetting-post-groupsettings.md) | [groupSetting](groupsetting.md) |Create a setting object based on a groupSettingTemplate. The POST request must provide settingValues for all the settings defined in the template. |
|[Get setting](../api/groupsetting-get.md) | [groupSetting](groupsetting.md) | Read properties of a specific setting object. |
|[List settings](../api/groupsetting-list.md) | [groupSetting](groupsetting.md) collection | List properties of all setting objects. |
|[Update setting](../api/groupsetting-update.md) | [groupSetting](groupsetting.md) | Update groupsetting object. |
|[Delete setting](../api/groupsetting-delete.md) | None | Delete a setting object. |

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|displayName|String| Display name of this group of settings, which comes from the associated template. |
|id|String| Unique identifier for these settings. Read-only. |
|templateId|String| Unique identifier for the template used to create this group of settings. Read-only. |
|values|[settingValue](settingvalue.md) collection| Collection of name value pairs. Must contain and set all the settings defined in the template. |

## Relationships

None.

## JSON representation

Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "openType": true,
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.groupSetting"
}-->

```json
{
  "displayName": "String",
  "id": "String (identifier)",
  "templateId": "String",
  "values": [{"@odata.type": "microsoft.graph.settingValue"}]
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "groupSetting resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


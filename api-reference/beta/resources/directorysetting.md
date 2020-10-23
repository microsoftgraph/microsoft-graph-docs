---
title: "directorySetting resource type"
description: "Directory settings can be created based on the available directorySettingTemplates, and changed from their preset defaults."
localization_priority: Normal
author: "dkershaw10"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# directorySetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Directory settings can be created based on the available [directorySettingTemplates](directorysettingtemplate.md), and changed from their preset defaults. These settings can govern entity or feature behaviors, both at a tenant-wide level or at a specific entity level. When the same setting is defined at both the tenant-wide and specific entity level, the specific entity level setting may opt-out from the tenant-wide setting.  For example, the tenant-wide setting may allow guests to be invited by existing members of groups, but a specific group setting may opt-out and not allow guests to be invited by members of the group. Currently system defined settings are only govern Office groups behavior.

> **Note**: The /beta version of the directorySetting resource type only applies to groups. The /v1.0 version has been renamed to groupSetting.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create setting](../api/directorysetting-post-settings.md) | [directorySetting](directorysetting.md) |Create a setting object based on a directorySettingTemplate. The POST request must provide settingValues for all the settings defined in the template.|
|[Get setting](../api/directorysetting-get.md) | [directorySetting](directorysetting.md) |Read properties of a specific setting object.|
|[List settings](../api/directorysetting-list.md) | [directorySetting](directorysetting.md) collection |List properties of all setting objects.|
|[Update setting](../api/directorysetting-update.md) | [directorySetting](directorysetting.md)	|Update a setting object. Only settingValues can be changed in an update.|
|[Delete setting](../api/directorysetting-delete.md) | None |Delete a setting object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|displayName|string|Display name of this group of settings, which comes from the associated template. Read-only.|
|id|string| Unique identifier for these settings. Read-only.|
|templateId|string| Unique identifier for the template used to create this group of settings. Read-only.|
|values|[settingValue](settingvalue.md) collection| Collection of name value pairs. Must contain and set all the settings defined in the template.|

## Relationships
None


## JSON representation

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
<!--
{
  "type": "#page.annotation",
  "description": "directorySetting resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->



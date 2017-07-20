# groupSetting resource type

Group settings can be created based on the available [groupSettingTemplates](groupSettingTemplate.md), and changed from their preset defaults. These settings can govern entity or feature behaviors, both at a tenant-wide level or at a specific entity level. When the same setting is defined at both the tenant-wide and specific entity level, the specific entity level setting may opt-out from the tenant-wide setting.  For example, the tenant-wide setting may allow guests to be invited by existing members of groups, but a specific group setting may opt-out and not allow guests to be invited by members of the group. Currently system defined settings are only govern Office groups behavior.

### Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
|[Create setting](../api/groupsetting_post_settings.md) | [groupSetting](groupsetting.md) |Create a setting object based on a groupSettingTemplate. The POST request must provide settingValues for all the settings defined in the template. |
|[Get setting](../api/groupsetting_get.md) | [groupSetting](groupsetting.md) | Read properties of a specific setting object. |
|[List settings](../api/groupsetting_list.md) | [groupSetting](groupsetting.md) collection | List properties of all setting objects. |
|[Update setting](../api/groupsetting_update.md) | [groupSetting](groupsetting.md) | Update groupsetting object. |
|[Delete setting](../api/groupsetting_delete.md) | None | Delete a setting object. |

### Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|displayName|String| Display name of this group of settings, which comes from the associated template. |
|id|String| Unique identifier for these settings. Read-only. |
|templateId|String| Unique identifier for the template used to create this group of settings. Read-only. |
|values|[settingValue](settingvalue.md) collection| Collection of name value pairs. Must contain and set all the settings defined in the template. |

### Relationships

None

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
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
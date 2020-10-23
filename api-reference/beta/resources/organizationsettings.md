---
title: "organizationSettings resource type"
description: "Contains settings that are applicable to the organization or the user objects within it."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# organizationSettings resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains settings that are applicable to the [organization](organization.md) or that should be applied to [user](user.md) objects within an organization.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get organization settings](../api/organizationsettings-get.md) | [organizationSettings](organizationsettings.md) | Read the organization settings object. |
| [Create profileCardProperty](../api/organizationsettings-post-profilecardproperties.md) | [profileCardProperty](profilecardproperty.md) | Create a new **profileCardProperty** by posting to the **profileCardProperty** object collection. |
| [List profileCardProperties](../api/organizationsettings-list-profilecardproperties.md) | [profileCardProperty](profilecardproperty.md) collection | Get a **profileCardProperty** object collection. |
| [Get itemInsightsSettings](../api/iteminsightssettings-get.md) | [itemInsightsSettings](iteminsightssettings.md) | Get the properties of an **itemInsightsSettings** object. |
| [Update itemInsightsSettings](../api/iteminsightssettings-update.md) | [itemInsightsSettings](iteminsightssettings.md) | Update the properties of the specified **itemInsightsSettings** resource. |

## Properties

None.

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|id |String| Id of the settings object for the organization. |
|profileCardProperties|[profileCardProperty](profilecardproperty.md) collection| Contains a collection of the properties an administrator has defined as visible on the Microsoft 365 profile card. [Get organization settings](../api/organizationsettings-get.md) returns the properties configured for profile cards for the organization.|
|itemInsights|[itemInsightsSettings](iteminsightssettings.md)| Contains the properties that are configured by an administrator for the visibility of Microsoft Graph-derived insights, between a user and other items in Microsoft 365, such as documents or sites. [Get itemInsightsSettings](../api/iteminsightssettings-get.md) through this navigation property.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.organizationSettings",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)",
  "profileCardProperties": [{"@odata.type": "microsoft.graph.profileCardProperty"}]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "organizationSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->



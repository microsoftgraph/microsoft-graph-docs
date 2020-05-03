---
title: "organizationSettings resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# organizationSettings resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

PROVIDE DESCRIPTION HERE

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create profileCardProperty](../api/organizationsettings-post-profilecardproperties.md) | [profileCardProperty](profilecardproperty.md) | Create a new profileCardProperty by posting to the profileCardProperties collection. |
| [List profileCardProperties](../api/organizationsettings-list-profilecardproperties.md) | [profileCardProperty](profilecardproperty.md) collection | Get a profileCardProperty object collection. |
| [Delete](../api/organizationsettings-delete.md) | None | Delete organizationSettings object. |

## Properties

None

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|profileCardProperties|[profileCardProperty](profilecardproperty.md) collection| Read-only. Nullable.|

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "organizationSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
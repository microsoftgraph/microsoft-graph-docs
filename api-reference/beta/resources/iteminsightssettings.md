---
title: "itemInsightsSettings resource type"
description: "Represents privacy settings for itemInsights."
localization_priority: Normal
author: "simonhult"
ms.prod: "insights"
doc_type: resourcePageType
---

# itemInsightsSettings resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents privacy settings for [itemInsights](iteminsights.md), which configure the visibility of insights derived from Microsoft Graph, between users and other items (such as documents or sites) in Microsoft 365.

## Methods

| Method       | Return Type | Description |
|:-------------------------------------------------------------|:----------------------------------------------|:-----------------------------------------------------------------|
| [Get](../api/iteminsightssettings-get.md)| [itemInsightsSettings](iteminsightssettings.md) | Read the properties of an **itemInsightsSettings** object. |
| [Update](../api/iteminsightssettings-update.md)| [itemInsightsSettings](iteminsightssettings.md) | Update an **itemInsightsSettings** object.|


## Properties
| Property   | Type|Description|
|:---------------|:--------|:----------|
|isEnabledInOrganization|Boolean| `true` if organization item insights are enabled; `false` if organization item insights are disabled for all users without exceptions. Default is `true`. Optional.|
|disabledForGroup|String| The ID of an Azure AD group, of which the members' item insights are disabled. Default is `empty`. Optional.|

## JSON representation

Here is a JSON representation of the resource
<!-- {
  "blockType": "resource",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.itemInsightsSettings"
}-->

```json
{
  "isEnabledInOrganization": "Boolean",
  "disabledForGroup": "String"
}
```



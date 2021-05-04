---
title: "userAnalytics resource type"
description: "The user's settings and activity statistics."
localization_priority: Normal
author: "madehmer"
ms.prod: "insights"
doc_type: "resourcePageType"
---

# userAnalytics resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The user's settings and activity statistics.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
[Get settings](../api/useranalytics-get-settings.md) | [settings](settings.md) | Get the user's settings for using the analytics API.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|settings|[settings](settings.md)|The current settings for a user to use the analytics API.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|activityStatistics|[activityStatistics](activitystatistics.md) collection| The collection of work activities that a user spent time on during and outside of working hours. Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [
    "activityStatistics"
  ],
  "@odata.type": "microsoft.graph.userAnalytics"
}-->

```json
{
  "id": "string",
  "settings": {"@odata.type": "microsoft.graph.settings"},
  "activityStatistics": [{"@odata.type": "microsoft.graph.activityStatistics"}]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "userAnalytics resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->



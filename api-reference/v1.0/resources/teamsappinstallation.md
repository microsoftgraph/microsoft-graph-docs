---
title: "teamsAppInstallation resource type"
description: "A teamsApp installed in a team. "
author: "clearab"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsAppInstallation resource type

Namespace: microsoft.graph

A [teamsApp](teamsapp.md) installed in a [team](team.md). Any bots that are part of the app will become part of any team the app is added to.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List apps](../api/teamsappinstallation-list.md) | [teamsAppInstallation](teamsappinstallation.md) | Lists apps installed in a team.|
|[Add app](../api/teamsappinstallation-add.md) | [teamsAppInstallation](teamsappinstallation.md) | Adds (installs) an app to a team.|
|[Remove app](../api/teamsappinstallation-delete.md) | None | Removes (uninstalls) an app from a team.|
|[Upgrade app](../api/teamsappinstallation-upgrade.md) | None | Upgrades to the latest version of the app.|

## Properties

| Property            | Type     | Description |
|:------------------- |:-------- |:----------- |
| id                  | string   | A unique id (not the teams appid). |

## Relationships

| Relationship   | Type    | Description |
|:---------------|:--------|:----------|
|teamsApp|[teamsApp](teamsapp.md)| The app that is installed. |
|teamsAppDefinition|[teamsAppDefinition](teamsappdefinition.md)| The details of this version of the app. |

## JSON representation

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAppInstallation",
  "baseType": "microsoft.graph.entity"
}-->

```json
{
  "id": "string"
}
```

## See also

- [teamsApp](teamsapp.md)
- [teamsAppDefinition](teamsappdefinition.md)
- [teamsTab](../resources/teamstab.md)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "teamsApp resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


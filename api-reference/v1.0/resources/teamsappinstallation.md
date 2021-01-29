---
title: "teamsAppInstallation resource type"
description: "Represents a teamsApp installed in a team or the personal scope of a user."
author: "AkJo"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsAppInstallation resource type

Namespace: microsoft.graph

Represents a [teamsApp](teamsapp.md) installed in a [team](team.md) or the personal scope of a [user](user.md). Any bots that are part of the app will become part of any team or user's personal scope that the app is added to.

> [!NOTE]
> The `id` of a **teamsAppInstallation** resource is not the same value as the `id` of the associated **teamsApp** resource.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List apps installed in team](../api/team-list-installedapps.md) | [teamsAppInstallation](teamsappinstallation.md) collection | List apps installed in a team.|
|[Get app installed in team](../api/team-get-installedapps.md) | [teamsAppInstallation](teamsappinstallation.md) | Get the specified app installed in a team.|
|[Add app to team](../api/team-post-installedapps.md) |None | Add (install) an app to a team.|
|[Upgrade app installed in team](../api/team-teamsappinstallation-upgrade.md) | None | Upgrade the app installed in a team to the latest version.|
|[Remove app from team](../api/team-delete-installedapps.md) | None | Remove (uninstall) an app from a team.|
|[List apps installed for user](../api/userteamwork-list-installedapps.md) | [userScopeTeamsAppInstallation](userscopeteamsappinstallation.md) collection | List apps installed in the personal scope of a user.|
|[Get app installed for user](../api/userteamwork-get-installedapps.md)| [userScopeTeamsAppInstallation](userscopeteamsappinstallation.md) | Get the specified app installed in the personal scope of a user. |
|[Add app for user](../api/userteamwork-post-installedapps.md) | | Add (install) an app in the personal scope of a user.|
|[Upgrade app installed for user](../api/userteamwork-teamsappinstallation-upgrade.md) | None | Upgrade the app installed in the personal scope of a user to the latest version.|
|[Remove app for user](../api/userteamwork-delete-installedapps.md) | None | Remove (uninstall) an app in the personal scope of a user.|


## Properties

| Property            | Type     | Description |
|:------------------- |:-------- |:----------- |
| id                  | string   | A unique ID (not the Teams app ID). |

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
- [userScopeTeamsAppInstallation](../resources/userscopeteamsappinstallation.md)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "teamsApp resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
  "suppressions": []
}-->


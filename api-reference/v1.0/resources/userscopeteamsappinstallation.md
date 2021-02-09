---
title: "userScopeTeamsAppInstallation resource type"
description: "Represents a teamsApp installed in the personal scope of a user."
author: "AkJo"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# userScopeTeamsAppInstallation resource type

Namespace: microsoft.graph

Represents a [teamsApp](teamsapp.md) installed in the personal scope of a [user](user.md). Any bots that are part of the app will become part of a user's personal scope that the app is added to.
This type inherits from [teamsAppInstallation](teamsappinstallation.md).

> [!NOTE]
> The `id` of a **teamsAppInstallation** resource is not the same value as the `id` of the associated **teamsApp** resource.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List apps installed for user](../api/userteamwork-list-installedapps.md)| [userScopeTeamsAppInstallation](userscopeteamsappinstallation.md) collection | List apps installed in the personal scope of a user. |
|[Gets the installed app for user](../api/userteamwork-get-installedapps.md)| [userScopeTeamsAppInstallation](userscopeteamsappinstallation.md) | List the specified app installed in the personal scope of a user. |
|[Add app for user](../api/userteamwork-post-installedapps.md) | None | Add (install) an app in the personal scope of a user. |
|[Remove app for user](../api/userteamwork-delete-installedapps.md) | None | Remove (uninstall) an app in the personal scope of a user. |
|[Upgrade app installed for user](../api/userteamwork-teamsappinstallation-upgrade.md) | None | Upgrade to the latest version of the app installed in the personal scope of a user.|
|[Get chat between user and app](../api/userscopeteamsappinstallation-get-chat.md) | [chat](chat.md) | List one-on-one chats between a user and the app. |

## Properties

| Property            | Type     | Description |
|:------------------- |:-------- |:----------- |
| id                  | string   | A unique ID (not the Teams app ID). |

## Relationships

| Relationship   | Type    | Description |
|:---------------|:--------|:----------|
|teamsApp|[teamsApp](teamsapp.md)| The app that is installed. |
|teamsAppDefinition|[teamsAppDefinition](teamsappdefinition.md)| The details of this version of the app. |
|chat |[chat](chat.md) | The chat between the user and Teams app. | 

## JSON representation

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userScopeTeamsAppInstallation",
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
  "description": "userScopeTeamsAppInstallation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
  "suppressions": []
}-->


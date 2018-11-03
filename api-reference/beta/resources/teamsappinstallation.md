# teamsAppInstallation resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A [teamsApp](teamsapp.md) installed in a [team](team.md). 
Any bots that are part of the app will become part of any team the app is added to.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List apps](../api/teamsappinstallation_list.md) | [teamsAppInstallation](teamsapp.md) | Lists apps installed in a team.|
|[Add app](../api/teamsappinstallation_add.md) | [teamsAppInstallation](teamsapp.md) | Adds (installs) an app to a team.|
|[Remove app](../api/teamsappinstallation_delete.md) | None | Removes (uninstalls) an app from a team.|
|[Upgrade app](../api/teamsappinstallation_delete.md) | None | Upgrades to the latest version of the app.|

## Properties

| Property            | Type     | Description |
|:------------------- |:-------- |:----------- |
| id                  | string   | A unique id (not the teams appid). |

## Relationships

| Relationship   | Type    | Description |
|:---------------|:--------|:----------|
|teamsApp|[teamsApp](teamsapp.md)| The app that is installed. |
|teamsAppDefinition|[teamsAppDefinition](teamsapp.md)| The details of this version of the app. |

## JSON representation

```json
{
  "id": "0d0e31ca-59a5-31a6-8d87-12429a173d34",
}
```
# See also

[Pinning apps to tabs in channels](../resources/teamstab.md)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "teamsApp resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


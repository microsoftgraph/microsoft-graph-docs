# teamsApp resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

An app in the [Microsoft Teams](teams_api_overview.md) app catalog.

Users can see these apps in the Microsoft Teams Store, and these apps can be installed in [teams](team.md) using the [Add app to team](../api/teamsappinstallation_add.md) method.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List published apps](../api/teamsapp_list.md) | [teamsApp](teamsApp.md) collection | List published apps from the Microsoft Teams apps catalog.|
|[Publish an app](../api/teamsapp_publish.md) | [teamsApp](teamsApp.md) | Publish an app to your organization's app catalog.|
|[Update a published app](../api/teamsapp_update.md) | [teamsApp](teamsApp.md) | Update a published app in your organization's app catalog.|
|[Remove a published app](../api/teamsapp_delete.md) | None | Remove a published app from your organization's app catalog.|

## Properties

| Property            | Type     | Description |
|:------------------- |:-------- |:----------- |
| id                  | string   | The catalog app's generated app ID (different from the developer-provided ID in the [Microsoft Teams zip app package](https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/apps/apps-package). |
| externalId          | string   | The ID of the catalog provided by the app developer in the [Microsoft Teams zip app package](https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/apps/apps-package). |
| displayName                | string   | The name of the catalog app provided by the app developer in the [Microsoft Teams zip app package](https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/apps/apps-package). |
| distributionMethod  | enum     | The method of distribution for the app: `organization`, `sideloaded`, `store`. |

## Relationships

| Relationship | Type	| Description |
|:---------------|:--------|:----------|
|appDefinitions|[teamsAppDefinition](teamsappdefinition.md) collection| The details for each version of the app. |

## JSON representation

```json
{
  "id": "0d0e31ca-59a5-31a6-8d87-12429a173d34",
  "externalId": "bcb707d5-94e0-48f8-bbe7-6137a0565a4c",
  "name": "Test App",
  "version": "1.0.0",
  "distributionMethod": "Organization"
}
```

# See also

- [teamsAppInstallation](teamsAppInstallation.md)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "teamsApp resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


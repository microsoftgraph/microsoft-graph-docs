# teamsCatalogApp resource type

Represents an app in the Microsoft Teams app catalog.
Users can see these apps inside Microsoft Teams Store, and these apps can be installed into [teams](team.md) using [Add app to team](../api/teams_apps_add.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List published apps](../api/teams_apps_list_published.md) | a list of [teamsCatalogApp](teamscatalogapp.md) objects | List published apps from the Teams apps catalog.|
|[Publish an app](../api/teams_apps_publish.md) | [teamsCatalogApp](teamscatalogapp.md) | Publish an app to your organization's app catalog.|
|[Update a published app](../api/teams_apps_update_published.md) | [teamsCatalogApp](teamscatalogapp.md) | Update a published app in your organization's app catalog.|
|[Remove a published app](../api/teams_apps_remove_published.md) | None | Remove a published app from your organization's app catalog.|

## Properties
| Property            | Type     | Description |
|:------------------- |:-------- |:----------- |
| id                  | string   | The catalog app's generated app ID (different from the developer-provided ID in the [Teams zip app package](https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/apps/apps-package). |
| externalId | string   | The ID of the catalog provided by the app developer in the [Teams zip app package](https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/apps/apps-package). |
| name                | string   | The name of the catalog app provided by the app developer in the [Teams zip app package](https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/apps/apps-package). |
| version             | string   | The version of the catalog app provided by the app developer in the [Teams zip app package](https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/apps/apps-package). |
| distributionMethod  | enum     | The method of distribution for the catalog app: `organization`, `store`. |

## JSON representation
```json
{
  "id": "0d0e31ca-59a5-31a6-8d87-12429a173d34",
  "externalId": "bcb707d5-94e0-48f8-bbe7-6137a0565a4c",
  "name": "Test App",
  "version": "1.0.0",
  "distributionMethod": "organization"
}
```

---
title: "teamsApp resource type"
description: "An app in the Microsoft Teams app catalog."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsApp resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an app in the [Microsoft Teams](teams-api-overview.md) app catalog.

Users can see these apps in the Microsoft Teams Store, and these apps can be installed in [teams](team.md) using the [Add app to team](../api/teamsappinstallation-add.md) method.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List published apps](../api/teamsapp-list.md) | [teamsApp](teamsapp.md) collection | List published apps from the Microsoft Teams apps catalog.|
|[Publish an app](../api/teamsapp-publish.md) | [teamsApp](teamsapp.md) | Publish an app to your organization's app catalog.|
|[Update a published app](../api/teamsapp-update.md) | [teamsApp](teamsapp.md) | Update a published app in your organization's app catalog.|
|[Delete a published app](../api/teamsapp-delete.md) | None | Remove a published app from your organization's app catalog.|

## Properties

| Property            | Type     | Description |
|:------------------- |:-------- |:----------- |
| id                  | string   | The catalog app's generated app ID (different from the developer-provided ID in the [Microsoft Teams zip app package](/microsoftteams/platform/concepts/apps/apps-package). |
| externalId          | string   | The ID of the catalog provided by the app developer in the [Microsoft Teams zip app package](/microsoftteams/platform/concepts/apps/apps-package). |
| displayName                | string   | The name of the catalog app provided by the app developer in the [Microsoft Teams zip app package](/microsoftteams/platform/concepts/apps/apps-package). |
| distributionMethod  | teamsAppDistributionMethod     | The method of distribution for the app. Read-only.|

### teamsAppDistributionMethod values

|Member|Value|Description|
|:---|:---|:---|
|store|0| The app is available to all tenants through the Microsoft Teams app store.|
|organization|1|The app is available only in this tenant.|
|sideloaded|2|The app is available only to the user/team its installed to.|

## Relationships

| Relationship | Type	| Description |
|:---------------|:--------|:----------|
|appDefinitions|[teamsAppDefinition](teamsappdefinition.md) collection| The details for each version of the app. |

## JSON representation

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsApp",
  "baseType": "microsoft.graph.entity"
}-->

```json
{
  "id": "string",
  "externalId": "string",
  "displayName": "string",
  "distributionMethod": "string"
}
```

## See also

- [teamsAppInstallation](teamsappinstallation.md)
- [teamsAppDefinition](teamsappdefinition.md)
- [teamsTab](../resources/teamstab.md)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "teamsApp resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


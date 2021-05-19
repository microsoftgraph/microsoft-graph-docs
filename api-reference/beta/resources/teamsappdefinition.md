---
title: "teamsAppDefinition resource type"
description: "The details of one version of a teamsApp."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsAppDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The details of a version of a [teamsApp](teamsapp.md).

## Properties

| Property            | Type     | Description                                            |
|:------------------- |:-------- |:------------------------------------------------------ |
| id                  | string   | A unique ID (not the Teams app ID).                     |
| teamsAppId          | string   | The ID from the Teams app manifest.                    |
| publishingState     | string   | The published status of a specific version of a Teams app. Possible values are:</br>`submitted` — The specific version of the Teams app has been submitted and is under review. </br>`published`  — The request to publish the specific version of the Teams app has been approved by the admin and the app is published. </br> `rejected` — The request to publish the specific version of the Teams app was rejected by the admin. |
| azureADAppId        | string   | The WebApplicationInfo.Id from the Teams app manifest. |
| displayName         | string   | The name of the app provided by the app developer.     |
| version             | string   | The version number of the application.                 |
| allowedInstallationScopes | teamsAppInstallationScope collection | A collection of scopes where the Teams app can be installed. Possible values are:</br>`team` — Indicates that the Teams app can be installed within a team and is authorized to access that team's data. </br>`groupChat`  — Indicates that the Teams app can be installed within a group chat and is authorized to access that group chat's data. </br> `personal` — Indicates that the Teams app can be installed in the personal scope of a user and is authorized to access that user's data. | 

## Relationships

| Relationship   | Type	                          | Description                                                 |
|:-------------- |:------------------------------ |:----------------------------------------------------------- |
| bot            |[teamworkBot](teamworkbot.md)   | The details of the bot specified in the Teams app manifest. |
| colorIcon      |[teamsAppIcon](teamsappicon.md) | The color version of the Teams app's icon.                   |
| outlineIcon    |[teamsAppIcon](teamsappicon.md) | The outline version of the Teams app's icon.                 |

## JSON representation

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAppDefinition",
  "baseType": "microsoft.graph.entity"
}-->

```json
{
  "id": "string",
  "teamsAppId": "string",
  "publishingState": "#microsoft.graph.teamsAppPublishingState",
  "azureADAppId": "string",
  "displayName": "string",
  "version": "string"
}
```

## See also

- [teamsApp](teamsapp.md)
- [teamsAppIcon](teamsappicon.md)
- [teamsAppInstallation](teamsappinstallation.md)
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



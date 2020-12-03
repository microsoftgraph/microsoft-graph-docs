---
title: "Configuring the built-in tab types in Microsoft Teams"
description: "To create or configure a Microsoft Teams tab using Microsoft Graph APIs"
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# Configuring the built-in tab types in Microsoft Teams

To [create](/graph/api/teamstab-add?view=graph-rest-beta) or [configure](/graph/api/teamstab-update?view=graph-rest-beta) a Microsoft Teams tab using Microsoft Graph APIs, 
you need to know the `teamsAppId` of the app, and the
`entityId`, `contentUrl`, `removeUrl`, and `websiteUrl` to provide for that kind of app.
This article explains how to get those values for the built-in tab types.

## Custom tabs

To use Microsoft Graph to configure a tab associated with a [tab provider](/microsoftteams/platform/concepts/tabs/tabs-overview) that you wrote,
identify the `entityId`, `contentUrl`, `removeUrl`, and `websiteUrl`
that the app's [configuration UI provides to Microsoft Teams](/javascript/api/@microsoft/teams-js/microsoftteams.settings.settings?view=msteams-client-js-latest),
and pass the same `entityId`, `contentUrl`, `removeUrl`, and `websiteUrl` values to Microsoft Graph.

The `teamsAppId` is the same as the `id` in the [app manifest schema for Microsoft Teams](/microsoftteams/platform/resources/schema/manifest-schema).

## Website tabs

For website tabs, the `teamsAppId` is `com.microsoft.teamspace.tab.web`. The following is the configuration.

| Property   | Type        | Description                                              |
| ---------- | ----------- | -------------------------------------------------------- |
| entityId   | string      | Null                                                     |
| contentUrl | string      | URL of the website                                       |
| removeUrl  | string      | Null                                                     |
| websiteUrl | string      | URL of the website                                       |

## Word, Excel, PowerPoint, and PDF tabs

The following table lists the `teamsAppId` for each app.

| App   | teamsAppId | type (extension)                                              |
| ---------- | ----------- | -------------------------------------------------------- |
| Word | `com.microsoft.teamspace.tab.file.staticviewer.word` | `docx` |
| Excel | `com.microsoft.teamspace.tab.file.staticviewer.excel` | `xlsx` |
| PowerPoint  | `com.microsoft.teamspace.tab.file.staticviewer.powerpoint` | `pptx` |
| PDF | `com.microsoft.teamspace.tab.file.staticviewer.pdf` | `pdf` |

The following is the configuration.

| Property   | Type        | Description                                              |
| ---------- | ----------- | -------------------------------------------------------- |
| entityId   | string      | The sourceDoc ID of the file. You can find this by opening the file in SharePoint and looking at the address bar – the URL will have a `sourcedoc=%7B{sourceDocId}%7D` clause. You can also derive this from the webUrl of the SharePoint drive item for the document. For details, see [GET /groups/{group-id}/drive/items/{item-id}](/graph/api/driveitem-get?view=graph-rest-beta). |
| contentUrl | string      | The URL of file in the format `{folder-webUrl}/{item-name}`. {folder-webUrl} is the webUrl of the SharePoint folder containing the file, which can be found by opening the file in SharePoint and looking at the address bar, or by using the webUrl property from [GET /groups/{group-id}/drive/items/{folder-item-id}](/graph/api/driveitem-get?view=graph-rest-beta). {item-name} is the file name (for example, file.docx), which is the `name` property in [GET /groups/{group-id}/drive/items/{item-id}](/graph/api/driveitem-get?view=graph-rest-beta). |
| removeUrl  | string      | Null                                                     |
| websiteUrl | string      | Null                                       |

### Example: Create a configured Word tab

The following example creates a configured Word tab.

```http
POST https://graph.microsoft.com/v1.0/teams/{team-id}/channels/{channel-id}/tabs
{
  "displayName": "word",
  "teamsApp@odata.bind" : "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/com.microsoft.teamspace.tab.file.staticviewer.word",
  "configuration": {
     "entityId": "115A90F4-AC9C-4F79-9837-36D1EFB3BE08",
     "contentUrl": "https://m365x165177.sharepoint.com/sites/4NewCloneWithClonableParts/Shared%20Documents/General/Employee Handbook.docx",
     "removeUrl": null,
     "websiteUrl": null
  }
}
```

## Document library tabs

For document library tabs, the `teamsAppId` is `com.microsoft.teamspace.tab.files.sharepoint`. 
The following is the configuration.

| Property   | Type        | Description                                              |
| ---------- | ----------- | -------------------------------------------------------- |
| entityId   | string      | Empty string ("")                                        |
| contentUrl | string      | The URL of the root folder of the document library. You can find this URL by opening the SharePoint folder in your browser, copying the URL, and deleting "/Forms/AllItems.aspx" and everything after that. |
| removeUrl  | string      | Null                                                     |
| websiteUrl | string      | Null                                                     |

### Example: Create a configured document library tab

The following example creates a configured document library tab.

```http
POST https://graph.microsoft.com/v1.0/teams/{team-id}/channels/{channel-id}/tabs
{
    "displayName": "Document%20Library1",
    "teamsApp@odata.bind": "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/com.microsoft.teamspace.tab.files.sharepoint",
    "configuration": {
        "entityId": "",
        "contentUrl": "https://microsoft.sharepoint.com/teams/WWWtest/Shared%20Documents",
        "removeUrl": null,
        "websiteUrl": null
    }
}
```

## Wiki tabs

For wiki tabs, the `teamsAppId` is `com.microsoft.teamspace.tab.wiki`.
Wiki tabs do not support configuration through Microsoft Graph.
Note, however, that there isn't much to configure -
in an unconfigured wiki tab, the first user just needs to select **Set up tab** to configure it.

## Planner tabs

For Planner tabs, the `teamsAppId` is `com.microsoft.teamspace.tab.planner`. 
Configuration is not supported.

## Microsoft Stream tabs

For Microsoft Stream tabs, the `teamsAppId` is `com.microsoftstream.embed.skypeteamstab`. 
Configuration is not supported.

## Microsoft Forms tabs

For Microsoft Forms tabs, the `teamsAppId` is `81fef3a6-72aa-4648-a763-de824aeafb7d`.
Configuration is not supported.

## OneNote tabs

For OneNote tabs, the `teamsAppId` is `0d820ecd-def2-4297-adad-78056cde7c78`. 
Configuration is not supported.

## Power BI tabs

For Power BI tabs, the `teamsAppId` is `com.microsoft.teamspace.tab.powerbi`.
Configuration is not supported.

## SharePoint page and list tabs

For SharePoint page and list tabs, the `teamsAppId` is `2a527703-1f6f-4559-a332-d8a7d288cd88`.
Configuration is not supported.
If you want to configure the tab, consider using a Website tab.

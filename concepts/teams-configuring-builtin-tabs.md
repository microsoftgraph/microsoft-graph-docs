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

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

To use Microsoft Graph to configure a tab associated with a [tab provider](https://docs.microsoft.com/microsoftteams/platform/concepts/tabs/tabs-overview) that you wrote,
identify the `entityId`, `contentUrl`, `removeUrl`, and `websiteUrl`
that the app's [configuration UI provides to Microsoft Teams](https://docs.microsoft.com/javascript/api/@microsoft/teams-js/microsoftteams.settings.settings?view=msteams-client-js-latest),
and pass the same `entityId`, `contentUrl`, `removeUrl`, and `websiteUrl` values to Microsoft Graph.

The `teamsAppId` is the same as the `id` in the [app manifest schema for Microsoft Teams](https://docs.microsoft.com/microsoftteams/platform/resources/schema/manifest-schema).

## Website tabs

For website tabs, the `teamsAppId` is `com.microsoft.teamspace.tab.web`. The following is the configuration.

| Property   | Type        | Description                                              |
| ---------- | ----------- | -------------------------------------------------------- |
| entityId   | string      | Null                                                     |
| contentUrl | string      | URL of the website                                       |
| removeUrl  | string      | Null                                                     |
| websiteUrl | string      | URL of the website                                       |

## Planner tabs

For Planner tabs, the teamsAppId is `com.microsoft.teamspace.tab.planner`. The following is the configuration.

| Property   | Type        | Description                                              |
| ---------- | ----------- | -------------------------------------------------------- |
| entityId   | string      | The plan ID (the ID to use with GET /planner/plans/{id}).                                              |
| contentUrl | string      | `https://tasks.office.com/{tenantName}/Home/PlannerFrame?page=7&planId={planId}`, where {tenantName} is the name of the tenant (such as example.onmicrosoft.com), and {planId} is the same as the entity ID.  |
| removeUrl  | string      | Same value as the contentUrl.    |
| websiteUrl | string      | Same value as the contentUrl.   |

To create a new plan to display in your planner tab, see [create plannerPlan](/graph/api/planner-post-plans?view=graph-rest-beta).

## Microsoft Stream tabs

For Microsoft Stream tabs, the `teamsAppId` is `com.microsoftstream.embed.skypeteamstab`. The following is the configuration.

| Property   | Type        | Description                                              |
| ---------- | ----------- | -------------------------------------------------------- |
| entityId   | string      | Null                                                     |
| contentUrl | string      | `https://web.microsoftstream.com/embed/video/{id}?autoplay=false&showinfo=true&app=microsoftteams&l={locale}`, where {id} is the ID of the video stream. To find the {id} of a stream, open the stream in your browser and look at you the URL – it will be of the form `https://{domain}.microsoftstream.com/video/{id}`.  |
| removeUrl  | string      | Null                                                     |
| websiteUrl | string      | `https://web.microsoftstream.com/video/{id}`, where {id} is the ID of the video stream.    |

## Microsoft Forms tabs

For Microsoft Forms tabs, the `teamsAppId` is `81fef3a6-72aa-4648-a763-de824aeafb7d`.
The following is the configuration.

| Property   | Type        | Description                                              |
| ---------- | ----------- | -------------------------------------------------------- |
| entityId   | string      | The ID of the form.  Define this value, navigate to the form in the Forms website, and find the URL of the form `https://forms.office.com/Pages/DesignPage.aspx#FormId={formId}`.      |
| contentUrl | string      | `https://forms.office.com/Pages/TeamsDesignPage.aspx?Host=Teams&lang={locale}&groupId={groupId}&tid={tid}&teamsTheme={theme}&upn={upn}&fragment=FormId%3D{formId}`, where {formId} is the same as the entity ID, and {locale}, {groupId}, {tid}, {upn} are literals.   |
| removeUrl  | string      | Null                                                     |
| websiteUrl | string      |  `https://forms.office.com`    |

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

## Wiki tabs

For wiki tabs, the `teamsAppId` is `com.microsoft.teamspace.tab.wiki`.
Wiki tabs do not support configuration through Graph.
Note, however, that there isn't much to configure --
in an un-configured wiki tab, the first user just needs to select **Set up tab** to configure it.

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

The following example creates a configured Word tab.

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

## OneNote tabs

For OneNote tabs, the `teamsAppId` is `0d820ecd-def2-4297-adad-78056cde7c78`. The following is the configuration.

| Property   | Type        | Description                                              |
| ---------- | ----------- | -------------------------------------------------------- |
| entityId   | string      | `{randomGuid}_{notebookId}`, where {randomGuid} is a GUID you generate.                                      |
| contentUrl | string      | A URL of the form `https://www.onenote.com/teams/TabContent?entityid=%7BentityId%7D&subentityid=%7BsubEntityId%7D&auth_upn=%7Bupn%7D&notebookSource=New&notebookSelfUrl=https%3A%2F%2Fwww.onenote.com%2Fapi%2Fv1.0%2FmyOrganization%2Fgroups%2F{groupId}%2Fnotes%2Fnotebooks%2F{notebookId}&oneNoteWebUrl={oneNoteWebUrl}&notebookName=note&ui={locale}&tenantId={tid}`, where `{notebookId}` and `{oneNoteWebUrl}` can be found in [GET /groups/{id}/onenote/notebooks](/graph/api/onenote-list-notebooks?view=graph-rest-beta). Slashes must be escaped. {groupId}, {locale}, and {tid} are literals. |
| removeUrl  | string      | A URL of the form `https://www.onenote.com/teams/TabRemove?entityid=%7BentityId%7D&subentityid=%7BsubEntityId%7D&auth_upn=%7Bupn%7D&notebookSource=New&notebookSelfUrl=https%3A%2F%2Fwww.onenote.com%2Fapi%2Fv1.0%2FmyOrganization%2Fgroups%2F{groupId}%2Fnotes%2Fnotebooks%2F{notebookId}&oneNoteWebUrl={oneNoteWebUrl}&notebookName=note&ui={locale}&tenantId={tid}`, where `{notebookId}` and `{oneNoteWebUrl}` can be found in [GET /groups/{id}/onenote/notebooks](/graph/api/onenote-list-notebooks?view=graph-rest-beta). Slashes must be escaped. {groupId}, {locale} and {tid} are literals. |
| websiteUrl | string      | A URL of the form `https://www.onenote.com/teams/TabRedirect?redirectUrl={oneNoteWebUrl}`, where `oneNoteWebUrl` can be found in [GET /groups/{id}/onenote/notebooks](/graph/api/onenote-list-notebooks?view=graph-rest-beta) |

## Power BI tabs

For Power BI tabs, the `teamsAppId` is `com.microsoft.teamspace.tab.powerbi`.
Configuration is not supported.

## SharePoint page and list tabs

For SharePoint page and list tabs, the `teamsAppId` is `2a527703-1f6f-4559-a332-d8a7d288cd88`.
Configuration is not supported.
If you want to configure the tab, consider using a Website tab.

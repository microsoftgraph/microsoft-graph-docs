# team resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

## Excel, PowerPoint, and Word

| App   | teamsAppId | type (extension)                                              |
| ---------- | ----------- | -------------------------------------------------------- |
| Word | com.microsoft.teamspace.tab.file.staticviewer.word | docx |
| PowerPoint  | com.microsoft.teamspace.tab.file.staticviewer.powerpoint | pptx |
| Excel | com.microsoft.teamspace.tab.file.staticviewer.excel | xlsx |

configuration:

| Property   | Type        | Description                                              |
| ---------- | ----------- | -------------------------------------------------------- |
| entityId   | string      | null                                                     |
| contentUrl | string      | null                                                     |
| removeUrl  | string      | null                                                     |
| websiteUrl | string      | null                                                     |
| objectId   | string      | The file's UniqueId in SharePoint. This can be found by using [GET /beta/groups/{id}/drive/root:/{channel-Name>}:/children](../api/driveitem_list_children.md) to get the metadata for the file. The first property, @microsoft.graph.downloadUrl, will contain a URL of the form https://microsoft.sharepoint.com/.....?UniqueId=<guid>&... |
| file       | <see below> | <see below>                                              |
| dateAdded   | string      | in the form "2018-02-21T01:37:12.629Z" |

Properties for the file object:

| Property   | Type        | Description                                              |
| ---------- | ----------- | -------------------------------------------------------- |
| type       | string      | "pptx" |
| objectId       | string      | same as the object ID above |
| objectUrl      | string      | a download URL to the document of the form https://microsoft.sharepoint.com/teams/<Team Name>/Shared Documents/<channel name>/<filename.pptx> |
|serviceName| string |"teams"|
|providerMetadata| string      | "" |



## A team in Microsoft Teams is a collection of [channels](channel.md). 
A channel represents a topic, and therefore a logical isolation of discussion, within a team.

Every team is associated with a [group](../resources/group.md).
The group has the same ID as the team - for example, /groups/{id}/team is the same as /teams/{id}.
For more information about working with groups and members in teams, see [Use the Microsoft Graph REST API to work with Microsoft Teams](teams_api_overview.md).

## Properties

| Property | Type	| Description |
|:---------------|:--------|:----------|
|funSettings|[teamFunSettings](teamfunsettings.md) |Settings to configure use of Giphy, memes, and stickers in the team.|
|guestSettings|[teamGuestSettings](teamguestsettings.md) |Settings to configure whether guests can create, update, or delete channels in the team.|
|isArchived|Boolean|Whether this team is in read-only mode. |
|memberSettings|[teamMemberSettings](teammembersettings.md) |Settings to configure whether members can perform certain actions, for example, create channels and add bots, in the team.|
|messagingSettings|[teamMessagingSettings](teammessagingsettings.md) |Settings to configure messaging and mentions in the team.|
|webUrl|string (readonly) | A hyperlink that will go to the team in the Microsoft Teams client. This is the URL that you get when you right-click a team in the Microsoft Teams client and select **Get link to team**. This URL should be treated as an opaque blob, and not parsed. |

## Relationships

| Relationship | Type	| Description |
|:---------------|:--------|:----------|
|apps|[teamsApp](teamsapp.md) collection|The collection of apps installed in this team.|
|channels|[channel](channel.md) collection|The collection of channels & messages associated with the team.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.team"
}-->

```json
{  
  "memberSettings": {
    "allowCreateUpdateChannels": true,
    "allowDeleteChannels": true,
    "allowAddRemoveApps": true,
    "allowCreateUpdateRemoveTabs": true,
    "allowCreateUpdateRemoveConnectors": true    
  },
  "guestSettings": {
    "allowCreateUpdateChannels": true,
    "allowDeleteChannels": true 
  },
  "messagingSettings": {
    "allowUserEditMessages": true,
    "allowUserDeleteMessages": true,
    "allowOwnerDeleteMessages": true,
    "allowTeamMentions": true,
    "allowChannelMentions": true    
  },
  "funSettings": {
    "allowGiphy": true,
    "giphyContentRating": "strict",
    "allowStickersAndMemes": true,
    "allowCustomMemes": true
  },
  "webUrl": "https://...longUrl..."
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "team resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

## See Also
[Teams API Overview](teams_api_overview.md)

# team resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A team in Microsoft Teams is a collection of [channels](channel.md). 
A channel represents a topic, and therefore a logical isolation of discussion, within a team.

Every team is associated with a [group](../resources/group.md).
The group has the same ID as the team - for example, /groups/{id}/team is the same as /teams/{id}.
For more information about working with groups and members in teams, see [Use the Microsoft Graph REST API to work with Microsoft Teams](teams_api_overview.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Create team](../api/team_put_teams.md) | [team](team.md) | Create a new team, or add a team to an existing group.|
|[Get team](../api/team_get.md) | [team](team.md) | Retrieve the properties and relationships of the specified team.|
|[Update team](../api/team_update.md) | [team](team.md) |Update the properties of the specified team. |
|[Delete team](../../v1.0/api/group_delete.md) | None |Delete the team and its associated group. |
|[Clone team](../api/team_clone.md) | [teamsAsyncOperation](../resources/teamsasyncoperation.md) |Copy the team and its associated group. |
|[Archive team](../api/team_archive.md) | [teamsAsyncOperation](../resources/teamsasyncoperation.md) |Put the team in a read-only state. |
|[Unarchive team](../api/team_unarchive.md) | [teamsAsyncOperation](../resources/teamsasyncoperation.md) |Restore the team to a read-write state. |
|[List your teams](../api/user_list_joinedteams.md) | [team](team.md) collection | List the teams you are a member of. |
|[List all teams](../api/team_list_all_teams.md) | [group](group.md) collection | List all groups that have teams. |
|[Add app to team](../api/teams_apps_add.md) | [teamsApp](teamsapp.md) | Adds (installs) an app to a team.|
|[List channel messages](../api/channel_list_messages.md)  | [chatMessage](../resources/chatmessage.md) | [Get messages in a channel](../api/channel_list_messages.md) |


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

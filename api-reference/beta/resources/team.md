---
title: "team resource type"
description: "A team in Microsoft Teams is a collection of channels. "
author: "nkramer"
localization_priority: Priority
ms.prod: "microsoft-teams"
---

# team resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A team in Microsoft Teams is a collection of [channels](channel.md). 
A channel represents a topic, and therefore a logical isolation of discussion, within a team.

Every team is associated with a [group](../resources/group.md).
The group has the same ID as the team - for example, /groups/{id}/team is the same as /teams/{id}.
For more information about working with groups and members in teams, see [Use the Microsoft Graph REST API to work with Microsoft Teams](teams-api-overview.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Create team](../api/team-post.md) | [teamsAsyncOperation](teamsasyncoperation.md) | Create a team from scratch. |
|[Create team from group](../api/team-put-teams.md) | [team](team.md) | Create a new team, or add a team to an existing group.|
|[Get team](../api/team-get.md) | [team](team.md) | Retrieve the properties and relationships of the specified team.|
|[Update team](../api/team-update.md) | [team](team.md) |Update the properties of the specified team. |
|[Delete team](/graph/api/group-delete?view=graph-rest-1.0) | None |Delete the team and its associated group. |
|[Clone team](../api/team-clone.md) | [teamsAsyncOperation](../resources/teamsasyncoperation.md) |Copy the team and its associated group. |
|[Archive team](../api/team-archive.md) | [teamsAsyncOperation](../resources/teamsasyncoperation.md) |Put the team in a read-only state. |
|[Unarchive team](../api/team-unarchive.md) | [teamsAsyncOperation](../resources/teamsasyncoperation.md) |Restore the team to a read-write state. |
|[List your teams](../api/user-list-joinedteams.md) | [team](team.md) collection | List the teams you are a member of. |
|[List all teams](/graph/teams-list-all-teams) | [group](group.md) collection | List all groups that have teams. |
|[Publish apps to your organization](../resources/teamsapp.md)| [teamsApp](../resources/teamsapp.md) | Create Teams apps visible only to your organization. |
|[Add app to team](../api/teamsappinstallation-add.md) | [teamsappinstallation](teamsappinstallation.md) | Adds (installs) an app to a team.|
|[Add tab to channel](../api/teamstab-add.md) | [teamsTab](../resources/teamstab.md) | Adds (installs) a tab to a team's channel.|
|[List channel messages](../api/channel-list-messages.md)  | [chatMessage](../resources/chatmessage.md) | [Get messages in a channel](../api/channel-list-messages.md) |

## Properties

| Property | Type	| Description |
|:---------------|:--------|:----------|
|displayName|string| The name of the team. |
|description|string| An optional description for the team. |
|classification|string| An optional label. Typically describes the data or business sensitivity of the team. Must match one of a pre-configured set in the tenant's directory. |
|specialization|[teamSpecialization](teamspecialization.md)| Optional. Indicates whether the team is intended for a particular use case.  Each team specialization has access to unique behaviors and experiences targeted to its use case. |
|visibility|[teamVisibilityType](teamvisibilitytype.md)| The visibility of a the group and team. Defaults to Public. |
|funSettings|[teamFunSettings](teamfunsettings.md) |Settings to configure use of Giphy, memes, and stickers in the team.|
|guestSettings|[teamGuestSettings](teamguestsettings.md) |Settings to configure whether guests can create, update, or delete channels in the team.|
|isArchived|Boolean|Whether this team is in read-only mode. |
|memberSettings|[teamMemberSettings](teammembersettings.md) |Settings to configure whether members can perform certain actions, for example, create channels and add bots, in the team.|
|messagingSettings|[teamMessagingSettings](teammessagingsettings.md) |Settings to configure messaging and mentions in the team.|
|webUrl|string (readonly) | A hyperlink that will go to the team in the Microsoft Teams client. This is the URL that you get when you right-click a team in the Microsoft Teams client and select **Get link to team**. This URL should be treated as an opaque blob, and not parsed. |

## Relationships

| Relationship | Type	| Description |
|:---------------|:--------|:----------|
|apps|[teamsApp](teamsapp.md) collection| (Obsolete) The apps installed in this team.|
|channels|[channel](channel.md) collection|The collection of channels & messages associated with the team.|
|installedApps|[teamsAppInstallation](teamsappinstallation.md) collection|The apps installed in this team.|
|owners|[user](user.md)| The list of this team's owners. |
|template|[teamsTemplate](teamstemplate.md)| The template this team was created from. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.team",
  "baseType": "microsoft.graph.entity"
}-->

```json
{  
  "guestSettings": {"@odata.type": "microsoft.graph.teamGuestSettings"},
  "memberSettings": {"@odata.type": "microsoft.graph.teamMemberSettings"},
  "messagingSettings": {"@odata.type": "microsoft.graph.teamMessagingSettings"},
  "funSettings": {"@odata.type": "microsoft.graph.teamFunSettings"},
  "isArchived": false,
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
- [Creating a group with a team](/graph/teams-create-group-and-team)
- [Teams API Overview](teams-api-overview.md)

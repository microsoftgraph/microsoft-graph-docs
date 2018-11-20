# Use the Microsoft Graph API to work with Microsoft Teams

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Microsoft Teams is a chat-based workspace in Office 365 that provides built-in access to team-specific calendars, files, OneNote notes, Planner plans, and more.

## Key resources in Microsoft Teams

| Resource | Methods |
|:---------------|:--------|
|[team](../resources/team.md)| [list your teams](../api/user-list-joinedteams.md), [list all teams](/graph/teams-list-all-teams), [create](../api/team-put-teams.md), [read](../api/team-get.md), [update](../api/team-update.md), [delete](../../v1.0/api/group-delete.md), [clone](../api/team-clone.md), [archive](../api/team-archive.md), [unarchive](../api/team-unarchive.md) |
|[group](../resources/group.md)| [add member](../api/group-post-members.md), [remove member](../api/group-delete-members.md), [add owner](../api/group-post-owners.md), [remove owner](../api/group-delete-owners.md), [get files](drive.md), [get notebook](../../v1.0/resources/notebook.md), [get plans](plannergroup.md), [get calendar](event.md) |
|[channel](../resources/channel.md)|[list](../api/channel-list.md), [create](../api/channel-post.md), [read](../api/channel-get.md), [update](../api/channel-patch.md), [delete](../api/channel-delete.md)|
|[teamsTab](../resources/teamstab.md) |[list](../api/teamstab-list.md), [create](../api/teamstab-add.md), [read](../api/teamstab-get.md), [update](../api/teamstab-update.md), [delete](../api/teamstab-delete.md) |
|[teamsApp](../resources/teamsapp.md)|[list](../api/teamsapp-list.md), [publish](../api/teamsapp-publish.md), [update](../api/teamsapp-update.md), [remove](../api/teamsapp-delete.md)|
|[teamsAppInstallation](../resources/teamsappinstallation.md)| [list](../api/teamsappinstallation-list.md), [install](../api/teamsappinstallation-add.md), [upgrade](../api/teamsappinstallation-delete.md), [remove](../api/teamsappinstallation-delete.md) |
| (Preview) [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta) and [chatThread](/graph/api/resources/chatthread?view=graph-rest-beta) | [list](/graph/api/channel-list-messages?view=graph-rest-beta), [create](/graph/api/channel-post-chatthreads?view=graph-rest-beta), [read](/graph/api/channel-get-message?view=graph-rest-beta) |
| (Preview) [call](/graph/api/resources/call?view=graph-rest-beta) | [answer](/graph/api/call-answer?view=graph-rest-beta), [reject](/graph/api/call-reject?view=graph-rest-beta), [redirect](/graph/api/call-redirect?view=graph-rest-beta), [mute](/graph/api/call-mute?view=graph-rest-beta), [unmute](/graph/api/call-unmute?view=graph-rest-beta), [update metadata](/graph/api/call-updatemetadata?view=graph-rest-beta), [change screen sharing role](/graph/api/call-changescreensharingrole?view=graph-rest-beta), [list participants](/graph/api/call-list-participants?view=graph-rest-beta), [invite participants](/graph/api/participant-invite?view=graph-rest-beta), [mute all participants](/graph/api/participant-muteall?view=graph-rest-beta) |

## Teams and groups

In Microsoft Graph, Microsoft Teams is represented by a [group](../resources/group.md) resource. Both Microsoft Teams and Office 365 groups address the various needs of group collaboration. Almost all the group-based features apply to Microsoft Teams and Office 365 groups, such as group calendar, files, notes, photo, plans, and so on. The main difference between a [team](team.md) and an Office 365 group is the mode of communication between members. Team members communicate by persistent chat in the context of a specific team. Office 365 group members communicate by group conversations, which are email conversations that occur in the context of a group in Outlook.

Any group that has a team has a **resourceProvisioningOptions** property that contains "Team". 

>**Note:** The **Group.resourceProvisioningOptions** property can be changed.
Do not add or remove "Team" from that collection;
otherwise, you'll get incorrect results when you list all teams.

The following are the differences at the API level between teams and groups:

- Persistent chat is available only to Microsoft Teams. This feature is hierarchically represented by the [channel](../resources/channel.md), [chatThread](../resources/chatthread.md), and [chatMessage](../resources/chatmessage.md) resources.
- Group conversations are available only to Office 365 groups. This feature is hierarchically represented by the [conversation](../resources/conversation.md), [conversationThread](../resources/conversationthread.md), and [post](../resources/post.md) resources. 
- The [List joined teams](../api/user-list-joinedteams.md) method applies only to Microsoft Teams.
- [Calling and online meeting APIs](./calls-api-overview.md) apply only to Microsoft Teams.
- See also the [known issues](/graph/known-issues) for these APIs.

>**Note:** If you use the groups API in a [Microsoft Teams app](https://docs.microsoft.com/en-us/microsoftteams/platform/#apps-in-microsoft-teams) rather than in a standalone app - for example as part of a tab or bot running in Microsoft Teams - follow the guidance in the article [Using Microsoft Graph in your Microsoft Teams pages](https://docs.microsoft.com/en-us/microsoftteams/platform/resources/microsoft-graph).

## Membership changes in Microsoft Teams

To add members and owners to a team, change the membership of the [group](../resources/group.md) with the same ID.

| Use case      | Verb      | URL |
| ------------------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| [Add member](../api/group-post-members.md)	| POST	    | /groups/{id}/members/$ref  |
| [Remove member](../api/group-delete-members.md)	| DELETE	| /groups/{id}/members/{userId}/$ref |
| [Add owner](../api/group-post-owners.md)     | POST	    | /groups/{id}/owners/$ref |
| [Remove owner](../api/group-delete-owners.md)	| DELETE	| /groups/{id}/owners/{userId}/$ref |
| [Update team](../api/team-update.md)	| PATCH     | /teams/{id} |

We recommend that when you add an owner, you also add that user as a member. 
If a team has an owner who is not also a member, ownership and membership changes might not show up immediately in Microsoft Teams. 
In addition, different apps and APIs will handle that differently. 
For example, Microsoft Teams will show teams that the user is either a member or an owner of, while the Microsoft Teams PowerShell cmdlets and the /me/joinedTeams API will only show teams the user is a member of. 
To avoid confusion, add all owners to the members list as well. 

Known issue: when DELETE /groups/{id}/owners is called, the user is also removed from the /groups/{id}/members list. To work around this, we recommend that you remove the user from both owners and members, then wait 10 seconds, then add them back to members.

When adding and removing members and owners, don't put braces { } around the ID.

| Speed | Syntax | 
| ------ | ----- |
| Fast | https://graph.microsoft.com/beta/groups/02bd9fd6-8f93-4758-87c3-1fb73740a315/members/48d31887-5fad-4d73-a9f5-3c356e68a038/$ref | 
| Slow | https://graph.microsoft.com/beta/groups/{02bd9fd6-8f93-4758-87c3-1fb73740a315}/members/{48d31887-5fad-4d73-a9f5-3c356e68a038}/$ref | 

Similarly, if the `userId` in the URL or payload is expressed as a UPN rather than as a GUID, the performance will be slower.

| Speed | Syntax | 
| ------ | ----- |
| Fast | 48d31887-5fad-4d73-a9f5-3c356e68a038 | 
| Slow | john@example.com | 

When the slower path is taken, if a current team member or owner is signed in to the Microsoft Teams application/website, the change will be reflected within an hour.
If none of those users are signed in to the Microsoft Teams application/website, the change will not be reflected until an hour after one of them signs in.

## See also

[Microsoft Teams API overview](/graph/teams-concept-overview)

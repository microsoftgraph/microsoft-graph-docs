# Use the Microsoft Graph API to work with Microsoft Teams



Microsoft Teams is a chat-based workspace in Office 365 that provides built-in access to team-specific calendars, files, OneNote notes, Planner plans, and more.

## Teams and groups

In Microsoft Graph, Microsoft Teams is represented by a [group](../resources/group.md) resource. Both Microsoft Teams and Office 365 groups address the various needs of group collaboration. Almost all the group-based features apply to Microsoft Teams and Office 365 groups, such as group calendar, files, notes, photo, plans, and so on. The main difference between a [team](team.md) and an Office 365 group is the mode of communication between members. Team members communicate by persistent chat in the context of a specific team. Office 365 group members communicate by group conversations, which are email conversations that occur in the context of a group in Outlook.

Any group that has a team has a **resourceProvisioningOptions** property that contains "Team". 

>**Note:** The **Group.resourceProvisioningOptions** property can be changed.
Do not add or remove "Team" from that collection;
otherwise, you'll get incorrect results when you list all teams.

The following are the differences at the API level between teams and groups:

- The [List joined teams](../api/user_list_joinedteams.md) method applies only to Microsoft Teams.
- See also the [known issues](../../../concepts/known_issues.md) for these APIs.

>**Note:** If you use the groups API in a [Microsoft Teams app](https://docs.microsoft.com/en-us/microsoftteams/platform/#apps-in-microsoft-teams) rather than in a standalone app - for example as part of a tab or bot running in Microsoft Teams - follow the guidance in the article [Using Microsoft Graph in your Microsoft Teams pages](https://docs.microsoft.com/en-us/microsoftteams/platform/resources/microsoft-graph).

## Membership changes in Microsoft Teams

To add members and owners to a team, change the membership of the [group](../resources/group.md) with the same ID.

| Use case      | Verb      | URL |
| ------------------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| [Add member](../api/group_post_members.md)	| POST	    | https://graph.microsoft.com/beta/groups/{id}/members/$ref  |
| [Remove member](../api/group_delete_members.md)	| DELETE	| https://graph.microsoft.com/beta/groups/{id}/members/{userId}/$ref |
| [Add owner](../api/group_post_owners.md)     | POST	    | https://graph.microsoft.com/beta/groups/{id}/owners/$ref |
| [Remove owner](../api/group_delete_owners.md)	| DELETE	| https://graph.microsoft.com/beta/groups/{id}/owners/{userId}/$ref |
| [Update team](../api/team_update.md)	| PATCH     | https://graph.microsoft.com/beta/teams/{id} |

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

## Common use cases  

| Use cases                             | REST resources                                               | See also                                                     |
| ------------------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Create and delete teams               | [team](team.md) | [Create team](../api/team_put_teams.md) |
| Add members and owners                | [group](../resources/group.md) | [Add member](../api/group_post_members.md), [Remove member](../api/group_delete_members.md) |
| Add and remove channels               | [channel](../resources/channel.md) | [Create channel](../api/channel_post.md) |
| Add apps to team                      | [teamsApp](../resources/teamsapp.md) | [Add apps](../api/teamsappinstallation_add.md) |
| Change team settings                  | [teamMemberSettings](../resources/teammembersettings.md), [teamGuestSettings](../resources/teamGuestSettings.md), [teamMessagingSettings](../resources/teammessagingsettings.md), [teamFunSettings](../resources/teamFunSettings.md) |                                                              |
| Archive the team                      | [team](team.md) | [Archive team](../api/team_archive.md) | 
| Get the photo of a member of a team   | [profilePhoto](../../v1.0/api/profilephoto_get.md) |                                                              |
| List notebooks for a team             | [Notebook](../../v1.0/resources/notebook.md) | [List notebooks in a group](../../v1.0/api/onenote_list_notebooks.md) |

## See also

[Microsoft Teams API overview](../../../concepts/teams-concept-overview.md)

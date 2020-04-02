---
title: "Use the Microsoft Graph API to work with Microsoft Teams"
description: "Microsoft Teams is a chat-based workspace in Office 365 that provides built-in access to team-specific calendars, files, OneNote notes, Planner plans, and more."
localization_priority: Priority
author: "nkramer"
ms.prod: "microsoft-teams"
doc_type: conceptualPageType
---

# Use the Microsoft Graph API to work with Microsoft Teams

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Microsoft Teams is a chat-based workspace in Office 365 that provides built-in access to team-specific calendars, files, OneNote notes, Planner plans, Shifts schedules, and more.

## Key resources in Microsoft Teams

| Resource | Methods |
|:---------------|:--------|
|[team](../resources/team.md)| [List your teams](../api/user-list-joinedteams.md), [list all teams](/graph/teams-list-all-teams), [create](../api/team-put-teams.md), [read](../api/team-get.md), [update](../api/team-update.md), [delete](/graph/api/group-delete?view=graph-rest-1.0), [clone](../api/team-clone.md), [archive](../api/team-archive.md), [unarchive](../api/team-unarchive.md) |
|[group](../resources/group.md)| [Add member](../api/group-post-members.md), [remove member](../api/group-delete-members.md), [add owner](../api/group-post-owners.md), [remove owner](../api/group-delete-owners.md), [get files](drive.md), [get notebook](/graph/api/resources/notebook?view=graph-rest-1.0), [get plans](plannergroup.md), [get calendar](event.md) |
|[channel](../resources/channel.md)|[List](../api/channel-list.md), [create](../api/channel-post.md), [read](../api/channel-get.md), [update](../api/channel-patch.md), [delete](../api/channel-delete.md)|
|[teamsTab](../resources/teamstab.md) |[List](../api/teamstab-list.md), [create](../api/teamstab-add.md), [read](../api/teamstab-get.md), [update](../api/teamstab-update.md), [delete](../api/teamstab-delete.md) |
|[teamsApp](../resources/teamsapp.md)|[List](../api/teamsapp-list.md), [publish](../api/teamsapp-publish.md), [update](../api/teamsapp-update.md), [remove](../api/teamsapp-delete.md)|
|[teamsAppInstallation](../resources/teamsappinstallation.md)| [List](../api/teamsappinstallation-list.md), [install](../api/teamsappinstallation-add.md), [upgrade](../api/teamsappinstallation-delete.md), [remove](../api/teamsappinstallation-delete.md) |
|[chatMessage](../resources/chatmessage.md) (preview)| [List](../api/channel-list-messages.md), [send](../api/channel-post-messages.md), [read](/graph/api/channel-get-message?view=graph-rest-beta) |
|[call](/graph/api/resources/communications-api-overview.md) (preview) | [Answer](/graph/api/call-answer?view=graph-rest-beta), [reject](/graph/api/call-reject?view=graph-rest-beta), [redirect](/graph/api/call-redirect?view=graph-rest-beta), [mute](/graph/api/call-mute?view=graph-rest-beta), [unmute](/graph/api/call-unmute?view=graph-rest-beta), [update metadata](/graph/api/call-updatemetadata?view=graph-rest-beta), [change screen sharing role](/graph/api/call-changescreensharingrole?view=graph-rest-beta), [list participants](/graph/api/call-list-participants?view=graph-rest-beta), [invite participants](/graph/api/participant-invite?view=graph-rest-beta), [mute all participants](/graph/api/participant-muteall?view=graph-rest-beta) |
|[schedule](/graph/api/resources/schedule?view=graph-rest-beta) (preview)| [Create or replace](/graph/api/team-put-schedule?view=graph-rest-beta), [get](/graph/api/schedule-get?view=graph-rest-beta), [share](/graph/api/schedule-share?view=graph-rest-beta) |
|[schedulingGroup](/graph/api/resources/schedulinggroup?view=graph-rest-beta) (preview)| [Create](/graph/api/schedule-post-schedulinggroups?view=graph-rest-beta), [List](/graph/api/schedule-list-schedulinggroups?view=graph-rest-beta), [Get](/graph/api/schedulinggroup-get?view=graph-rest-beta), [Replace](/graph/api/schedulinggroup-put?view=graph-rest-beta), [Delete](/graph/api/schedulinggroup-delete?view=graph-rest-beta) |
|[shift](/graph/api/resources/shift?view=graph-rest-beta) (preview)| [Create](/graph/api/schedule-post-shifts?view=graph-rest-beta), [List](/graph/api/schedule-list-shifts?view=graph-rest-beta), [Get](/graph/api/shift-get?view=graph-rest-beta), [Replace](/graph/api/shift-put?view=graph-rest-beta), [Delete](/graph/api/shift-delete?view=graph-rest-beta) |
|[timeOff](/graph/api/resources/timeoff?view=graph-rest-beta) (preview)| [Create](/graph/api/schedule-post-timesoff?view=graph-rest-beta), [List](/graph/api/schedule-list-timesoff?view=graph-rest-beta), [Get](/graph/api/timeoff-get?view=graph-rest-beta), [Replace](/graph/api/timeoff-put?view=graph-rest-beta), [Delete](/graph/api/timeoff-delete?view=graph-rest-beta) |
|[timeOffReason](/graph/api/resources/timeoffreason?view=graph-rest-beta) (preview)| [Create](/graph/api/schedule-post-timeoffreasons?view=graph-rest-beta), [List](/graph/api/schedule-list-timeoffreasons?view=graph-rest-beta), [Get](/graph/api/timeoffreason-get?view=graph-rest-beta), [Replace](/graph/api/timeoffreason-put?view=graph-rest-beta), [Delete](/graph/api/timeoffreason-delete?view=graph-rest-beta) |

## Microsoft Teams limits

The tested performance and capacity limits of Microsoft Teams are documented in
[Limits and specifications for Microsoft Teams](/microsoftteams/limits-specifications-teams).
These limits apply whether using Microsoft Teams directly or using Microsoft Graph APIs.
Because every team has a corresponding group, and every group is a directory object,
limits on the [number of groups](/microsoft-365/admin/create-groups/office-365-groups#group-limits)
and the [number of directory objects ("resources")](/azure/active-directory/users-groups-roles/directory-service-limits-restrictions)
can also come into play. 

Files inside channels are stored in SharePoint; [SharePoint online limits](/office365/servicedescriptions/sharepoint-online-service-description/sharepoint-online-limits) apply.

See also [throttling limits for Microsoft Teams services](/graph/throttling).

## Teams and groups

In Microsoft Graph, Microsoft Teams is represented by a [group](../resources/group.md) resource. Both Microsoft Teams and Office 365 groups address the various needs of group collaboration. Almost all the group-based features apply to Microsoft Teams and Office 365 groups, such as group calendar, files, notes, photo, plans, and so on. The main difference between a [team](team.md) and an Office 365 group is the mode of communication between members. Team members communicate by persistent chat in the context of a specific team. Office 365 group members communicate by group conversations, which are email conversations that occur in the context of a group in Outlook.

Any group that has a team has a **resourceProvisioningOptions** property that contains "Team".

>**Note:** The **Group.resourceProvisioningOptions** property can be changed.
Do not add or remove "Team" from that collection;
otherwise, you'll get incorrect results when you list all teams.

The following are the differences at the API level between teams and groups:

- Persistent chat is available only to Microsoft Teams. This feature is hierarchically represented by the [channel](../resources/channel.md) and [chatMessage](../resources/chatmessage.md) resources.
- Group conversations are available only to Office 365 groups. This feature is hierarchically represented by the [conversation](../resources/conversation.md), [conversationThread](../resources/conversationthread.md), and [post](../resources/post.md) resources.
- The [List joined teams](../api/user-list-joinedteams.md) method applies only to Microsoft Teams.
- [Calling and online meeting APIs](./communications-api-overview.md) apply only to Microsoft Teams.
- See also the [known issues](/graph/known-issues) for these APIs.

>**Note:** If you use the groups API in a [Microsoft Teams app](/microsoftteams/platform/#apps-in-microsoft-teams) rather than in a standalone app - for example as part of a tab or bot running in Microsoft Teams - follow the guidance in the article [Using Microsoft Graph in your Microsoft Teams pages](/microsoftteams/platform/resources/microsoft-graph).

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

> [!Note]
> Tenant guests are always processed via the slow path.

## Polling requirements

If your app polls to see whether a resource has changed, you can only do that once per day. 
([teamsAsyncOperation](teamsasyncoperation.md) is an exception in that it's intended to be polled frequently.) 
If you need to hear about changes more frequently than that, you should [create a subscription](../api/subscription-post-subscriptions.md) to that resource and receive change notifications (webhooks). 
If you don't find support for the type of subscription you need, we encourage you to provide feedback via [UserVoice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests?category_id=359626). 

When polling for new messages, you must specify a date range where supported. For details, see [get channel messages delta](/graph/api/chatmessage-delta?view=graph-rest-beta).

Polling is doing a GET operation on a resource over and over again to see if that resource has changed. 
You're allowed to GET the same resource multiple times a day, as long as it's not polling. 
For example, it is okay to GET /me/joinedTeams every time the user visits/refreshes your web page, 
but it is not okay to GET /me/joinedTeams in a loop every 30 seconds to refresh that web page.

Apps that don't follow these polling requirements will be considered in violation of the
[Microsoft APIs Terms of Use](https://docs.microsoft.com/legal/microsoft-apis/terms-of-use). This may result in additional [throttling](/graph/throttling) 
or the suspension or termination of your use of the Microsoft APIs.

## See also

[Microsoft Teams API overview](/graph/teams-concept-overview)

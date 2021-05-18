---
title: "Use the Microsoft Graph API to work with Microsoft Teams"
description: "Microsoft Teams is a chat-based workspace in Microsoft 365 that provides built-in access to team-specific calendars, files, OneNote notes, Planner plans, and more."
localization_priority: Priority
author: "nkramer"
ms.prod: "microsoft-teams"
doc_type: conceptualPageType
---

# Use the Microsoft Graph API to work with Microsoft Teams

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Microsoft Teams is a chat-based workspace in Microsoft 365 that provides built-in access to team-specific calendars, files, OneNote notes, Planner plans, Shifts schedules, and more.

## Key resources in Microsoft Teams

| Resource | Methods |
|:---------------|:--------|
|[team](../resources/team.md)| [List your teams](../api/user-list-joinedteams.md), [list all teams](/graph/teams-list-all-teams), [create](../api/team-put-teams.md), [read](../api/team-get.md), [update](../api/team-update.md), [delete](../api/group-delete.md), [clone](../api/team-clone.md), [archive](../api/team-archive.md), [unarchive](../api/team-unarchive.md) |
|[group](../resources/group.md)| [Add member](../api/group-post-members.md), [remove member](../api/group-delete-members.md), [add owner](../api/group-post-owners.md), [remove owner](../api/group-delete-owners.md), [get files](drive.md), [get notebook](../resources/notebook.md), [get plans](plannergroup.md), [get calendar](event.md) |
|[channel](../resources/channel.md)|[List](../api/channel-list.md), [create](../api/channel-post.md), [read](../api/channel-get.md), [update](../api/channel-patch.md), [delete](../api/channel-delete.md)|
|[teamsTab](../resources/teamstab.md) |[List](../api/channel-list-tabs.md), [create](../api/channel-post-tabs.md), [read](../api/channel-get-tabs.md), [update](../api/channel-patch-tabs.md), [delete](../api/channel-delete-tabs.md) |
|[teamsApp](../resources/teamsapp.md)|[List](../api/appcatalogs-list-teamsapps.md), [publish](../api/teamsapp-publish.md), [update](../api/teamsapp-update.md), [remove](../api/teamsapp-delete.md)|
|[teamsAppInstallation](../resources/teamsappinstallation.md)| [List](../api/team-list-installedapps.md), [install](../api/team-post-installedapps.md), [upgrade](../api/team-delete-installedapps.md), [remove](../api/team-delete-installedapps.md) |
|[chatMessage](../resources/chatmessage.md)| [list in channel](../api/channel-list-messages.md), [list in chat](../api/chat-list-messages.md), [send](../api/chatmessage-post.md), [read in channel](../api/chatmessage-get.md), [read in chat](../api/chatmessage-get.md)|
|[call](../resources/call.md)| [Answer](../api/call-answer.md), [reject](../api/call-reject.md), [redirect](../api/call-redirect.md), [mute](../api/call-mute.md), [unmute](../api/call-unmute.md), [change screen sharing role](../api/call-changescreensharingrole.md), [list participants](../api/call-list-participants.md), [invite participants](../api/participant-invite.md) |
|[schedule](../resources/schedule.md)| [Create or replace](../api/team-put-schedule.md), [get](../api/schedule-get.md), [share](../api/schedule-share.md) |
|[schedulingGroup](../resources/schedulinggroup.md)| [Create](../api/schedule-post-schedulinggroups.md), [List](../api/schedule-list-schedulinggroups.md), [Get](../api/schedulinggroup-get.md), [Replace](../api/schedulinggroup-put.md), [Delete](../api/schedulinggroup-delete.md) |
|activityFeedNotification| [Send notification to user in scope of a chat](../api/chat-sendactivitynotification.md), [Send notification to user in scope of a team](../api/team-sendactivitynotification.md), [Send notification to user in personal scope](../api/userteamwork-sendactivitynotification.md)|
|[shift](../resources/shift.md)| [Create](../api/schedule-post-shifts.md), [List](../api/schedule-list-shifts.md), [Get](../api/shift-get.md), [Replace](../api/shift-put.md), [Delete](../api/shift-delete.md) |
|[timeOff](../resources/timeoff.md)| [Create](../api/schedule-post-timesoff.md), [List](../api/schedule-list-timesoff.md), [Get](../api/timeoff-get.md), [Replace](../api/timeoff-put.md), [Delete](../api/timeoff-delete.md) |
|[timeOffReason](../resources/timeoffreason.md)| [Create](../api/schedule-post-timeoffreasons.md), [List](../api/schedule-list-timeoffreasons.md), [Get](../api/timeoffreason-get.md), [Replace](../api/timeoffreason-put.md), [Delete](../api/timeoffreason-delete.md) |

## Microsoft Teams limits

The tested performance and capacity limits of Microsoft Teams are documented in
[Limits and specifications for Microsoft Teams](/microsoftteams/limits-specifications-teams).
These limits apply whether using Microsoft Teams directly or using Microsoft Graph APIs.
Because every team has a corresponding group, and every group is a directory object,
limits on the [number of groups](/microsoft-365/admin/create-groups/office-365-groups#group-limits)
and the [number of directory objects ("resources")](/azure/active-directory/users-groups-roles/directory-service-limits-restrictions)
can also come into play. 

Files inside channels are stored in SharePoint; [SharePoint online limits](/office365/servicedescriptions/sharepoint-online-service-description/sharepoint-online-limits) apply.

See also [throttling limits for Microsoft Teams services](/graph/throttling#microsoft-teams-service-limits).

## Teams and groups

In Microsoft Graph, Microsoft Teams is represented by a [group](../resources/group.md) resource. Both Microsoft Teams and Microsoft 365 groups address the various needs of group collaboration. Almost all the group-based features apply to Microsoft Teams and Microsoft 365 groups, such as group calendar, files, notes, photo, plans, and so on. The main difference between a [team](team.md) and a Microsoft 365 group is the mode of communication between members. Team members communicate by persistent chat in the context of a specific team. Microsoft 365 group members communicate by group conversations, which are email conversations that occur in the context of a group in Outlook.

Any group that has a team has a **resourceProvisioningOptions** property that contains "Team".

>**Note:** The **Group.resourceProvisioningOptions** property can be changed.
Do not add or remove "Team" from that collection;
otherwise, you'll get incorrect results when you list all teams.

The following are the differences at the API level between teams and groups:

- Persistent chat is available only to Microsoft Teams. This feature is hierarchically represented by the [channel](../resources/channel.md) and [chatMessage](../resources/chatmessage.md) resources.
- Group conversations are available only to Microsoft 365 groups. This feature is hierarchically represented by the [conversation](../resources/conversation.md), [conversationThread](../resources/conversationthread.md), and [post](../resources/post.md) resources.
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
| Fast | `https://graph.microsoft.com/beta/groups/02bd9fd6-8f93-4758-87c3-1fb73740a315/members/48d31887-5fad-4d73-a9f5-3c356e68a038/$ref` |
| Slow | `https://graph.microsoft.com/beta/groups/{02bd9fd6-8f93-4758-87c3-1fb73740a315}/members/{48d31887-5fad-4d73-a9f5-3c356e68a038}/$ref` |

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
If you don't find support for the type of subscription you need, we encourage you to provide feedback via the [Microsoft 365 Developer Platform ideas forum](https://techcommunity.microsoft.com/t5/microsoft-365-developer-platform/idb-p/Microsoft365DeveloperPlatform/label-name/Microsoft%20Graph). 

When polling for new messages, you must specify a date range where supported. For details, see [get channel messages delta](../api/chatmessage-delta.md).

Polling is doing a GET operation on a resource over and over again to see if that resource has changed. 
You're allowed to GET the same resource multiple times a day, as long as it's not polling. 
For example, it is okay to GET /me/joinedTeams every time the user visits/refreshes your web page, 
but it is not okay to GET /me/joinedTeams in a loop every 30 seconds to refresh that web page.

Apps that don't follow these polling requirements will be considered in violation of the
[Microsoft APIs Terms of Use](/legal/microsoft-apis/terms-of-use). This may result in additional [throttling](/graph/throttling) 
or the suspension or termination of your use of the Microsoft APIs.

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.

## See also

- [Microsoft Teams API overview](/graph/teams-concept-overview)
- Sample code: [Contoso Airlines](https://github.com/microsoftgraph/contoso-airlines-teams-sample), [C# mini-samples](https://github.com/microsoftgraph/csharp-teams-sample-graph)

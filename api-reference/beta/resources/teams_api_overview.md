# Use the Microsoft Graph API to work with Microsoft Teams

Microsoft Teams is a chat-based workspace in Office 365 that provides built-in access to team-specific calendars, files, OneNote notes, Planner plans, and more.

In Microsoft Graph, Microsoft Teams is represented by a [group](../resources/group.md) resource. Both Microsoft Teams and Office 365 groups address 
the various needs of group collaboration. Almost all the group-based features apply to Microsoft Teams and 
Office 365 groups, such as group calendar, files, notes, photo, plans, and so on. The main difference between a team and an Office 365 group is the mode of communication 
between members. Team members communicate by persistent chat in the context of a specific team. Office 365 group members communicate by group conversations, 
which are email conversations that occur in the context of a group in Outlook.

The following are the differences at the API level: 

- Persistent chat is available only to Microsoft Teams. This feature is hierarchically represented by the 
[channel](../resources/channel.md), [chatThread](../resources/chatthread.md), and [chatMessage](../resources/chatmessage.md) resources.
- Group conversations are available only to Office 365 groups. This feature is hierarchically represented by 
the [conversation](../resources/conversation.md), [conversationThread](../resources/conversationthread.md), and [post](../resources/post.md) resources. 
- Currently, you can use the [Create groups](../api/group_post_groups.md) API to create an Office 365 group, but not a team in Microsoft Teams.
- The [List joined teams](../api/user_list_joinedteams.md) method applies only to Microsoft Teams.

>**Note:** If you use the groups API in a [Microsoft Teams app](https://msdn.microsoft.com/en-us/microsoft-teams/index#apps-in-microsoft-teams) 
rather than in a standalone app - for example as part of a tab or bot running in Microsoft Teams - follow the guidance in the article 
[Using Microsoft Graph in your Microsoft Teams pages](https://msdn.microsoft.com/en-us/microsoft-teams/graph).



# Use the Microsoft Graph API to work with Microsoft Teams

Microsoft Teams is built upon Office 365 groups.  All the [group APIs](group.md) can also be used with teams, with the exception that 'Create group' does not currently allow you to create a team.  

* There are also some APIs in beta that are specific to Microsoft Teams: [channels](../../beta/resources/channel.md), [chat threads](../../beta/resources/chatthread.md), and [chat message](../../beta/resources/chatmessage.md).

* Care must be taken if using these group APIs in a [Microsoft Teams app](https://msdn.microsoft.com/en-us/microsoft-teams/index) - e.g. as part inside a 'tab' or 'bot' running inside Microsoft Teams - rather than in a standalone app.  [See this guidance](https://msdn.microsoft.com/en-us/microsoft-teams/graph).

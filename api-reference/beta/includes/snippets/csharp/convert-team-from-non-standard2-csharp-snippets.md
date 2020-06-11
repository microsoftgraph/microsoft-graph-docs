---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var team = new Team
{
	DisplayName = "My Class Team",
	Description = "My Class Team’s Description",
	Channels = (ITeamChannelsCollectionPage)new List<Channel>()
	{
		new Channel
		{
			DisplayName = "Class Announcements 📢",
			IsFavoriteByDefault = true
		},
		new Channel
		{
			DisplayName = "Homework 🏋️",
			IsFavoriteByDefault = true
		}
	},
	MemberSettings = new TeamMemberSettings
	{
		AllowCreateUpdateChannels = false,
		AllowDeleteChannels = false,
		AllowAddRemoveApps = false,
		AllowCreateUpdateRemoveTabs = false,
		AllowCreateUpdateRemoveConnectors = false
	},
	InstalledApps = (ITeamInstalledAppsCollectionPage)new List<TeamsAppInstallation>()
	{
		new TeamsAppInstallation
		{
			AdditionalData = new Dictionary<string, object>()
			{
				{"teamsApp@odata.bind", "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('com.microsoft.teamspace.tab.vsts')"}
			}
		},
		new TeamsAppInstallation
		{
			AdditionalData = new Dictionary<string, object>()
			{
				{"teamsApp@odata.bind", "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('1542629c-01b3-4a6d-8f76-1938b779e48d')"}
			}
		}
	},
	AdditionalData = new Dictionary<string, object>()
	{
		{"template@odata.bind", "https://graph.microsoft.com/beta/teamsTemplates('educationClass')"}
	}
};

await graphClient.Teams
	.Request()
	.AddAsync(team);

```
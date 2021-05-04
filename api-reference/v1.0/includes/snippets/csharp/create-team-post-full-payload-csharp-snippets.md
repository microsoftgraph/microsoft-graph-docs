---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var team = new Team
{
	Visibility = TeamVisibilityType.Private,
	DisplayName = "Sample Engineering Team",
	Description = "This is a sample engineering team, used to showcase the range of properties supported by this API",
	Channels = new TeamChannelsCollectionPage()
	{
		new Channel
		{
			DisplayName = "Announcements 📢",
			IsFavoriteByDefault = true,
			Description = "This is a sample announcements channel that is favorited by default. Use this channel to make important team, product, and service announcements."
		},
		new Channel
		{
			DisplayName = "Training 🏋️",
			IsFavoriteByDefault = true,
			Description = "This is a sample training channel, that is favorited by default, and contains an example of pinned website and YouTube tabs.",
			Tabs = new ChannelTabsCollectionPage()
			{
				new TeamsTab
				{
					DisplayName = "A Pinned Website",
					Configuration = new TeamsTabConfiguration
					{
						ContentUrl = "https://docs.microsoft.com/microsoftteams/microsoft-teams"
					},
					AdditionalData = new Dictionary<string, object>()
					{
						{"teamsApp@odata.bind", "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('com.microsoft.teamspace.tab.web')"}
					}
				},
				new TeamsTab
				{
					DisplayName = "A Pinned YouTube Video",
					Configuration = new TeamsTabConfiguration
					{
						ContentUrl = "https://tabs.teams.microsoft.com/Youtube/Home/YoutubeTab?videoId=X8krAMdGvCQ",
						WebsiteUrl = "https://www.youtube.com/watch?v=X8krAMdGvCQ"
					},
					AdditionalData = new Dictionary<string, object>()
					{
						{"teamsApp@odata.bind", "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('com.microsoft.teamspace.tab.youtube')"}
					}
				}
			}
		},
		new Channel
		{
			DisplayName = "Planning 📅 ",
			Description = "This is a sample of a channel that is not favorited by default, these channels will appear in the more channels overflow menu.",
			IsFavoriteByDefault = false
		},
		new Channel
		{
			DisplayName = "Issues and Feedback 🐞",
			Description = "This is a sample of a channel that is not favorited by default, these channels will appear in the more channels overflow menu."
		}
	},
	MemberSettings = new TeamMemberSettings
	{
		AllowCreateUpdateChannels = true,
		AllowDeleteChannels = true,
		AllowAddRemoveApps = true,
		AllowCreateUpdateRemoveTabs = true,
		AllowCreateUpdateRemoveConnectors = true
	},
	GuestSettings = new TeamGuestSettings
	{
		AllowCreateUpdateChannels = false,
		AllowDeleteChannels = false
	},
	FunSettings = new TeamFunSettings
	{
		AllowGiphy = true,
		GiphyContentRating = GiphyRatingType.Moderate,
		AllowStickersAndMemes = true,
		AllowCustomMemes = true
	},
	MessagingSettings = new TeamMessagingSettings
	{
		AllowUserEditMessages = true,
		AllowUserDeleteMessages = true,
		AllowOwnerDeleteMessages = true,
		AllowTeamMentions = true,
		AllowChannelMentions = true
	},
	InstalledApps = new TeamInstalledAppsCollectionPage()
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
		{"template@odata.bind", "https://graph.microsoft.com/v1.0/teamsTemplates('standard')"},
		{"discoverySettings", "{\"showInTeamsSearchAndSuggestions\":true}"}
	}
};

await graphClient.Teams
	.Request()
	.AddAsync(team);

```
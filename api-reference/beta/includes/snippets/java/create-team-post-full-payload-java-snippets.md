---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Team team = new Team();
team.additionalDataManager().put("template@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/teamsTemplates('standard')"));
team.visibility = TeamVisibilityType.PRIVATE;
team.displayName = "Sample Engineering Team";
team.description = "This is a sample engineering team, used to showcase the range of properties supported by this API";
LinkedList<Channel> channelsList = new LinkedList<Channel>();
Channel channels = new Channel();
channels.displayName = "Announcements 📢";
channels.isFavoriteByDefault = true;
channels.description = "This is a sample announcements channel that is favorited by default. Use this channel to make important team, product, and service announcements.";
channelsList.add(channels);
Channel channels1 = new Channel();
channels1.displayName = "Training 🏋️";
channels1.isFavoriteByDefault = true;
channels1.description = "This is a sample training channel, that is favorited by default, and contains an example of pinned website and YouTube tabs.";
LinkedList<TeamsTab> tabsList = new LinkedList<TeamsTab>();
TeamsTab tabs = new TeamsTab();
tabs.additionalDataManager().put("teamsApp@odata.bind", new JsonPrimitive("https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('com.microsoft.teamspace.tab.web')"));
tabs.displayName = "A Pinned Website";
TeamsTabConfiguration configuration = new TeamsTabConfiguration();
configuration.contentUrl = "https://docs.microsoft.com/microsoftteams/microsoft-teams";
tabs.configuration = configuration;
tabsList.add(tabs);
TeamsTab tabs1 = new TeamsTab();
tabs1.additionalDataManager().put("teamsApp@odata.bind", new JsonPrimitive("https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('com.microsoft.teamspace.tab.youtube')"));
tabs1.displayName = "A Pinned YouTube Video";
TeamsTabConfiguration configuration1 = new TeamsTabConfiguration();
configuration1.contentUrl = "https://tabs.teams.microsoft.com/Youtube/Home/YoutubeTab?videoId=X8krAMdGvCQ";
configuration1.websiteUrl = "https://www.youtube.com/watch?v=X8krAMdGvCQ";
tabs1.configuration = configuration1;
tabsList.add(tabs1);
TeamsTabCollectionResponse teamsTabCollectionResponse = new TeamsTabCollectionResponse();
teamsTabCollectionResponse.value = tabsList;
TeamsTabCollectionPage teamsTabCollectionPage = new TeamsTabCollectionPage(teamsTabCollectionResponse, null);
channels1.tabs = teamsTabCollectionPage;
channelsList.add(channels1);
Channel channels2 = new Channel();
channels2.displayName = "Planning 📅 ";
channels2.description = "This is a sample of a channel that is not favorited by default, these channels will appear in the more channels overflow menu.";
channels2.isFavoriteByDefault = false;
channelsList.add(channels2);
Channel channels3 = new Channel();
channels3.displayName = "Issues and Feedback 🐞";
channels3.description = "This is a sample of a channel that is not favorited by default, these channels will appear in the more channels overflow menu.";
channelsList.add(channels3);
ChannelCollectionResponse channelCollectionResponse = new ChannelCollectionResponse();
channelCollectionResponse.value = channelsList;
ChannelCollectionPage channelCollectionPage = new ChannelCollectionPage(channelCollectionResponse, null);
team.channels = channelCollectionPage;
TeamMemberSettings memberSettings = new TeamMemberSettings();
memberSettings.allowCreateUpdateChannels = true;
memberSettings.allowDeleteChannels = true;
memberSettings.allowAddRemoveApps = true;
memberSettings.allowCreateUpdateRemoveTabs = true;
memberSettings.allowCreateUpdateRemoveConnectors = true;
team.memberSettings = memberSettings;
TeamGuestSettings guestSettings = new TeamGuestSettings();
guestSettings.allowCreateUpdateChannels = false;
guestSettings.allowDeleteChannels = false;
team.guestSettings = guestSettings;
TeamFunSettings funSettings = new TeamFunSettings();
funSettings.allowGiphy = true;
funSettings.giphyContentRating = GiphyRatingType.MODERATE;
funSettings.allowStickersAndMemes = true;
funSettings.allowCustomMemes = true;
team.funSettings = funSettings;
TeamMessagingSettings messagingSettings = new TeamMessagingSettings();
messagingSettings.allowUserEditMessages = true;
messagingSettings.allowUserDeleteMessages = true;
messagingSettings.allowOwnerDeleteMessages = true;
messagingSettings.allowTeamMentions = true;
messagingSettings.allowChannelMentions = true;
team.messagingSettings = messagingSettings;
TeamDiscoverySettings discoverySettings = new TeamDiscoverySettings();
discoverySettings.showInTeamsSearchAndSuggestions = true;
team.discoverySettings = discoverySettings;
LinkedList<TeamsAppInstallation> installedAppsList = new LinkedList<TeamsAppInstallation>();
TeamsAppInstallation installedApps = new TeamsAppInstallation();
installedApps.additionalDataManager().put("teamsApp@odata.bind", new JsonPrimitive("https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('com.microsoft.teamspace.tab.vsts')"));
installedAppsList.add(installedApps);
TeamsAppInstallation installedApps1 = new TeamsAppInstallation();
installedApps1.additionalDataManager().put("teamsApp@odata.bind", new JsonPrimitive("https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('1542629c-01b3-4a6d-8f76-1938b779e48d')"));
installedAppsList.add(installedApps1);
TeamsAppInstallationCollectionResponse teamsAppInstallationCollectionResponse = new TeamsAppInstallationCollectionResponse();
teamsAppInstallationCollectionResponse.value = installedAppsList;
TeamsAppInstallationCollectionPage teamsAppInstallationCollectionPage = new TeamsAppInstallationCollectionPage(teamsAppInstallationCollectionResponse, null);
team.installedApps = teamsAppInstallationCollectionPage;

graphClient.teams()
	.buildRequest()
	.post(team);

```
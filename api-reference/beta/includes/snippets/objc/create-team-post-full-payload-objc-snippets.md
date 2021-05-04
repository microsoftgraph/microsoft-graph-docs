---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/teams"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphTeam *team = [[MSGraphTeam alloc] init];
[team setVisibility: [MSGraphTeamVisibilityType private]];
[team setDisplayName:@"Sample Engineering Team"];
[team setDescription:@"This is a sample engineering team, used to showcase the range of properties supported by this API"];
NSMutableArray *channelsList = [[NSMutableArray alloc] init];
MSGraphChannel *channels = [[MSGraphChannel alloc] init];
[channels setDisplayName:@"Announcements 📢"];
[channels setIsFavoriteByDefault: true];
[channels setDescription:@"This is a sample announcements channel that is favorited by default. Use this channel to make important team, product, and service announcements."];
[channelsList addObject: channels];
MSGraphChannel *channels = [[MSGraphChannel alloc] init];
[channels setDisplayName:@"Training 🏋️"];
[channels setIsFavoriteByDefault: true];
[channels setDescription:@"This is a sample training channel, that is favorited by default, and contains an example of pinned website and YouTube tabs."];
NSMutableArray *tabsList = [[NSMutableArray alloc] init];
MSGraphTeamsTab *tabs = [[MSGraphTeamsTab alloc] init];
[tabs setDisplayName:@"A Pinned Website"];
MSGraphTeamsTabConfiguration *configuration = [[MSGraphTeamsTabConfiguration alloc] init];
[configuration setContentUrl:@"https://docs.microsoft.com/microsoftteams/microsoft-teams"];
[tabs setConfiguration:configuration];
[tabsList addObject: tabs];
MSGraphTeamsTab *tabs = [[MSGraphTeamsTab alloc] init];
[tabs setDisplayName:@"A Pinned YouTube Video"];
MSGraphTeamsTabConfiguration *configuration = [[MSGraphTeamsTabConfiguration alloc] init];
[configuration setContentUrl:@"https://tabs.teams.microsoft.com/Youtube/Home/YoutubeTab?videoId=X8krAMdGvCQ"];
[configuration setWebsiteUrl:@"https://www.youtube.com/watch?v=X8krAMdGvCQ"];
[tabs setConfiguration:configuration];
[tabsList addObject: tabs];
[channels setTabs:tabsList];
[channelsList addObject: channels];
MSGraphChannel *channels = [[MSGraphChannel alloc] init];
[channels setDisplayName:@"Planning 📅 "];
[channels setDescription:@"This is a sample of a channel that is not favorited by default, these channels will appear in the more channels overflow menu."];
[channels setIsFavoriteByDefault: false];
[channelsList addObject: channels];
MSGraphChannel *channels = [[MSGraphChannel alloc] init];
[channels setDisplayName:@"Issues and Feedback 🐞"];
[channels setDescription:@"This is a sample of a channel that is not favorited by default, these channels will appear in the more channels overflow menu."];
[channelsList addObject: channels];
[team setChannels:channelsList];
MSGraphTeamMemberSettings *memberSettings = [[MSGraphTeamMemberSettings alloc] init];
[memberSettings setAllowCreateUpdateChannels: true];
[memberSettings setAllowDeleteChannels: true];
[memberSettings setAllowAddRemoveApps: true];
[memberSettings setAllowCreateUpdateRemoveTabs: true];
[memberSettings setAllowCreateUpdateRemoveConnectors: true];
[team setMemberSettings:memberSettings];
MSGraphTeamGuestSettings *guestSettings = [[MSGraphTeamGuestSettings alloc] init];
[guestSettings setAllowCreateUpdateChannels: false];
[guestSettings setAllowDeleteChannels: false];
[team setGuestSettings:guestSettings];
MSGraphTeamFunSettings *funSettings = [[MSGraphTeamFunSettings alloc] init];
[funSettings setAllowGiphy: true];
[funSettings setGiphyContentRating: [MSGraphGiphyRatingType moderate]];
[funSettings setAllowStickersAndMemes: true];
[funSettings setAllowCustomMemes: true];
[team setFunSettings:funSettings];
MSGraphTeamMessagingSettings *messagingSettings = [[MSGraphTeamMessagingSettings alloc] init];
[messagingSettings setAllowUserEditMessages: true];
[messagingSettings setAllowUserDeleteMessages: true];
[messagingSettings setAllowOwnerDeleteMessages: true];
[messagingSettings setAllowTeamMentions: true];
[messagingSettings setAllowChannelMentions: true];
[team setMessagingSettings:messagingSettings];
MSGraphTeamDiscoverySettings *discoverySettings = [[MSGraphTeamDiscoverySettings alloc] init];
[discoverySettings setShowInTeamsSearchAndSuggestions: true];
[team setDiscoverySettings:discoverySettings];
NSMutableArray *installedAppsList = [[NSMutableArray alloc] init];
MSGraphTeamsAppInstallation *installedApps = [[MSGraphTeamsAppInstallation alloc] init];
[installedAppsList addObject: installedApps];
MSGraphTeamsAppInstallation *installedApps = [[MSGraphTeamsAppInstallation alloc] init];
[installedAppsList addObject: installedApps];
[team setInstalledApps:installedAppsList];

NSError *error;
NSData *teamData = [team getSerializedDataWithError:&error];
[urlRequest setHTTPBody:teamData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
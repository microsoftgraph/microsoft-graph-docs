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
NSMutableArray *channelsList = [[NSMutableArray alloc] init];
MSGraphChannel *channels = [[MSGraphChannel alloc] init];
[channels setDisplayName:@"Class Announcements 📢"];
[channels setIsFavoriteByDefault: true];
[channelsList addObject: channels];
MSGraphChannel *channels = [[MSGraphChannel alloc] init];
[channels setDisplayName:@"Homework 🏋️"];
[channels setIsFavoriteByDefault: true];
[channelsList addObject: channels];
[team setChannels:channelsList];
MSGraphTeamMemberSettings *memberSettings = [[MSGraphTeamMemberSettings alloc] init];
[memberSettings setAllowCreateUpdateChannels: false];
[memberSettings setAllowDeleteChannels: false];
[memberSettings setAllowAddRemoveApps: false];
[memberSettings setAllowCreateUpdateRemoveTabs: false];
[memberSettings setAllowCreateUpdateRemoveConnectors: false];
[team setMemberSettings:memberSettings];
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
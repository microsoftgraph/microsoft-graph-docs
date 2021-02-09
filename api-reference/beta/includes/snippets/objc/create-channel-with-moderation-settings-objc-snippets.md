---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/teams/57fb72d0-d811-46f4-8947-305e6072eaa5/channels"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphChannel *channel = [[MSGraphChannel alloc] init];
[channel setDisplayName:@"TestChannelModeration"];
[channel setDescription:@"Test channel moderation."];
[channel setMembershipType: [MSGraphChannelMembershipType standard]];
MSGraphChannelModerationSettings *moderationSettings = [[MSGraphChannelModerationSettings alloc] init];
[moderationSettings setUserNewMessageRestriction: [MSGraphUserNewMessageRestriction everyoneExceptGuests]];
[moderationSettings setReplyRestriction: [MSGraphReplyRestriction everyone]];
[moderationSettings setAllowNewMessageFromBots: true];
[moderationSettings setAllowNewMessageFromConnectors: true];
[channel setModerationSettings:moderationSettings];

NSError *error;
NSData *channelData = [channel getSerializedDataWithError:&error];
[urlRequest setHTTPBody:channelData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
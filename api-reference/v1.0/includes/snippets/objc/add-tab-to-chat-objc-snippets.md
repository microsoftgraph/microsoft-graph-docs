---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/chats/19:d65713bc498c4a428c71ef9353e6ce20@thread.v2/tabs"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphTeamsTab *teamsTab = [[MSGraphTeamsTab alloc] init];
[teamsTab setDisplayName:@"My Contoso Tab"];
MSGraphTeamsTabConfiguration *configuration = [[MSGraphTeamsTabConfiguration alloc] init];
[configuration setEntityId:@"2DCA2E6C7A10415CAF6B8AB6661B3154"];
[configuration setContentUrl:@"https://www.contoso.com/Orders/2DCA2E6C7A10415CAF6B8AB6661B3154/tabView"];
[configuration setWebsiteUrl:@"https://www.contoso.com/Orders/2DCA2E6C7A10415CAF6B8AB6661B3154"];
[configuration setRemoveUrl:@"https://www.contoso.com/Orders/2DCA2E6C7A10415CAF6B8AB6661B3154/uninstallTab"];
[teamsTab setConfiguration:configuration];

NSError *error;
NSData *teamsTabData = [teamsTab getSerializedDataWithError:&error];
[urlRequest setHTTPBody:teamsTabData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
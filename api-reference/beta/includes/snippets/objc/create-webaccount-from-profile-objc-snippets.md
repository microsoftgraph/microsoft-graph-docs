---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/profile/webAccounts"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphWebAccount *webAccount = [[MSGraphWebAccount alloc] init];
[webAccount setDescription:@"My Github contributions!"];
[webAccount setUserId:@"innocenty.popov"];
MSGraphServiceInformation *service = [[MSGraphServiceInformation alloc] init];
[service setName:@"GitHub"];
[service setWebUrl:@"https://github.com"];
[webAccount setService:service];

NSError *error;
NSData *webAccountData = [webAccount getSerializedDataWithError:&error];
[urlRequest setHTTPBody:webAccountData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
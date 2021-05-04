---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/onPremisesPublishingProfiles/provisioning/hybridAgentUpdaterConfiguration"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphHybridAgentUpdaterConfiguration *hybridAgentUpdaterConfiguration = [[MSGraphHybridAgentUpdaterConfiguration alloc] init];
[hybridAgentUpdaterConfiguration setDeferUpdate:@"2018-08-20T12:00"];

NSError *error;
NSData *hybridAgentUpdaterConfigurationData = [hybridAgentUpdaterConfiguration getSerializedDataWithError:&error];
[urlRequest setHTTPBody:hybridAgentUpdaterConfigurationData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
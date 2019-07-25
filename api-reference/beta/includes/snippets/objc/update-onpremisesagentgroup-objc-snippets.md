---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/onPremisesPublishingProfiles/provisioning/agentGroups/8832388F-3814-4952-B288-FFB62081FE25/"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphOnPremisesAgentGroup *onPremisesAgentGroup = [[MSGraphOnPremisesAgentGroup alloc] init];
[onPremisesAgentGroup setDisplayName:@"Group New Name"];

NSError *error;
NSData *onPremisesAgentGroupData = [onPremisesAgentGroup getSerializedDataWithError:&error];
[urlRequest setHTTPBody:onPremisesAgentGroupData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
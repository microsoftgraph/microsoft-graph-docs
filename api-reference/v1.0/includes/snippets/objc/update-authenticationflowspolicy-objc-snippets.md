---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/policies/authenticationFlowsPolicy"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAuthenticationFlowsPolicy *authenticationFlowsPolicy = [[MSGraphAuthenticationFlowsPolicy alloc] init];
MSGraphSelfServiceSignUpAuthenticationFlowConfiguration *selfServiceSignUp = [[MSGraphSelfServiceSignUpAuthenticationFlowConfiguration alloc] init];
[selfServiceSignUp setIsEnabled: true];
[authenticationFlowsPolicy setSelfServiceSignUp:selfServiceSignUp];

NSError *error;
NSData *authenticationFlowsPolicyData = [authenticationFlowsPolicy getSerializedDataWithError:&error];
[urlRequest setHTTPBody:authenticationFlowsPolicyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
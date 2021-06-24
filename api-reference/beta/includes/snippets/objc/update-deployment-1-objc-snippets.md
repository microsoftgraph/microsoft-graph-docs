---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/admin/windows/updates/deployments/b5171742-1742-b517-4217-17b5421717b5"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphWindowsUpdatesDeployment *deployment = [[MSGraphWindowsUpdatesDeployment alloc] init];
MSGraphWindowsUpdatesDeploymentState *state = [[MSGraphWindowsUpdatesDeploymentState alloc] init];
[state setRequestedValue: [MSGraphWindowsUpdatesRequestedDeploymentStateValue paused]];
[deployment setState:state];

NSError *error;
NSData *deploymentData = [deployment getSerializedDataWithError:&error];
[urlRequest setHTTPBody:deploymentData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
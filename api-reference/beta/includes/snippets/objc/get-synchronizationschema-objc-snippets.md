---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/servicePrincipals/{servicePrincipalId}/synchronization/jobs/{jobId}/schema"]]];
[urlRequest setHTTPMethod:@"GET"];
[urlRequest setValue:@"Bearer {Token}" forHTTPHeaderField:@"Authorization"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		MSGraphSynchronizationSchema *synchronizationSchema = [[MSGraphSynchronizationSchema alloc] initWithData:data error:&nserror];

}];

[meDataTask execute];

```
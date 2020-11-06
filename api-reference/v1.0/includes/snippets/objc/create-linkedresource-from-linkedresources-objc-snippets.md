---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/todo/lists/dfsdc-f9dfdfs-dcsda9/tasks/e2dc-f9cce2-dce29/linkedResources"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphLinkedResource *linkedResource = [[MSGraphLinkedResource alloc] init];
[linkedResource setWebUrl:@"https://microsoft.com"];
[linkedResource setApplicationName:@"Microsoft"];
[linkedResource setDisplayName:@"Microsoft"];
[linkedResource setExternalId:@"dk9cddce2-dce2-f9dd-e2dc-cdf9e2dccdf9"];

NSError *error;
NSData *linkedResourceData = [linkedResource getSerializedDataWithError:&error];
[urlRequest setHTTPBody:linkedResourceData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
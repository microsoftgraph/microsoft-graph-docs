---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/onPremisesPublishingProfiles/provisioning/publishedResources/1234b780-965f-4149-85c5-a8c73e58b67d"]]];
[urlRequest setHTTPMethod:@"PATCH"];

MSGraphPublishedResource *publishedResource = [[MSGraphPublishedResource alloc] init];
[publishedResource setDisplayName:@"Demo provisioning (updated)"];

NSError *error;
NSData *publishedResourceData = [publishedResource getSerializedDataWithError:&error];
[urlRequest setHTTPBody:publishedResourceData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/compliance/ediscovery/cases/061b9a92-8926-4bd9-b41d-abf35edc7583"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphEdiscoveryCase *ediscoveryCase = [[MSGraphEdiscoveryCase alloc] init];
[ediscoveryCase setDisplayName:@"My Case 1 - Renamed"];
[ediscoveryCase setDescription:@"Updated description"];
[ediscoveryCase setExternalId:@"Updated externalId"];

NSError *error;
NSData *ediscoveryCaseData = [ediscoveryCase getSerializedDataWithError:&error];
[urlRequest setHTTPBody:ediscoveryCaseData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
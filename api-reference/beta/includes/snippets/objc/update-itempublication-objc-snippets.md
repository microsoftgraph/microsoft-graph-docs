---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/users/{userId}/profile/publications/{id}"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphItemPublication *itemPublication = [[MSGraphItemPublication alloc] init];
[itemPublication setPublisher:@"International Association of Branding Management Publishing"];
[itemPublication setThumbnailUrl:@"https://iabm.io/sdhdfhsdhshsd.jpg"];

NSError *error;
NSData *itemPublicationData = [itemPublication getSerializedDataWithError:&error];
[urlRequest setHTTPBody:itemPublicationData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
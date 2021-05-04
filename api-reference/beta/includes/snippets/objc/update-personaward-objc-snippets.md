---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/users/{userId}/profile/awards/{personAwardId}"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphPersonAward *personAward = [[MSGraphPersonAward alloc] init];
[personAward setIssuingAuthority:@"International Association of Branding Management"];
[personAward setThumbnailUrl:@"https://iabm.io/sdhdfhsdhshsd.jpg"];

NSError *error;
NSData *personAwardData = [personAward getSerializedDataWithError:&error];
[urlRequest setHTTPBody:personAwardData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/profile/names"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphPersonName *personName = [[MSGraphPersonName alloc] init];
[personName setDisplayName:@"Innocenty Popov"];
[personName setFirst:@"Innocenty"];
[personName setInitials:@"IP"];
[personName setLast:@"Popov"];
[personName setLanguageTag:@"en-US"];
[personName setMaiden: null];

NSError *error;
NSData *personNameData = [personName getSerializedDataWithError:&error];
[urlRequest setHTTPBody:personNameData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
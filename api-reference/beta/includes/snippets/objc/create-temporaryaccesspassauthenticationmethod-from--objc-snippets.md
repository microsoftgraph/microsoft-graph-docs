---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/users/kim@contoso.com/authentication/temporaryAccessPassMethods"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphTemporaryAccessPassAuthenticationMethod *temporaryAccessPassAuthenticationMethod = [[MSGraphTemporaryAccessPassAuthenticationMethod alloc] init];
[temporaryAccessPassAuthenticationMethod setStartDateTime: "2021-01-26T00:00:00Z"];
[temporaryAccessPassAuthenticationMethod setLifetimeInMinutes: 60];
[temporaryAccessPassAuthenticationMethod setIsUsableOnce: false];

NSError *error;
NSData *temporaryAccessPassAuthenticationMethodData = [temporaryAccessPassAuthenticationMethod getSerializedDataWithError:&error];
[urlRequest setHTTPBody:temporaryAccessPassAuthenticationMethodData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
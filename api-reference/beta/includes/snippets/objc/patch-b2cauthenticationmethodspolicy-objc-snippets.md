---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/policies/b2cAuthenticationMethodsPolicy"]]];
[urlRequest setHTTPMethod:@"PATCH"];

MSGraphB2cAuthenticationMethodsPolicy *b2cAuthenticationMethodsPolicy = [[MSGraphB2cAuthenticationMethodsPolicy alloc] init];
[b2cAuthenticationMethodsPolicy setIsEmailPasswordAuthenticationEnabled: false];
[b2cAuthenticationMethodsPolicy setIsUserNameAuthenticationEnabled: true];
[b2cAuthenticationMethodsPolicy setIsPhoneOneTimePasswordAuthenticationEnabled: true];

NSError *error;
NSData *b2cAuthenticationMethodsPolicyData = [b2cAuthenticationMethodsPolicy getSerializedDataWithError:&error];
[urlRequest setHTTPBody:b2cAuthenticationMethodsPolicyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
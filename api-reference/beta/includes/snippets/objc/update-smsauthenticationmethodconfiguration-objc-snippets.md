---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/sms"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAuthenticationMethodConfiguration *authenticationMethodConfiguration = [[MSGraphAuthenticationMethodConfiguration alloc] init];
[authenticationMethodConfiguration setId:@"Sms"];
[authenticationMethodConfiguration setState: [MSGraphAuthenticationMethodState enabled]];

NSError *error;
NSData *authenticationMethodConfigurationData = [authenticationMethodConfiguration getSerializedDataWithError:&error];
[urlRequest setHTTPBody:authenticationMethodConfigurationData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
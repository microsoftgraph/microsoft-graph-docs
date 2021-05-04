---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identity/identityProviders"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphIdentityProviderBase *identityProviderBase = [[MSGraphIdentityProviderBase alloc] init];
[identityProviderBase setDisplayName:@"Sign in with Apple"];
[identityProviderBase setDeveloperId:@"UBF8T346G9"];
[identityProviderBase setServiceId:@"com.microsoft.rts.b2c.test.client"];
[identityProviderBase setKeyId:@"99P6D879C4"];
[identityProviderBase setCertificateData:@"******"];

NSError *error;
NSData *identityProviderBaseData = [identityProviderBase getSerializedDataWithError:&error];
[urlRequest setHTTPBody:identityProviderBaseData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
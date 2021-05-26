---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphOrganizationalBranding *organizationalBranding = [[MSGraphOrganizationalBranding alloc] init];
[organizationalBranding setBackgroundColor:@"#FFFF33"];

NSError *error;
NSData *organizationalBrandingData = [organizationalBranding getSerializedDataWithError:&error];
[urlRequest setHTTPBody:organizationalBrandingData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/organization/{id}/certificateBasedAuthConfiguration/$ref"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphCertificateBasedAuthConfiguration *certificateBasedAuthConfiguration = [[MSGraphCertificateBasedAuthConfiguration alloc] init];
NSMutableArray *certificateAuthoritiesList = [[NSMutableArray alloc] init];
MSGraphCertificateAuthority *certificateAuthorities = [[MSGraphCertificateAuthority alloc] init];
[certificateAuthorities setIsRootAuthority: true];
[certificateAuthorities setCertificate:@"Binary"];
[certificateAuthoritiesList addObject: certificateAuthorities];
[certificateBasedAuthConfiguration setCertificateAuthorities:certificateAuthoritiesList];

NSError *error;
NSData *certificateBasedAuthConfigurationData = [certificateBasedAuthConfiguration getSerializedDataWithError:&error];
[urlRequest setHTTPBody:certificateBasedAuthConfigurationData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
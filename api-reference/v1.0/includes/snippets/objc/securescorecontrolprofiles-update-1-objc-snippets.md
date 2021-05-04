---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/security/secureScoreControlProfiles/NonOwnerAccess"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphSecureScoreControlProfile *secureScoreControlProfile = [[MSGraphSecureScoreControlProfile alloc] init];
[secureScoreControlProfile setAssignedTo:@""];
[secureScoreControlProfile setComment:@"control is reviewed"];
[secureScoreControlProfile setState:@"Reviewed"];
MSGraphSecurityVendorInformation *vendorInformation = [[MSGraphSecurityVendorInformation alloc] init];
[vendorInformation setProvider:@"SecureScore"];
[vendorInformation setProviderVersion: null];
[vendorInformation setSubProvider: null];
[vendorInformation setVendor:@"Microsoft"];
[secureScoreControlProfile setVendorInformation:vendorInformation];

NSError *error;
NSData *secureScoreControlProfileData = [secureScoreControlProfile getSerializedDataWithError:&error];
[urlRequest setHTTPBody:secureScoreControlProfileData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/policies/permissionGrantPolicies/my-custom-consent-policy"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphPermissionGrantPolicy *permissionGrantPolicy = [[MSGraphPermissionGrantPolicy alloc] init];
[permissionGrantPolicy setDisplayName:@"Custom permission grant policy"];

NSError *error;
NSData *permissionGrantPolicyData = [permissionGrantPolicy getSerializedDataWithError:&error];
[urlRequest setHTTPBody:permissionGrantPolicyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
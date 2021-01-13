---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/policies/permissionGrantPolicies"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphPermissionGrantPolicy *permissionGrantPolicy = [[MSGraphPermissionGrantPolicy alloc] init];
[permissionGrantPolicy setId:@"my-custom-consent-policy"];
[permissionGrantPolicy setDisplayName:@"Custom application consent policy"];
[permissionGrantPolicy setDescription:@"A custom permission grant policy to customize conditions for granting consent."];

NSError *error;
NSData *permissionGrantPolicyData = [permissionGrantPolicy getSerializedDataWithError:&error];
[urlRequest setHTTPBody:permissionGrantPolicyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
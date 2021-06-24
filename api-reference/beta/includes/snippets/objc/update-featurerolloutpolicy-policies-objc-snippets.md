---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/policies/featureRolloutPolicies/d7ab4886-d7f0-441b-a5e6-e62d7328d18a"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphFeatureRolloutPolicy *featureRolloutPolicy = [[MSGraphFeatureRolloutPolicy alloc] init];
[featureRolloutPolicy setDisplayName:@"PasswordHashSync Rollout Policy"];
[featureRolloutPolicy setDescription:@"PasswordHashSync Rollout Policy"];
[featureRolloutPolicy setIsEnabled: true];
[featureRolloutPolicy setIsAppliedToOrganization: false];

NSError *error;
NSData *featureRolloutPolicyData = [featureRolloutPolicy getSerializedDataWithError:&error];
[urlRequest setHTTPBody:featureRolloutPolicyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
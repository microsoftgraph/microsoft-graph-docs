---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/directory/featureRolloutPolicies"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		NSDictionary *jsonFinal = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		NSMutableArray *featureRolloutPolicyList = [[NSMutableArray alloc] init];
		featureRolloutPolicyList = [jsonFinal valueForKey:@"value"];
		MSGraphFeatureRolloutPolicy *featureRolloutPolicy = [[MSGraphFeatureRolloutPolicy alloc] initWithDictionary:[featureRolloutPolicyList objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```
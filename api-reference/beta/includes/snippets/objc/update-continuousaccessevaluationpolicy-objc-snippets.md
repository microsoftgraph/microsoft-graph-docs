---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identity/continuousAccessEvaluationPolicy"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphContinuousAccessEvaluationPolicy *continuousAccessEvaluationPolicy = [[MSGraphContinuousAccessEvaluationPolicy alloc] init];
NSMutableArray *usersList = [[NSMutableArray alloc] init];
[usersList addObject: @"88139f01-1f8d-4c06-ad74-a2544cee9aee"];
[continuousAccessEvaluationPolicy setUsers:usersList];
NSMutableArray *groupsList = [[NSMutableArray alloc] init];
[groupsList addObject: @"9972fb3f-7a40-49f5-85f6-129d9dfbd47a"];
[groupsList addObject: @"ea178055-4713-4d9a-a06c-ff17466b7e77"];
[continuousAccessEvaluationPolicy setGroups:groupsList];

NSError *error;
NSData *continuousAccessEvaluationPolicyData = [continuousAccessEvaluationPolicy getSerializedDataWithError:&error];
[urlRequest setHTTPBody:continuousAccessEvaluationPolicyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
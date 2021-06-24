---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/policies/adminConsentRequestPolicy"]]];
[urlRequest setHTTPMethod:@"PUT"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAdminConsentRequestPolicy *adminConsentRequestPolicy = [[MSGraphAdminConsentRequestPolicy alloc] init];
[adminConsentRequestPolicy setIsEnabled: true];
[adminConsentRequestPolicy setNotifyReviewers: true];
[adminConsentRequestPolicy setRemindersEnabled: true];
[adminConsentRequestPolicy setRequestDurationInDays: 5];
NSMutableArray *reviewersList = [[NSMutableArray alloc] init];
MSGraphAccessReviewReviewerScope *reviewers = [[MSGraphAccessReviewReviewerScope alloc] init];
[reviewers setQuery:@"/users/b6879be8-fb87-4482-a72e-18445d2b5c54"];
[reviewers setQueryType:@"MicrosoftGraph"];
[reviewersList addObject: reviewers];
MSGraphAccessReviewReviewerScope *reviewers = [[MSGraphAccessReviewReviewerScope alloc] init];
[reviewers setQuery:@"/users/b3427cc5-bf69-4dcd-95f7-ed1eb432f5e9"];
[reviewers setQueryType:@"MicrosoftGraph"];
[reviewersList addObject: reviewers];
[adminConsentRequestPolicy setReviewers:reviewersList];

NSError *error;
NSData *adminConsentRequestPolicyData = [adminConsentRequestPolicy getSerializedDataWithError:&error];
[urlRequest setHTTPBody:adminConsentRequestPolicyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
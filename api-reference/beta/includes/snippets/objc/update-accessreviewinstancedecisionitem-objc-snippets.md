---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/pendingAccessReviewInstances/70a68410-67f3-4d4c-b946-6989e050be19/decisions/12348410-67f3-4d4c-b946-6989e050be19"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAccessReviewInstanceDecisionItem *accessReviewInstanceDecisionItem = [[MSGraphAccessReviewInstanceDecisionItem alloc] init];
[accessReviewInstanceDecisionItem setDecision:@"Approve"];
[accessReviewInstanceDecisionItem setJustification:@"This person is still on my team"];

NSError *error;
NSData *accessReviewInstanceDecisionItemData = [accessReviewInstanceDecisionItem getSerializedDataWithError:&error];
[urlRequest setHTTPBody:accessReviewInstanceDecisionItemData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
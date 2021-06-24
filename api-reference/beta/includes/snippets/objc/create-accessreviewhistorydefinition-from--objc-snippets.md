---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identityGovernance/accessReviews/historyDefinitions"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAccessReviewHistoryDefinition *accessReviewHistoryDefinition = [[MSGraphAccessReviewHistoryDefinition alloc] init];
[accessReviewHistoryDefinition setDisplayName:@"Last quarter's group reviews April 2021"];
NSMutableArray *decisionsList = [[NSMutableArray alloc] init];
[decisionsList addObject: @"approve"];
[decisionsList addObject: @"deny"];
[decisionsList addObject: @"dontKnow"];
[decisionsList addObject: @"notReviewed"];
[decisionsList addObject: @"notNotified"];
[accessReviewHistoryDefinition setDecisions:decisionsList];
[accessReviewHistoryDefinition setReviewHistoryPeriodStartDateTime: "2021-01-01T00:00:00Z"];
[accessReviewHistoryDefinition setReviewHistoryPeriodEndDateTime: "2021-04-05T00:00:00Z"];
NSMutableArray *scopesList = [[NSMutableArray alloc] init];
MSGraphAccessReviewScope *scopes = [[MSGraphAccessReviewScope alloc] init];
[scopes setQueryType:@"MicrosoftGraph"];
[scopes setQuery:@"/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, 'accessPackageAssignments')"];
[scopes setQueryRoot: null];
[scopesList addObject: scopes];
MSGraphAccessReviewScope *scopes = [[MSGraphAccessReviewScope alloc] init];
[scopes setQueryType:@"MicrosoftGraph"];
[scopes setQuery:@"/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, '/groups')"];
[scopes setQueryRoot: null];
[scopesList addObject: scopes];
[accessReviewHistoryDefinition setScopes:scopesList];

NSError *error;
NSData *accessReviewHistoryDefinitionData = [accessReviewHistoryDefinition getSerializedDataWithError:&error];
[urlRequest setHTTPBody:accessReviewHistoryDefinitionData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
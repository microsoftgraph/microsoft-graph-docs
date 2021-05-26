---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identityGovernance/accessReviews/definitions"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAccessReviewScheduleDefinition *accessReviewScheduleDefinition = [[MSGraphAccessReviewScheduleDefinition alloc] init];
[accessReviewScheduleDefinition setDisplayName:@"Review employee access to LinkedIn"];
[accessReviewScheduleDefinition setDescriptionForAdmins:@"Review employee access to LinkedIn"];
MSGraphAccessReviewScope *scope = [[MSGraphAccessReviewScope alloc] init];
NSMutableArray *principalScopesList = [[NSMutableArray alloc] init];
MSGraphAccessReviewScope *principalScopes = [[MSGraphAccessReviewScope alloc] init];
[principalScopes setQuery:@"/users"];
[principalScopes setQueryType:@"MicrosoftGraph"];
[principalScopesList addObject: principalScopes];
[scope setPrincipalScopes:principalScopesList];
NSMutableArray *resourceScopesList = [[NSMutableArray alloc] init];
MSGraphAccessReviewScope *resourceScopes = [[MSGraphAccessReviewScope alloc] init];
[resourceScopes setQuery:@"/servicePrincipals/bae11f90-7d5d-46ba-9f55-8112b59d92ae"];
[resourceScopes setQueryType:@"MicrosoftGraph"];
[resourceScopesList addObject: resourceScopes];
[scope setResourceScopes:resourceScopesList];
[accessReviewScheduleDefinition setScope:scope];
NSMutableArray *reviewersList = [[NSMutableArray alloc] init];
MSGraphAccessReviewReviewerScope *reviewers = [[MSGraphAccessReviewReviewerScope alloc] init];
[reviewers setQuery:@"./manager"];
[reviewers setQueryType:@"MicrosoftGraph"];
[reviewers setQueryRoot:@"decisions"];
[reviewersList addObject: reviewers];
[accessReviewScheduleDefinition setReviewers:reviewersList];
NSMutableArray *backupReviewersList = [[NSMutableArray alloc] init];
MSGraphAccessReviewReviewerScope *backupReviewers = [[MSGraphAccessReviewReviewerScope alloc] init];
[backupReviewers setQuery:@"/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers"];
[backupReviewers setQueryType:@"MicrosoftGraph"];
[backupReviewersList addObject: backupReviewers];
[accessReviewScheduleDefinition setBackupReviewers:backupReviewersList];
NSMutableArray *fallbackReviewersList = [[NSMutableArray alloc] init];
MSGraphAccessReviewReviewerScope *fallbackReviewers = [[MSGraphAccessReviewReviewerScope alloc] init];
[fallbackReviewers setQuery:@"/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers"];
[fallbackReviewers setQueryType:@"MicrosoftGraph"];
[fallbackReviewersList addObject: fallbackReviewers];
[accessReviewScheduleDefinition setFallbackReviewers:fallbackReviewersList];
MSGraphAccessReviewScheduleSettings *settings = [[MSGraphAccessReviewScheduleSettings alloc] init];
[settings setMailNotificationsEnabled: true];
[settings setReminderNotificationsEnabled: true];
[settings setJustificationRequiredOnApproval: true];
[settings setDefaultDecisionEnabled: true];
[settings setDefaultDecision:@"Recommendation"];
[settings setInstanceDurationInDays: 180];
[settings setAutoApplyDecisionsEnabled: true];
[settings setRecommendationsEnabled: true];
MSGraphPatternedRecurrence *recurrence = [[MSGraphPatternedRecurrence alloc] init];
MSGraphRecurrencePattern *pattern = [[MSGraphRecurrencePattern alloc] init];
[pattern setType: [MSGraphRecurrencePatternType absoluteMonthly]];
[pattern setInterval: 6];
[pattern setDayOfMonth: 0];
[recurrence setPattern:pattern];
MSGraphRecurrenceRange *range = [[MSGraphRecurrenceRange alloc] init];
[range setType: [MSGraphRecurrenceRangeType numbered]];
[range setStartDate:@"2021-05-05"];
[range setEndDate:@"2022-05-05"];
[recurrence setRange:range];
[settings setRecurrence:recurrence];
[accessReviewScheduleDefinition setSettings:settings];

NSError *error;
NSData *accessReviewScheduleDefinitionData = [accessReviewScheduleDefinition getSerializedDataWithError:&error];
[urlRequest setHTTPBody:accessReviewScheduleDefinitionData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
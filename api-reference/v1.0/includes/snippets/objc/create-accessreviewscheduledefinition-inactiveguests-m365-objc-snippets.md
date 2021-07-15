---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identityGovernance/accessReviews/definitions"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAccessReviewScheduleDefinition *accessReviewScheduleDefinition = [[MSGraphAccessReviewScheduleDefinition alloc] init];
[accessReviewScheduleDefinition setDisplayName:@"Review inactive guests on teams"];
[accessReviewScheduleDefinition setDescriptionForAdmins:@"Control guest user access to our teams."];
[accessReviewScheduleDefinition setDescriptionForReviewers:@"Information security is everyone's responsibility. Review our access policy for more."];
MSGraphAccessReviewScope *instanceEnumerationScope = [[MSGraphAccessReviewScope alloc] init];
[instanceEnumerationScope setQuery:@"/groups?$filter=(groupTypes/any(c:c+eq+'Unified') and resourceProvisioningOptions/Any(x:x eq 'Team')')"];
[instanceEnumerationScope setQueryType:@"MicrosoftGraph"];
[accessReviewScheduleDefinition setInstanceEnumerationScope:instanceEnumerationScope];
MSGraphAccessReviewScope *scope = [[MSGraphAccessReviewScope alloc] init];
[scope setQuery:@"./members/microsoft.graph.user/?$filter=(userType eq 'Guest')"];
[scope setQueryType:@"MicrosoftGraph"];
[scope setInactiveDuration:@"P30D"];
[accessReviewScheduleDefinition setScope:scope];
NSMutableArray *reviewersList = [[NSMutableArray alloc] init];
MSGraphAccessReviewReviewerScope *reviewers = [[MSGraphAccessReviewReviewerScope alloc] init];
[reviewers setQuery:@"./owners"];
[reviewers setQueryType:@"MicrosoftGraph"];
[reviewersList addObject: reviewers];
[accessReviewScheduleDefinition setReviewers:reviewersList];
NSMutableArray *fallbackReviewersList = [[NSMutableArray alloc] init];
MSGraphAccessReviewReviewerScope *fallbackReviewers = [[MSGraphAccessReviewReviewerScope alloc] init];
[fallbackReviewers setQuery:@"/users/fc9a2c2b-1ddc-486d-a211-5fe8ca77fa1f"];
[fallbackReviewers setQueryType:@"MicrosoftGraph"];
[fallbackReviewersList addObject: fallbackReviewers];
[accessReviewScheduleDefinition setFallbackReviewers:fallbackReviewersList];
MSGraphAccessReviewScheduleSettings *settings = [[MSGraphAccessReviewScheduleSettings alloc] init];
[settings setMailNotificationsEnabled: true];
[settings setReminderNotificationsEnabled: true];
[settings setJustificationRequiredOnApproval: true];
[settings setRecommendationsEnabled: true];
[settings setInstanceDurationInDays: 3];
MSGraphPatternedRecurrence *recurrence = [[MSGraphPatternedRecurrence alloc] init];
MSGraphRecurrencePattern *pattern = [[MSGraphRecurrencePattern alloc] init];
[pattern setType: [MSGraphRecurrencePatternType absoluteMonthly]];
[pattern setDayOfMonth: 5];
[pattern setInterval: 3];
[recurrence setPattern:pattern];
MSGraphRecurrenceRange *range = [[MSGraphRecurrenceRange alloc] init];
[range setType: [MSGraphRecurrenceRangeType noEnd]];
[range setStartDate: "2020-05-04T00:00:00Z"];
[recurrence setRange:range];
[settings setRecurrence:recurrence];
[settings setDefaultDecisionEnabled: true];
[settings setDefaultDecision:@"Deny"];
[settings setAutoApplyDecisionsEnabled: true];
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
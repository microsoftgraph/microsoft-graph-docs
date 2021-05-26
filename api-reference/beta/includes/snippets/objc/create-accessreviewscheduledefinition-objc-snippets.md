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
[accessReviewScheduleDefinition setDisplayName:@"Test create"];
[accessReviewScheduleDefinition setDescriptionForAdmins:@"New scheduled access review"];
[accessReviewScheduleDefinition setDescriptionForReviewers:@"If you have any questions, contact jerry@contoso.com"];
MSGraphAccessReviewScope *scope = [[MSGraphAccessReviewScope alloc] init];
[scope setQuery:@"/groups/02f3bafb-448c-487c-88c2-5fd65ce49a41/transitiveMembers"];
[scope setQueryType:@"MicrosoftGraph"];
[accessReviewScheduleDefinition setScope:scope];
NSMutableArray *reviewersList = [[NSMutableArray alloc] init];
MSGraphAccessReviewReviewerScope *reviewers = [[MSGraphAccessReviewReviewerScope alloc] init];
[reviewers setQuery:@"/users/398164b1-5196-49dd-ada2-364b49f99b27"];
[reviewers setQueryType:@"MicrosoftGraph"];
[reviewersList addObject: reviewers];
[accessReviewScheduleDefinition setReviewers:reviewersList];
MSGraphAccessReviewScheduleSettings *settings = [[MSGraphAccessReviewScheduleSettings alloc] init];
[settings setMailNotificationsEnabled: true];
[settings setReminderNotificationsEnabled: true];
[settings setJustificationRequiredOnApproval: true];
[settings setDefaultDecisionEnabled: false];
[settings setDefaultDecision:@"None"];
[settings setInstanceDurationInDays: 1];
[settings setRecommendationsEnabled: true];
MSGraphPatternedRecurrence *recurrence = [[MSGraphPatternedRecurrence alloc] init];
MSGraphRecurrencePattern *pattern = [[MSGraphRecurrencePattern alloc] init];
[pattern setType: [MSGraphRecurrencePatternType weekly]];
[pattern setInterval: 1];
[recurrence setPattern:pattern];
MSGraphRecurrenceRange *range = [[MSGraphRecurrenceRange alloc] init];
[range setType: [MSGraphRecurrenceRangeType noEnd]];
[range setStartDate: "2020-09-08T12:02:30.667Z"];
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
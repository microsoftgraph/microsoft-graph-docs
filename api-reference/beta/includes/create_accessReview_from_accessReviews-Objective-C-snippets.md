---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/accessReviews"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAccessReview *accessReview = [[MSGraphAccessReview alloc] init];
[accessReview setDisplayName:@"TestReview"];
[accessReview setStartDateTime: "2017-02-10T00:35:53.214Z"];
[accessReview setEndDateTime: "2017-03-12T00:35:53.214Z"];
MSGraphIdentity *reviewedEntity = [[MSGraphIdentity alloc] init];
[reviewedEntity setId:@"99025615-a0b1-47ec-9117-35377b10998b"];
[accessReview setReviewedEntity:reviewedEntity];
[accessReview setReviewerType:@"delegated"];
[accessReview setBusinessFlowTemplateId:@"6e4f3d20-c5c3-407f-9695-8460952bcc68"];
[accessReview setDescription:@"Sample description"];
NSMutableArray *reviewersList = [[NSMutableArray alloc] init];
MSGraphAccessReviewReviewer *reviewers = [[MSGraphAccessReviewReviewer alloc] init];
[reviewers setId:@"f260246a-09b1-4fd5-8d18-daed736071ec"];
[reviewersList addObject: reviewers];
MSGraphAccessReviewReviewer *reviewers = [[MSGraphAccessReviewReviewer alloc] init];
[reviewers setId:@"5a4e184c-4ee5-4883-96e9-b371f8da88e3"];
[reviewersList addObject: reviewers];
[accessReview setReviewers:reviewersList];
MSGraphAccessReviewSettings *settings = [[MSGraphAccessReviewSettings alloc] init];
[settings setMailNotificationsEnabled: true];
[settings setRemindersEnabled: true];
[settings setJustificationRequiredOnApproval: true];
[settings setAutoReviewEnabled: false];
[settings setActivityDurationInDays: 30];
[settings setAutoApplyReviewResultsEnabled: false];
[settings setAccessRecommendationsEnabled: false];
MSGraphAccessReviewRecurrenceSettings *recurrenceSettings = [[MSGraphAccessReviewRecurrenceSettings alloc] init];
[recurrenceSettings setRecurrenceType:@"onetime"];
[recurrenceSettings setRecurrenceEndType:@"endBy"];
[recurrenceSettings setDurationInDays: 0];
[recurrenceSettings setRecurrenceCount: 0];
[settings setRecurrenceSettings:recurrenceSettings];
MSGraphAutoReviewSettings *autoReviewSettings = [[MSGraphAutoReviewSettings alloc] init];
[autoReviewSettings setNotReviewedResult:@"Deny"];
[settings setAutoReviewSettings:autoReviewSettings];
[accessReview setSettings:settings];

NSError *error;
NSData *accessReviewData = [accessReview getSerializedDataWithError:&error];
[urlRequest setHTTPBody:accessReviewData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
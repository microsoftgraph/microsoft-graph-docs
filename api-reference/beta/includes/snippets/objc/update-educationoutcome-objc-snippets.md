---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/education/classes/{id}/assignments/{id}/submissions/{id}/outcomes/{id}"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphEducationOutcome *educationOutcome = [[MSGraphEducationOutcome alloc] init];
NSMutableArray *rubricQualityFeedbackList = [[NSMutableArray alloc] init];
MSGraphRubricQualityFeedbackModel *rubricQualityFeedback = [[MSGraphRubricQualityFeedbackModel alloc] init];
[rubricQualityFeedback setQualityId:@"9a145aa8-f3d9-43a1-8f77-5387ff0693f2"];
MSGraphEducationItemBody *feedback = [[MSGraphEducationItemBody alloc] init];
[feedback setContent:@"This is feedback specific to the first quality of the rubric."];
[feedback setContentType: [MSGraphBodyType text]];
[rubricQualityFeedback setFeedback:feedback];
[rubricQualityFeedbackList addObject: rubricQualityFeedback];
MSGraphRubricQualityFeedbackModel *rubricQualityFeedback = [[MSGraphRubricQualityFeedbackModel alloc] init];
[rubricQualityFeedback setQualityId:@"d2331fb2-2761-402e-8de6-93e0afaa076e"];
MSGraphEducationItemBody *feedback = [[MSGraphEducationItemBody alloc] init];
[feedback setContent:@"This is feedback specific to the second quality of the rubric."];
[feedback setContentType: [MSGraphBodyType text]];
[rubricQualityFeedback setFeedback:feedback];
[rubricQualityFeedbackList addObject: rubricQualityFeedback];
[educationOutcome setRubricQualityFeedback:rubricQualityFeedbackList];
NSMutableArray *rubricQualitySelectedLevelsList = [[NSMutableArray alloc] init];
MSGraphRubricQualitySelectedColumnModel *rubricQualitySelectedLevels = [[MSGraphRubricQualitySelectedColumnModel alloc] init];
[rubricQualitySelectedLevels setQualityId:@"9a145aa8-f3d9-43a1-8f77-5387ff0693f2"];
[rubricQualitySelectedLevels setColumnId:@"4fb17a1d-5681-46c2-a295-4e305c3eae23"];
[rubricQualitySelectedLevelsList addObject: rubricQualitySelectedLevels];
MSGraphRubricQualitySelectedColumnModel *rubricQualitySelectedLevels = [[MSGraphRubricQualitySelectedColumnModel alloc] init];
[rubricQualitySelectedLevels setQualityId:@"d2331fb2-2761-402e-8de6-93e0afaa076e"];
[rubricQualitySelectedLevels setColumnId:@"aac076bf-51ba-48c5-a2e0-ee235b0b9740"];
[rubricQualitySelectedLevelsList addObject: rubricQualitySelectedLevels];
[educationOutcome setRubricQualitySelectedLevels:rubricQualitySelectedLevelsList];

NSError *error;
NSData *educationOutcomeData = [educationOutcome getSerializedDataWithError:&error];
[urlRequest setHTTPBody:educationOutcomeData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
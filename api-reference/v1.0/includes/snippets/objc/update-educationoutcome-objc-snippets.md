---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/education/classes/acdefc6b-2dc6-4e71-b1e9-6d9810ab1793/assignments/cf6005fc-9e13-44a2-a6ac-a53322006454/submissions/d1bee293-d8bb-48d4-af3e-c8cb0e3c7fe7/outcomes/9c0f2850-ff8f-4fd6-b3ac-e23077b59141"]]];
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
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
MSGraphEducationAssignmentPointsGrade *points = [[MSGraphEducationAssignmentPointsGrade alloc] init];
[points setPoints: 85.0];
[educationOutcome setPoints:points];

NSError *error;
NSData *educationOutcomeData = [educationOutcome getSerializedDataWithError:&error];
[urlRequest setHTTPBody:educationOutcomeData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
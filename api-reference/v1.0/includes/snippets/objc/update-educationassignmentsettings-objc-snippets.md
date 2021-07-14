---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/education/classes/acdefc6b-2dc6-4e71-b1e9-6d9810ab1793/assignmentSettings"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphEducationAssignmentSettings *educationAssignmentSettings = [[MSGraphEducationAssignmentSettings alloc] init];
[educationAssignmentSettings setSubmissionAnimationDisabled: true];

NSError *error;
NSData *educationAssignmentSettingsData = [educationAssignmentSettings getSerializedDataWithError:&error];
[urlRequest setHTTPBody:educationAssignmentSettingsData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
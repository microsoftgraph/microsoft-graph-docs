---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/education/classes/{id}/assignmentDefaults"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphEducationAssignmentDefaults *educationAssignmentDefaults = [[MSGraphEducationAssignmentDefaults alloc] init];
[educationAssignmentDefaults setAddedStudentAction: [MSGraphEducationAddedStudentAction assignIfOpen]];
[educationAssignmentDefaults setAddToCalendarAction: [MSGraphEducationAddToCalendarOptions studentsAndTeamOwners]];
[educationAssignmentDefaults setNotificationChannelUrl:@"https://graph.microsoft.com/beta/teams('id')/channels('id')"];

NSError *error;
NSData *educationAssignmentDefaultsData = [educationAssignmentDefaults getSerializedDataWithError:&error];
[urlRequest setHTTPBody:educationAssignmentDefaultsData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
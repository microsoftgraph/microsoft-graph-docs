---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/privilegedAccess/azureResources/roleAssignmentRequests"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphGovernanceRoleAssignmentRequest *governanceRoleAssignmentRequest = [[MSGraphGovernanceRoleAssignmentRequest alloc] init];
[governanceRoleAssignmentRequest setRoleDefinitionId:@"ea48ad5e-e3b0-4d10-af54-39a45bbfe68d"];
[governanceRoleAssignmentRequest setResourceId:@"e5e7d29d-5465-45ac-885f-4716a5ee74b5"];
[governanceRoleAssignmentRequest setSubjectId:@"918e54be-12c4-4f4c-a6d3-2ee0e3661c51"];
[governanceRoleAssignmentRequest setAssignmentState:@"Eligible"];
[governanceRoleAssignmentRequest setType:@"AdminAdd"];
[governanceRoleAssignmentRequest setReason:@"Assign an eligible role"];
MSGraphGovernanceSchedule *schedule = [[MSGraphGovernanceSchedule alloc] init];
[schedule setStartDateTime: "2018-05-12T23:37:43.356Z"];
[schedule setEndDateTime: "2018-11-08T23:37:43.356Z"];
[schedule setType:@"Once"];
[governanceRoleAssignmentRequest setSchedule:schedule];

NSError *error;
NSData *governanceRoleAssignmentRequestData = [governanceRoleAssignmentRequest getSerializedDataWithError:&error];
[urlRequest setHTTPBody:governanceRoleAssignmentRequestData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
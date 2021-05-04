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
[governanceRoleAssignmentRequest setRoleDefinitionId:@"8b4d1d51-08e9-4254-b0a6-b16177aae376"];
[governanceRoleAssignmentRequest setResourceId:@"e5e7d29d-5465-45ac-885f-4716a5ee74b5"];
[governanceRoleAssignmentRequest setSubjectId:@"918e54be-12c4-4f4c-a6d3-2ee0e3661c51"];
[governanceRoleAssignmentRequest setAssignmentState:@"Active"];
[governanceRoleAssignmentRequest setType:@"UserAdd"];
[governanceRoleAssignmentRequest setReason:@"Activate the owner role"];
MSGraphGovernanceSchedule *schedule = [[MSGraphGovernanceSchedule alloc] init];
[schedule setType:@"Once"];
[schedule setStartDateTime: "2018-05-12T23:28:43.537Z"];
[schedule setDuration:@"PT9H"];
[governanceRoleAssignmentRequest setSchedule:schedule];
[governanceRoleAssignmentRequest setLinkedEligibleRoleAssignmentId:@"e327f4be-42a0-47a2-8579-0a39b025b394"];

NSError *error;
NSData *governanceRoleAssignmentRequestData = [governanceRoleAssignmentRequest getSerializedDataWithError:&error];
[urlRequest setHTTPBody:governanceRoleAssignmentRequestData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
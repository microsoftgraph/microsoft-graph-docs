---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/roleManagement/directory/roleAssignmentScheduleRequests/{unifiedRoleAssignmentScheduleRequestsId}"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphUnifiedRoleAssignmentScheduleRequest *unifiedRoleAssignmentScheduleRequest = [[MSGraphUnifiedRoleAssignmentScheduleRequest alloc] init];
[unifiedRoleAssignmentScheduleRequest setAction:@"String"];
[unifiedRoleAssignmentScheduleRequest setPrincipalId:@"String"];
[unifiedRoleAssignmentScheduleRequest setRoleDefinitionId:@"String"];
[unifiedRoleAssignmentScheduleRequest setDirectoryScopeId:@"String"];
[unifiedRoleAssignmentScheduleRequest setAppScopeId:@"String"];
[unifiedRoleAssignmentScheduleRequest setIsValidationOnly:@"Boolean"];
[unifiedRoleAssignmentScheduleRequest setTargetScheduleId:@"String"];
[unifiedRoleAssignmentScheduleRequest setJustification:@"String"];
MSGraphRequestSchedule *scheduleInfo = [[MSGraphRequestSchedule alloc] init];
[unifiedRoleAssignmentScheduleRequest setScheduleInfo:scheduleInfo];
MSGraphTicketInfo *ticketInfo = [[MSGraphTicketInfo alloc] init];
[unifiedRoleAssignmentScheduleRequest setTicketInfo:ticketInfo];

NSError *error;
NSData *unifiedRoleAssignmentScheduleRequestData = [unifiedRoleAssignmentScheduleRequest getSerializedDataWithError:&error];
[urlRequest setHTTPBody:unifiedRoleAssignmentScheduleRequestData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
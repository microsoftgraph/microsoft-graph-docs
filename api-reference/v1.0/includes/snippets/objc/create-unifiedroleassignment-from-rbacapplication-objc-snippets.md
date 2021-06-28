---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/roleManagement/directory/roleAssignments"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphUnifiedRoleAssignment *unifiedRoleAssignment = [[MSGraphUnifiedRoleAssignment alloc] init];
[unifiedRoleAssignment setRoleDefinitionId:@"c2cf284d-6c41-4e6b-afac-4b80928c9034"];
[unifiedRoleAssignment setPrincipalId:@"f8ca5a85-489a-49a0-b555-0a6d81e56f0d"];
[unifiedRoleAssignment setDirectoryScopeId:@"/"];

NSError *error;
NSData *unifiedRoleAssignmentData = [unifiedRoleAssignment getSerializedDataWithError:&error];
[urlRequest setHTTPBody:unifiedRoleAssignmentData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
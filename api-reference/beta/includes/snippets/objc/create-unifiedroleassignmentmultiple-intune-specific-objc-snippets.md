---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/roleManagement/deviceManagement/roleAssignments"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphUnifiedRoleAssignmentMultiple *unifiedRoleAssignmentMultiple = [[MSGraphUnifiedRoleAssignmentMultiple alloc] init];
[unifiedRoleAssignmentMultiple setDisplayName:@"My test role assignment 1"];
[unifiedRoleAssignmentMultiple setRoleDefinitionId:@"c2cf284d-6c41-4e6b-afac-4b80928c9034"];
NSMutableArray *principalIdsList = [[NSMutableArray alloc] init];
[principalIdsList addObject: @"f8ca5a85-489a-49a0-b555-0a6d81e56f0d"];
[principalIdsList addObject: @"c1518aa9-4da5-4c84-a902-a31404023890"];
[unifiedRoleAssignmentMultiple setPrincipalIds:principalIdsList];
NSMutableArray *appScopeIdsList = [[NSMutableArray alloc] init];
[appScopeIdsList addObject: @"allDevices"];
[unifiedRoleAssignmentMultiple setAppScopeIds:appScopeIdsList];

NSError *error;
NSData *unifiedRoleAssignmentMultipleData = [unifiedRoleAssignmentMultiple getSerializedDataWithError:&error];
[urlRequest setHTTPBody:unifiedRoleAssignmentMultipleData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
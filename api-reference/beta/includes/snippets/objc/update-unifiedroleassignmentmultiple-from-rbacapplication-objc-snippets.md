---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/roleManagement/deviceManagement/roleAssignments/lAPpYvVpN0KRkAEhdxReEJC2sEqbR_9Hr48lds9SGHI-1"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphUnifiedRoleAssignmentMultiple *unifiedRoleAssignmentMultiple = [[MSGraphUnifiedRoleAssignmentMultiple alloc] init];
NSMutableArray *principalIdsList = [[NSMutableArray alloc] init];
[principalIdsList addObject: @"0aeec2c1-fee7-4e02-b534-6f920d25b300"];
[principalIdsList addObject: @"2d5386a7-732f-44db-9cf8-f82dd2a1c0e0"];
[unifiedRoleAssignmentMultiple setPrincipalIds:principalIdsList];

NSError *error;
NSData *unifiedRoleAssignmentMultipleData = [unifiedRoleAssignmentMultiple getSerializedDataWithError:&error];
[urlRequest setHTTPBody:unifiedRoleAssignmentMultipleData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
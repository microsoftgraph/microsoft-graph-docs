---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/servicePrincipals/9028d19c-26a9-4809-8e3f-20ff73e2d75e/appRoleAssignedTo"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAppRoleAssignment *appRoleAssignment = [[MSGraphAppRoleAssignment alloc] init];
[appRoleAssignment setPrincipalId:@"33ad69f9-da99-4bed-acd0-3f24235cb296"];
[appRoleAssignment setResourceId:@"9028d19c-26a9-4809-8e3f-20ff73e2d75e"];
[appRoleAssignment setAppRoleId:@"ef7437e6-4f94-4a0a-a110-a439eb2aa8f7"];

NSError *error;
NSData *appRoleAssignmentData = [appRoleAssignment getSerializedDataWithError:&error];
[urlRequest setHTTPBody:appRoleAssignmentData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
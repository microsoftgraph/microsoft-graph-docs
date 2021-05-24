---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/policies/roleManagementPolicyAssignments/d6e4112f-112f-d6e4-2f11-e4d62f11e4d6"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		MSGraphUnifiedRoleManagementPolicyAssignment *unifiedRoleManagementPolicyAssignment = [[MSGraphUnifiedRoleManagementPolicyAssignment alloc] initWithData:data error:&nserror];

}];

[meDataTask execute];

```
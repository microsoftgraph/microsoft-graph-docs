---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/privilegedApproval"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphPrivilegedApproval *privilegedApproval = [[MSGraphPrivilegedApproval alloc] init];
[privilegedApproval setUserId:@"userId-value"];
[privilegedApproval setRoleId:@"roleId-value"];
[privilegedApproval setApprovalType:@"approvalType-value"];
[privilegedApproval setApprovalState: [MSGraphApprovalState pending]];
[privilegedApproval setApprovalDuration:@"datetime-value"];

NSError *error;
NSData *privilegedApprovalData = [privilegedApproval getSerializedDataWithError:&error];
[urlRequest setHTTPBody:privilegedApprovalData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/external/connections/contosohr/groups/31bea3d537902000/members"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphExternalConnectorsExternalGroupMember *externalGroupMember = [[MSGraphExternalConnectorsExternalGroupMember alloc] init];
[externalGroupMember setId:@"e811976d-83df-4cbd-8b9b-5215b18aa874"];
[externalGroupMember setType: [MSGraphExternalConnectorsExternalGroupMemberType user]];
[externalGroupMember setIdentitySource: [MSGraphExternalConnectorsIdentitySourceType azureActiveDirectory]];

NSError *error;
NSData *externalGroupMemberData = [externalGroupMember getSerializedDataWithError:&error];
[urlRequest setHTTPBody:externalGroupMemberData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
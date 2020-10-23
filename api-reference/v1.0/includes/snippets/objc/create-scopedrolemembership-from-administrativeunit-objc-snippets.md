---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/directory/administrativeUnits/{id}/scopedRoleMembers"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphScopedRoleMembership *scopedRoleMembership = [[MSGraphScopedRoleMembership alloc] init];
[scopedRoleMembership setRoleId:@"roleId-value"];
MSGraphIdentity *roleMemberInfo = [[MSGraphIdentity alloc] init];
[roleMemberInfo setId:@"id-value"];
[scopedRoleMembership setRoleMemberInfo:roleMemberInfo];

NSError *error;
NSData *scopedRoleMembershipData = [scopedRoleMembership getSerializedDataWithError:&error];
[urlRequest setHTTPBody:scopedRoleMembershipData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
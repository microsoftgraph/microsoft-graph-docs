---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identityGovernance/entitlementManagement/accessPackages/{id}/accessPackageResourceRoleScopes"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAccessPackageResourceRoleScope *accessPackageResourceRoleScope = [[MSGraphAccessPackageResourceRoleScope alloc] init];
MSGraphAccessPackageResourceRole *accessPackageResourceRole = [[MSGraphAccessPackageResourceRole alloc] init];
[accessPackageResourceRole setOriginId:@"Member_b31fe1f1-3651-488f-bd9a-1711887fd4ca"];
[accessPackageResourceRole setDisplayName:@"Member"];
[accessPackageResourceRole setOriginSystem:@"AadGroup"];
MSGraphAccessPackageResource *accessPackageResource = [[MSGraphAccessPackageResource alloc] init];
[accessPackageResource setId:@"1d08498d-72a1-403f-8511-6b1f875746a0"];
[accessPackageResource setResourceType:@"O365 Group"];
[accessPackageResource setOriginId:@"b31fe1f1-3651-488f-bd9a-1711887fd4ca"];
[accessPackageResource setOriginSystem:@"AadGroup"];
[accessPackageResourceRole setAccessPackageResource:accessPackageResource];
[accessPackageResourceRoleScope setAccessPackageResourceRole:accessPackageResourceRole];
MSGraphAccessPackageResourceScope *accessPackageResourceScope = [[MSGraphAccessPackageResourceScope alloc] init];
[accessPackageResourceScope setOriginId:@"b31fe1f1-3651-488f-bd9a-1711887fd4ca"];
[accessPackageResourceScope setOriginSystem:@"AadGroup"];
[accessPackageResourceRoleScope setAccessPackageResourceScope:accessPackageResourceScope];

NSError *error;
NSData *accessPackageResourceRoleScopeData = [accessPackageResourceRoleScope getSerializedDataWithError:&error];
[urlRequest setHTTPBody:accessPackageResourceRoleScopeData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
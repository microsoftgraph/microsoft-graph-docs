---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/roleManagement/directory/roleDefinitions/0d55728d-3e24-4309-9b1b-5ac09921475a"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphUnifiedRoleDefinition *unifiedRoleDefinition = [[MSGraphUnifiedRoleDefinition alloc] init];
[unifiedRoleDefinition setDescription:@"Update basic properties of application registrations"];
[unifiedRoleDefinition setDisplayName:@"Application Registration Support Administrator"];
NSMutableArray *rolePermissionsList = [[NSMutableArray alloc] init];
MSGraphUnifiedRolePermission *rolePermissions = [[MSGraphUnifiedRolePermission alloc] init];
NSMutableArray *allowedResourceActionsList = [[NSMutableArray alloc] init];
[allowedResourceActionsList addObject: @"microsoft.directory/applications/basic/read"];
[rolePermissions setAllowedResourceActions:allowedResourceActionsList];
[rolePermissionsList addObject: rolePermissions];
[unifiedRoleDefinition setRolePermissions:rolePermissionsList];

NSError *error;
NSData *unifiedRoleDefinitionData = [unifiedRoleDefinition getSerializedDataWithError:&error];
[urlRequest setHTTPBody:unifiedRoleDefinitionData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
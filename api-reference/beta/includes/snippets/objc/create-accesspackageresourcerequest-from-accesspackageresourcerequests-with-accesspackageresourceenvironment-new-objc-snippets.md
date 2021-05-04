---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identityGovernance/entitlementManagement/accessPackageResourceRequests"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAccessPackageResourceRequest *accessPackageResourceRequest = [[MSGraphAccessPackageResourceRequest alloc] init];
[accessPackageResourceRequest setCatalogId:@"de9315c1-272b-4905-924b-cc112ca180c7"];
MSGraphAccessPackageResource *accessPackageResource = [[MSGraphAccessPackageResource alloc] init];
[accessPackageResource setDisplayName:@"Community Outreach"];
[accessPackageResource setDescription:@"https://contoso.sharepoint.com/sites/CSR"];
[accessPackageResource setResourceType:@"SharePoint Online Site"];
[accessPackageResource setOriginId:@"https://contoso.sharepoint.com/sites/CSR"];
[accessPackageResource setOriginSystem:@"SharePointOnline"];
MSGraphAccessPackageResourceEnvironment *accessPackageResourceEnvironment = [[MSGraphAccessPackageResourceEnvironment alloc] init];
[accessPackageResourceEnvironment setOriginId:@"https://contoso-admin.sharepoint.com/"];
[accessPackageResource setAccessPackageResourceEnvironment:accessPackageResourceEnvironment];
[accessPackageResourceRequest setAccessPackageResource:accessPackageResource];
[accessPackageResourceRequest setRequestType:@"AdminAdd"];

NSError *error;
NSData *accessPackageResourceRequestData = [accessPackageResourceRequest getSerializedDataWithError:&error];
[urlRequest setHTTPBody:accessPackageResourceRequestData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
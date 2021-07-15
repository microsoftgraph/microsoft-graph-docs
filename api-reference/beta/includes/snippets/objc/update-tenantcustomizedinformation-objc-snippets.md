---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/tenantRelationships/managedTenants/tenantsCustomizedInformation/{tenantCustomizedInformationId}"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphManagedTenantsTenantCustomizedInformation *tenantCustomizedInformation = [[MSGraphManagedTenantsTenantCustomizedInformation alloc] init];
[tenantCustomizedInformation setTenantId:@"String"];
NSMutableArray *contactsList = [[NSMutableArray alloc] init];
MSGraphManagedTenantsTenantContactInformation *contacts = [[MSGraphManagedTenantsTenantContactInformation alloc] init];
[contactsList addObject: contacts];
[tenantCustomizedInformation setContacts:contactsList];
[tenantCustomizedInformation setWebsite:@"String"];

NSError *error;
NSData *tenantCustomizedInformationData = [tenantCustomizedInformation getSerializedDataWithError:&error];
[urlRequest setHTTPBody:tenantCustomizedInformationData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
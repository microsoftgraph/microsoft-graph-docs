---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identityGovernance/entitlementManagement/connectedOrganizations/"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphConnectedOrganization *connectedOrganization = [[MSGraphConnectedOrganization alloc] init];
[connectedOrganization setDisplayName:@"Connected organization name"];
[connectedOrganization setDescription:@"Connected organization description"];
NSMutableArray *identitySourcesList = [[NSMutableArray alloc] init];
MSGraphIdentitySource *identitySources = [[MSGraphIdentitySource alloc] init];
[identitySources setDomainName:@"example.com"];
[identitySources setDisplayName:@"example.com"];
[identitySourcesList addObject: identitySources];
[connectedOrganization setIdentitySources:identitySourcesList];
[connectedOrganization setState:@"proposed"];

NSError *error;
NSData *connectedOrganizationData = [connectedOrganization getSerializedDataWithError:&error];
[urlRequest setHTTPBody:connectedOrganizationData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/servicePrincipals/{id}"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphServicePrincipal *servicePrincipal = [[MSGraphServicePrincipal alloc] init];
[servicePrincipal setAccountEnabled: true];
NSMutableArray *addInsList = [[NSMutableArray alloc] init];
MSGraphAddIn *addIns = [[MSGraphAddIn alloc] init];
[addIns setId:@"id-value"];
[addIns setType:@"type-value"];
NSMutableArray *propertiesList = [[NSMutableArray alloc] init];
MSGraphKeyValue *properties = [[MSGraphKeyValue alloc] init];
[properties setKey:@"key-value"];
[properties setValue:@"value-value"];
[propertiesList addObject: properties];
[addIns setProperties:propertiesList];
[addInsList addObject: addIns];
[servicePrincipal setAddIns:addInsList];
[servicePrincipal setAppDisplayName:@"appDisplayName-value"];
[servicePrincipal setAppId:@"appId-value"];
[servicePrincipal setAppOwnerOrganizationId:@"appOwnerOrganizationId-value"];
[servicePrincipal setAppRoleAssignmentRequired: true];

NSError *error;
NSData *servicePrincipalData = [servicePrincipal getSerializedDataWithError:&error];
[urlRequest setHTTPBody:servicePrincipalData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
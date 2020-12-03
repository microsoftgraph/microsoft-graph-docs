---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/policies/claimsMappingPolicies"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphClaimsMappingPolicy *claimsMappingPolicy = [[MSGraphClaimsMappingPolicy alloc] init];
NSMutableArray *definitionList = [[NSMutableArray alloc] init];
[definitionList addObject: @"{"ClaimsMappingPolicy":{"Version":1,"IncludeBasicClaimSet":"true", "ClaimsSchema": [{"Source":"user","ID":"assignedroles","SamlClaimType": "https://aws.amazon.com/SAML/Attributes/Role"}, {"Source":"user","ID":"userprincipalname","SamlClaimType": "https://aws.amazon.com/SAML/Attributes/RoleSessionName"}, {"Value":"900","SamlClaimType": "https://aws.amazon.com/SAML/Attributes/SessionDuration"}, {"Source":"user","ID":"assignedroles","SamlClaimType": "appRoles"}, {"Source":"user","ID":"userprincipalname","SamlClaimType": "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier"}]}}"];
[claimsMappingPolicy setDefinition:definitionList];
[claimsMappingPolicy setDisplayName:@"AWS Claims Policy"];
[claimsMappingPolicy setIsOrganizationDefault: false];

NSError *error;
NSData *claimsMappingPolicyData = [claimsMappingPolicy getSerializedDataWithError:&error];
[urlRequest setHTTPBody:claimsMappingPolicyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
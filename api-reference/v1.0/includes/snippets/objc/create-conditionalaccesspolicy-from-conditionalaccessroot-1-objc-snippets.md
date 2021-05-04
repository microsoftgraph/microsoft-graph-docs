---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identity/conditionalAccess/policies"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphConditionalAccessPolicy *conditionalAccessPolicy = [[MSGraphConditionalAccessPolicy alloc] init];
[conditionalAccessPolicy setDisplayName:@"Access to EXO requires MFA"];
[conditionalAccessPolicy setState: [MSGraphConditionalAccessPolicyState enabled]];
MSGraphConditionalAccessConditionSet *conditions = [[MSGraphConditionalAccessConditionSet alloc] init];
NSMutableArray *clientAppTypesList = [[NSMutableArray alloc] init];
[clientAppTypesList addObject: @"mobileAppsAndDesktopClients"];
[clientAppTypesList addObject: @"browser"];
[conditions setClientAppTypes:clientAppTypesList];
MSGraphConditionalAccessApplications *applications = [[MSGraphConditionalAccessApplications alloc] init];
NSMutableArray *includeApplicationsList = [[NSMutableArray alloc] init];
[includeApplicationsList addObject: @"00000002-0000-0ff1-ce00-000000000000"];
[applications setIncludeApplications:includeApplicationsList];
[conditions setApplications:applications];
MSGraphConditionalAccessUsers *users = [[MSGraphConditionalAccessUsers alloc] init];
NSMutableArray *includeGroupsList = [[NSMutableArray alloc] init];
[includeGroupsList addObject: @"ba8e7ded-8b0f-4836-ba06-8ff1ecc5c8ba"];
[users setIncludeGroups:includeGroupsList];
[conditions setUsers:users];
MSGraphConditionalAccessLocations *locations = [[MSGraphConditionalAccessLocations alloc] init];
NSMutableArray *includeLocationsList = [[NSMutableArray alloc] init];
[includeLocationsList addObject: @"All"];
[locations setIncludeLocations:includeLocationsList];
NSMutableArray *excludeLocationsList = [[NSMutableArray alloc] init];
[excludeLocationsList addObject: @"AllTrusted"];
[locations setExcludeLocations:excludeLocationsList];
[conditions setLocations:locations];
[conditionalAccessPolicy setConditions:conditions];
MSGraphConditionalAccessGrantControls *grantControls = [[MSGraphConditionalAccessGrantControls alloc] init];
[grantControls setOperator:@"OR"];
NSMutableArray *builtInControlsList = [[NSMutableArray alloc] init];
[builtInControlsList addObject: @"mfa"];
[grantControls setBuiltInControls:builtInControlsList];
[conditionalAccessPolicy setGrantControls:grantControls];

NSError *error;
NSData *conditionalAccessPolicyData = [conditionalAccessPolicy getSerializedDataWithError:&error];
[urlRequest setHTTPBody:conditionalAccessPolicyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
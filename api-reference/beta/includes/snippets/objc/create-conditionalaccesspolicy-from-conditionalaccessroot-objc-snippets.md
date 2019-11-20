---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/conditionalAccess/policies"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphConditionalAccessPolicy *conditionalAccessPolicy = [[MSGraphConditionalAccessPolicy alloc] init];
[conditionalAccessPolicy setDisplayName:@"Demo app for documentation"];
[conditionalAccessPolicy setState: [MSGraphConditionalAccessPolicyState disabled]];
MSGraphConditionalAccessConditionSet *conditions = [[MSGraphConditionalAccessConditionSet alloc] init];
NSMutableArray *signInRiskLevelsList = [[NSMutableArray alloc] init];
[signInRiskLevelsList addObject: @"high"];
[signInRiskLevelsList addObject: @"medium"];
[conditions setSignInRiskLevels:signInRiskLevelsList];
NSMutableArray *clientAppTypesList = [[NSMutableArray alloc] init];
[clientAppTypesList addObject: @"modern"];
[clientAppTypesList addObject: @"easSupported"];
[clientAppTypesList addObject: @"easUnsupported"];
[clientAppTypesList addObject: @"other"];
[conditions setClientAppTypes:clientAppTypesList];
MSGraphConditionalAccessApplications *applications = [[MSGraphConditionalAccessApplications alloc] init];
NSMutableArray *includeApplicationsList = [[NSMutableArray alloc] init];
[includeApplicationsList addObject: @"All"];
[applications setIncludeApplications:includeApplicationsList];
NSMutableArray *excludeApplicationsList = [[NSMutableArray alloc] init];
[excludeApplicationsList addObject: @"499b84ac-1321-427f-aa17-267ca6975798"];
[excludeApplicationsList addObject: @"00000007-0000-0000-c000-000000000000"];
[excludeApplicationsList addObject: @"de8bc8b5-d9f9-48b1-a8ad-b748da725064"];
[excludeApplicationsList addObject: @"00000012-0000-0000-c000-000000000000"];
[excludeApplicationsList addObject: @"797f4846-ba00-4fd7-ba43-dac1f8f63013"];
[excludeApplicationsList addObject: @"05a65629-4c1b-48c1-a78b-804c4abdd4af"];
[excludeApplicationsList addObject: @"7df0a125-d3be-4c96-aa54-591f83ff541c"];
[applications setExcludeApplications:excludeApplicationsList];
NSMutableArray *includeUserActionsList = [[NSMutableArray alloc] init];
[applications setIncludeUserActions:includeUserActionsList];
[conditions setApplications:applications];
MSGraphConditionalAccessUsers *users = [[MSGraphConditionalAccessUsers alloc] init];
NSMutableArray *includeUsersList = [[NSMutableArray alloc] init];
[includeUsersList addObject: @"a702a13d-a437-4a07-8a7e-8c052de62dfd"];
[users setIncludeUsers:includeUsersList];
NSMutableArray *excludeUsersList = [[NSMutableArray alloc] init];
[excludeUsersList addObject: @"124c5b6a-ffa5-483a-9b88-04c3fce5574a"];
[excludeUsersList addObject: @"GuestsOrExternalUsers"];
[users setExcludeUsers:excludeUsersList];
NSMutableArray *includeGroupsList = [[NSMutableArray alloc] init];
[users setIncludeGroups:includeGroupsList];
NSMutableArray *excludeGroupsList = [[NSMutableArray alloc] init];
[users setExcludeGroups:excludeGroupsList];
NSMutableArray *includeRolesList = [[NSMutableArray alloc] init];
[includeRolesList addObject: @"9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3"];
[includeRolesList addObject: @"cf1c38e5-3621-4004-a7cb-879624dced7c"];
[includeRolesList addObject: @"c4e39bd9-1100-46d3-8c65-fb160da0071f"];
[users setIncludeRoles:includeRolesList];
NSMutableArray *excludeRolesList = [[NSMutableArray alloc] init];
[excludeRolesList addObject: @"b0f54661-2d74-4c50-afa3-1ec803f12efe"];
[users setExcludeRoles:excludeRolesList];
[conditions setUsers:users];
MSGraphConditionalAccessPlatforms *platforms = [[MSGraphConditionalAccessPlatforms alloc] init];
NSMutableArray *includePlatformsList = [[NSMutableArray alloc] init];
[includePlatformsList addObject: @"all"];
[platforms setIncludePlatforms:includePlatformsList];
NSMutableArray *excludePlatformsList = [[NSMutableArray alloc] init];
[excludePlatformsList addObject: @"iOS"];
[excludePlatformsList addObject: @"windowsPhone"];
[platforms setExcludePlatforms:excludePlatformsList];
[conditions setPlatforms:platforms];
MSGraphConditionalAccessLocations *locations = [[MSGraphConditionalAccessLocations alloc] init];
NSMutableArray *includeLocationsList = [[NSMutableArray alloc] init];
[includeLocationsList addObject: @"AllTrusted"];
[locations setIncludeLocations:includeLocationsList];
NSMutableArray *excludeLocationsList = [[NSMutableArray alloc] init];
[excludeLocationsList addObject: @"00000000-0000-0000-0000-000000000000"];
[excludeLocationsList addObject: @"d2136c9c-b049-47ae-b9cf-316e04ef7198"];
[locations setExcludeLocations:excludeLocationsList];
[conditions setLocations:locations];
MSGraphConditionalAccessDeviceStates *deviceStates = [[MSGraphConditionalAccessDeviceStates alloc] init];
NSMutableArray *includeStatesList = [[NSMutableArray alloc] init];
[includeStatesList addObject: @"All"];
[deviceStates setIncludeStates:includeStatesList];
NSMutableArray *excludeStatesList = [[NSMutableArray alloc] init];
[excludeStatesList addObject: @"Compliant"];
[deviceStates setExcludeStates:excludeStatesList];
[conditions setDeviceStates:deviceStates];
[conditionalAccessPolicy setConditions:conditions];
MSGraphConditionalAccessGrantControls *grantControls = [[MSGraphConditionalAccessGrantControls alloc] init];
[grantControls setOperator:@"OR"];
NSMutableArray *builtInControlsList = [[NSMutableArray alloc] init];
[builtInControlsList addObject: @"mfa"];
[builtInControlsList addObject: @"compliantDevice"];
[builtInControlsList addObject: @"domainJoinedDevice"];
[builtInControlsList addObject: @"approvedApplication"];
[builtInControlsList addObject: @"compliantApplication"];
[grantControls setBuiltInControls:builtInControlsList];
NSMutableArray *customAuthenticationFactorsList = [[NSMutableArray alloc] init];
[grantControls setCustomAuthenticationFactors:customAuthenticationFactorsList];
NSMutableArray *termsOfUseList = [[NSMutableArray alloc] init];
[termsOfUseList addObject: @"ce580154-086a-40fd-91df-8a60abac81a0"];
[termsOfUseList addObject: @"7f29d675-caff-43e1-8a53-1b8516ed2075"];
[grantControls setTermsOfUse:termsOfUseList];
[conditionalAccessPolicy setGrantControls:grantControls];
MSGraphConditionalAccessSessionControls *sessionControls = [[MSGraphConditionalAccessSessionControls alloc] init];
[sessionControls setApplicationEnforcedRestrictions: null];
[sessionControls setPersistentBrowser: null];
MSGraphCloudAppSecuritySessionControl *cloudAppSecurity = [[MSGraphCloudAppSecuritySessionControl alloc] init];
[cloudAppSecurity setCloudAppSecurityType: [MSGraphCloudAppSecuritySessionControlType blockDownloads]];
[cloudAppSecurity setIsEnabled: true];
[sessionControls setCloudAppSecurity:cloudAppSecurity];
MSGraphSignInFrequencySessionControl *signInFrequency = [[MSGraphSignInFrequencySessionControl alloc] init];
[signInFrequency setValue: 4];
[signInFrequency setType: [MSGraphSigninFrequencyType hours]];
[signInFrequency setIsEnabled: true];
[sessionControls setSignInFrequency:signInFrequency];
[conditionalAccessPolicy setSessionControls:sessionControls];

NSError *error;
NSData *conditionalAccessPolicyData = [conditionalAccessPolicy getSerializedDataWithError:&error];
[urlRequest setHTTPBody:conditionalAccessPolicyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
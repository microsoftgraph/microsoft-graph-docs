---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/education/users"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphEducationUser *educationUser = [[MSGraphEducationUser alloc] init];
[educationUser setPrimaryRole: [MSGraphEducationUserRole student]];
[educationUser setMiddleName:@"String"];
[educationUser setExternalSource: [MSGraphEducationExternalSource sis]];
[educationUser setExternalSourceDetail:@"String"];
MSGraphPhysicalAddress *residenceAddress = [[MSGraphPhysicalAddress alloc] init];
[educationUser setResidenceAddress:residenceAddress];
MSGraphPhysicalAddress *mailingAddress = [[MSGraphPhysicalAddress alloc] init];
[educationUser setMailingAddress:mailingAddress];
MSGraphEducationStudent *student = [[MSGraphEducationStudent alloc] init];
[educationUser setStudent:student];
MSGraphEducationTeacher *teacher = [[MSGraphEducationTeacher alloc] init];
[educationUser setTeacher:teacher];
MSGraphIdentitySet *createdBy = [[MSGraphIdentitySet alloc] init];
[educationUser setCreatedBy:createdBy];
[educationUser setAccountEnabled:@"Boolean"];
NSMutableArray *assignedLicensesList = [[NSMutableArray alloc] init];
MSGraphAssignedLicense *assignedLicenses = [[MSGraphAssignedLicense alloc] init];
[assignedLicensesList addObject: assignedLicenses];
[educationUser setAssignedLicenses:assignedLicensesList];
NSMutableArray *assignedPlansList = [[NSMutableArray alloc] init];
MSGraphAssignedPlan *assignedPlans = [[MSGraphAssignedPlan alloc] init];
[assignedPlansList addObject: assignedPlans];
[educationUser setAssignedPlans:assignedPlansList];
NSMutableArray *businessPhonesList = [[NSMutableArray alloc] init];
[businessPhonesList addObject: @"String"];
[educationUser setBusinessPhones:businessPhonesList];
[educationUser setDepartment:@"String"];
[educationUser setDisplayName:@"String"];
[educationUser setGivenName:@"String"];
[educationUser setMail:@"String"];
[educationUser setMailNickname:@"String"];
[educationUser setMobilePhone:@"String"];
[educationUser setPasswordPolicies:@"String"];
MSGraphPasswordProfile *passwordProfile = [[MSGraphPasswordProfile alloc] init];
[educationUser setPasswordProfile:passwordProfile];
[educationUser setOfficeLocation:@"String"];
[educationUser setPreferredLanguage:@"String"];
NSMutableArray *provisionedPlansList = [[NSMutableArray alloc] init];
MSGraphProvisionedPlan *provisionedPlans = [[MSGraphProvisionedPlan alloc] init];
[provisionedPlansList addObject: provisionedPlans];
[educationUser setProvisionedPlans:provisionedPlansList];
[educationUser setRefreshTokensValidFromDateTime:@"String (timestamp)"];
[educationUser setShowInAddressList:@"Boolean"];
[educationUser setSurname:@"String"];
[educationUser setUsageLocation:@"String"];
[educationUser setUserPrincipalName:@"String"];
[educationUser setUserType:@"String"];
MSGraphEducationOnPremisesInfo *onPremisesInfo = [[MSGraphEducationOnPremisesInfo alloc] init];
[educationUser setOnPremisesInfo:onPremisesInfo];

NSError *error;
NSData *educationUserData = [educationUser getSerializedDataWithError:&error];
[urlRequest setHTTPBody:educationUserData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
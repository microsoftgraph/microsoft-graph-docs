---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/education/users"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphEducationUser *educationUser = [[MSGraphEducationUser alloc] init];
[educationUser setDisplayName:@"Dion Matheson"];
[educationUser setGivenName:@"Dion"];
[educationUser setMiddleName: null];
[educationUser setSurname:@"Matheson"];
[educationUser setMail:@"DionM@contoso.com"];
[educationUser setMobilePhone:@"+1 (253) 555-0101"];
MSGraphIdentitySet *createdBy = [[MSGraphIdentitySet alloc] init];
MSGraphIdentity *user = [[MSGraphIdentity alloc] init];
[user setDisplayName:@"Susana Rocha"];
[user setId:@"14012"];
[createdBy setUser:user];
[educationUser setCreatedBy:createdBy];
[educationUser setExternalSource: [MSGraphEducationExternalSource sis]];
MSGraphPhysicalAddress *mailingAddress = [[MSGraphPhysicalAddress alloc] init];
[mailingAddress setCity:@"Los Angeles"];
[mailingAddress setCountryOrRegion:@"United States"];
[mailingAddress setPostalCode:@"98055"];
[mailingAddress setState:@"CA"];
[mailingAddress setStreet:@"12345 Main St."];
[educationUser setMailingAddress:mailingAddress];
[educationUser setPrimaryRole: [MSGraphEducationUserRole student]];
MSGraphPhysicalAddress *residenceAddress = [[MSGraphPhysicalAddress alloc] init];
[residenceAddress setCity:@"Los Angeles"];
[residenceAddress setCountryOrRegion:@"United States"];
[residenceAddress setPostalCode:@"98055"];
[residenceAddress setState:@"CA"];
[residenceAddress setStreet:@"12345 Main St."];
[educationUser setResidenceAddress:residenceAddress];

NSError *error;
NSData *educationUserData = [educationUser getSerializedDataWithError:&error];
[urlRequest setHTTPBody:educationUserData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
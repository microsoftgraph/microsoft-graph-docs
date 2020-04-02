---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/profile/projects"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphProjectParticipation *projectParticipation = [[MSGraphProjectParticipation alloc] init];
NSMutableArray *categoriesList = [[NSMutableArray alloc] init];
[categoriesList addObject: @"categories-value"];
[projectParticipation setCategories:categoriesList];
MSGraphCompanyDetail *client = [[MSGraphCompanyDetail alloc] init];
[client setDisplayName:@"displayName-value"];
[client setPronunciation:@"pronunciation-value"];
[client setDepartment:@"department-value"];
[client setOfficeLocation:@"officeLocation-value"];
MSGraphPhysicalAddress *address = [[MSGraphPhysicalAddress alloc] init];
[address setType: [MSGraphPhysicalAddressType unknown]];
[address setPostOfficeBox:@"postOfficeBox-value"];
[address setStreet:@"street-value"];
[address setCity:@"city-value"];
[address setState:@"state-value"];
[address setCountryOrRegion:@"countryOrRegion-value"];
[address setPostalCode:@"postalCode-value"];
[client setAddress:address];
[client setWebUrl:@"webUrl-value"];
[projectParticipation setClient:client];
[projectParticipation setDisplayName:@"displayName-value"];
MSGraphPositionDetail *detail = [[MSGraphPositionDetail alloc] init];
MSGraphCompanyDetail *company = [[MSGraphCompanyDetail alloc] init];
[company setDisplayName:@"displayName-value"];
[company setPronunciation:@"pronunciation-value"];
[company setDepartment:@"department-value"];
[company setOfficeLocation:@"officeLocation-value"];
MSGraphPhysicalAddress *address = [[MSGraphPhysicalAddress alloc] init];
[address setType: [MSGraphPhysicalAddressType unknown]];
[address setPostOfficeBox:@"postOfficeBox-value"];
[address setStreet:@"street-value"];
[address setCity:@"city-value"];
[address setState:@"state-value"];
[address setCountryOrRegion:@"countryOrRegion-value"];
[address setPostalCode:@"postalCode-value"];
[company setAddress:address];
[company setWebUrl:@"webUrl-value"];
[detail setCompany:company];
[detail setDescription:@"description-value"];
[detail setEndMonthYear:@"datetime-value"];
[detail setJobTitle:@"jobTitle-value"];
[detail setRole:@"role-value"];
[detail setStartMonthYear:@"datetime-value"];
[detail setSummary:@"summary-value"];
[projectParticipation setDetail:detail];
NSMutableArray *colleaguesList = [[NSMutableArray alloc] init];
MSGraphRelatedPerson *colleagues = [[MSGraphRelatedPerson alloc] init];
[colleagues setDisplayName:@"displayName-value"];
[colleagues setRelationship: [MSGraphPersonRelationship manager]];
[colleagues setUserPrincipalName:@"userPrincipalName-value"];
[colleaguesList addObject: colleagues];
[projectParticipation setColleagues:colleaguesList];
NSMutableArray *sponsorsList = [[NSMutableArray alloc] init];
MSGraphRelatedPerson *sponsors = [[MSGraphRelatedPerson alloc] init];
[sponsors setDisplayName:@"displayName-value"];
[sponsors setRelationship: [MSGraphPersonRelationship manager]];
[sponsors setUserPrincipalName:@"userPrincipalName-value"];
[sponsorsList addObject: sponsors];
[projectParticipation setSponsors:sponsorsList];

NSError *error;
NSData *projectParticipationData = [projectParticipation getSerializedDataWithError:&error];
[urlRequest setHTTPBody:projectParticipationData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
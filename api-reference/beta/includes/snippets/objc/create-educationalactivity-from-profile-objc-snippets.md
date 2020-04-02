---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/profile/educationalActivities"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphEducationalActivity *educationalActivity = [[MSGraphEducationalActivity alloc] init];
[educationalActivity setCompletionMonthYear:@"datetime-value"];
[educationalActivity setEndMonthYear:@"datetime-value"];
MSGraphInstitutionData *institution = [[MSGraphInstitutionData alloc] init];
[institution setDescription:@"description-value"];
[institution setDisplayName:@"displayName-value"];
MSGraphPhysicalAddress *location = [[MSGraphPhysicalAddress alloc] init];
[location setType: [MSGraphPhysicalAddressType unknown]];
[location setPostOfficeBox:@"postOfficeBox-value"];
[location setStreet:@"street-value"];
[location setCity:@"city-value"];
[location setState:@"state-value"];
[location setCountryOrRegion:@"countryOrRegion-value"];
[location setPostalCode:@"postalCode-value"];
[institution setLocation:location];
[institution setWebUrl:@"webUrl-value"];
[educationalActivity setInstitution:institution];
MSGraphEducationalActivityDetail *program = [[MSGraphEducationalActivityDetail alloc] init];
[program setAbbreviation:@"abbreviation-value"];
[program setActivities:@"activities-value"];
[program setAwards:@"awards-value"];
[program setDescription:@"description-value"];
[program setDisplayName:@"displayName-value"];
[program setFieldsOfStudy:@"fieldsOfStudy-value"];
[program setGrade:@"grade-value"];
[program setNotes:@"notes-value"];
[program setWebUrl:@"webUrl-value"];
[educationalActivity setProgram:program];
[educationalActivity setStartMonthYear:@"datetime-value"];

NSError *error;
NSData *educationalActivityData = [educationalActivity getSerializedDataWithError:&error];
[urlRequest setHTTPBody:educationalActivityData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
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
[educationalActivity setCompletionMonthYear:@"Date"];
[educationalActivity setEndMonthYear:@"Date"];
MSGraphInstitutionData *institution = [[MSGraphInstitutionData alloc] init];
[institution setDescription: null];
[institution setDisplayName:@"Colorado State University"];
MSGraphPhysicalAddress *location = [[MSGraphPhysicalAddress alloc] init];
[location setType: [MSGraphPhysicalAddressType business]];
[location setPostOfficeBox: null];
[location setStreet:@"12000 E Prospect Rd"];
[location setCity:@"Fort Collins"];
[location setState:@"Colorado"];
[location setCountryOrRegion:@"USA"];
[location setPostalCode:@"80525"];
[institution setLocation:location];
[institution setWebUrl:@"https://www.colostate.edu"];
[educationalActivity setInstitution:institution];
MSGraphEducationalActivityDetail *program = [[MSGraphEducationalActivityDetail alloc] init];
[program setAbbreviation:@"MBA"];
[program setActivities: null];
[program setAwards: null];
[program setDescription:@"Master of Business Administration with a major in Entreprenuership and Finance."];
[program setDisplayName:@"Master of Business Administration"];
[program setFieldsOfStudy: null];
[program setGrade:@"3.9"];
[program setNotes: null];
[program setWebUrl:@"https://biz.colostate.edu"];
[educationalActivity setProgram:program];
[educationalActivity setStartMonthYear:@"Date"];

NSError *error;
NSData *educationalActivityData = [educationalActivity getSerializedDataWithError:&error];
[urlRequest setHTTPBody:educationalActivityData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
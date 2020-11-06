---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/profile/educationalActivities/{id}"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphEducationalActivity *educationalActivity = [[MSGraphEducationalActivity alloc] init];
MSGraphInstitutionData *institution = [[MSGraphInstitutionData alloc] init];
MSGraphPhysicalAddress *location = [[MSGraphPhysicalAddress alloc] init];
[location setType: [MSGraphPhysicalAddressType business]];
[location setPostOfficeBox: null];
[location setStreet:@"12000 E Prospect Rd"];
[location setCity:@"Fort Collins"];
[location setState:@"Colorado"];
[location setCountryOrRegion:@"USA"];
[location setPostalCode:@"80525"];
[institution setLocation:location];
[educationalActivity setInstitution:institution];

NSError *error;
NSData *educationalActivityData = [educationalActivity getSerializedDataWithError:&error];
[urlRequest setHTTPBody:educationalActivityData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
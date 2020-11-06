---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/profile/positions"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphWorkPosition *workPosition = [[MSGraphWorkPosition alloc] init];
MSGraphPositionDetail *detail = [[MSGraphPositionDetail alloc] init];
MSGraphCompanyDetail *company = [[MSGraphCompanyDetail alloc] init];
[company setDisplayName:@"Adventureworks Ltd."];
[company setDepartment:@"Consulting"];
[company setOfficeLocation:@"AW23/344"];
MSGraphPhysicalAddress *address = [[MSGraphPhysicalAddress alloc] init];
[address setType: [MSGraphPhysicalAddressType business]];
[address setStreet:@"123 Patriachy Ponds"];
[address setCity:@"Moscow"];
[address setCountryOrRegion:@"Russian Federation"];
[address setPostalCode:@"RU-34621"];
[company setAddress:address];
[company setWebUrl:@"https://www.adventureworks.com"];
[detail setCompany:company];
[detail setJobTitle:@"Senior Product Branding Manager II"];
[detail setRole:@"consulting"];
[workPosition setDetail:detail];
[workPosition setIsCurrent: true];

NSError *error;
NSData *workPositionData = [workPosition getSerializedDataWithError:&error];
[urlRequest setHTTPBody:workPositionData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
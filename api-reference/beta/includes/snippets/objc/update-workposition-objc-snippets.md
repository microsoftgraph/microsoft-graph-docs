---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/profile/positions/{id}"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphWorkPosition *workPosition = [[MSGraphWorkPosition alloc] init];
NSMutableArray *categoriesList = [[NSMutableArray alloc] init];
[categoriesList addObject: @"categories-value"];
[workPosition setCategories:categoriesList];
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
[workPosition setDetail:detail];

NSError *error;
NSData *workPositionData = [workPosition getSerializedDataWithError:&error];
[urlRequest setHTTPBody:workPositionData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
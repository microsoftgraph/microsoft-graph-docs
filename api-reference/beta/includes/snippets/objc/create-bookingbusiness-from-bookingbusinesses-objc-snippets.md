---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/bookingBusinesses"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphBookingBusiness *bookingBusiness = [[MSGraphBookingBusiness alloc] init];
[bookingBusiness setDisplayName:@"Fourth Coffee"];
MSGraphPhysicalAddress *address = [[MSGraphPhysicalAddress alloc] init];
[address setType: [MSGraphPhysicalAddressType unknown]];
[address setPostOfficeBox:@"P.O. Box 123"];
[address setStreet:@"4567 Main Street"];
[address setCity:@"Buffalo"];
[address setState:@"NY"];
[address setCountryOrRegion:@"USA"];
[address setPostalCode:@"98052"];
[bookingBusiness setAddress:address];
[bookingBusiness setPhone:@"206-555-0100"];
[bookingBusiness setEmail:@"manager@fourthcoffee.com"];
[bookingBusiness setWebSiteUrl:@"https://www.fourthcoffee.com"];
[bookingBusiness setDefaultCurrencyIso:@"USD"];

NSError *error;
NSData *bookingBusinessData = [bookingBusiness getSerializedDataWithError:&error];
[urlRequest setHTTPBody:bookingBusinessData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
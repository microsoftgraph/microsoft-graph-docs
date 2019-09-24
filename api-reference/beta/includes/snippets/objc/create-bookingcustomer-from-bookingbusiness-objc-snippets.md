---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/bookingBusinesses/Contosolunchdelivery@M365B489948.onmicrosoft.com/customers"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphBookingCustomer *bookingCustomer = [[MSGraphBookingCustomer alloc] init];
[bookingCustomer setDisplayName:@"Joni Sherman"];
[bookingCustomer setEmailAddress:@"jonis@relecloud.com"];

NSError *error;
NSData *bookingCustomerData = [bookingCustomer getSerializedDataWithError:&error];
[urlRequest setHTTPBody:bookingCustomerData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
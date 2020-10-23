---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/bookingBusinesses/fabrikam@M365B489948.onmicrosoft.com"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphBookingBusiness *bookingBusiness = [[MSGraphBookingBusiness alloc] init];
[bookingBusiness setEmail:@"admin@fabrikam.com"];
MSGraphBookingSchedulingPolicy *schedulingPolicy = [[MSGraphBookingSchedulingPolicy alloc] init];
[schedulingPolicy setTimeSlotInterval:@"PT60M"];
[schedulingPolicy setMinimumLeadTime:@"P1D"];
[schedulingPolicy setMaximumAdvance:@"P30D"];
[schedulingPolicy setSendConfirmationsToOwner: true];
[schedulingPolicy setAllowStaffSelection: true];
[bookingBusiness setSchedulingPolicy:schedulingPolicy];

NSError *error;
NSData *bookingBusinessData = [bookingBusiness getSerializedDataWithError:&error];
[urlRequest setHTTPBody:bookingBusinessData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
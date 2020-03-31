---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/teams/{id}/schedule/swapShiftsChangeRequests"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphSwapShiftsChangeRequest *swapShiftsChangeRequests = [[MSGraphSwapShiftsChangeRequest alloc] init];
[swapShiftsChangeRequests setRecipientShiftId:@"recipientShiftId-value"];

NSError *error;
NSData *swapShiftsChangeRequestsData = [swapShiftsChangeRequests getSerializedDataWithError:&error];
[urlRequest setHTTPBody:swapShiftsChangeRequestsData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
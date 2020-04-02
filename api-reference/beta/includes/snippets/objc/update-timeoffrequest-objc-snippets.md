---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/teams/{id}/schedule/timeOffRequests"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphTimeOffRequest *timeOffRequests = [[MSGraphTimeOffRequest alloc] init];
[timeOffRequests setStartDateTime:@"datetime-value"];
[timeOffRequests setEndDateTime:@"datetime-value"];
[timeOffRequests setTimeOffReasonId:@"timeOffReasonId-value"];

NSError *error;
NSData *timeOffRequestsData = [timeOffRequests getSerializedDataWithError:&error];
[urlRequest setHTTPBody:timeOffRequestsData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
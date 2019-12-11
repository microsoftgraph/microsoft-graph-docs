---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/teams/{id}/schedule/openShifts"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphOpenShift *openShifts = [[MSGraphOpenShift alloc] init];
MSGraphOpenShiftItem *sharedOpenShift = [[MSGraphOpenShiftItem alloc] init];
[sharedOpenShift setOpenSlotCount: 99];
[openShifts setSharedOpenShift:sharedOpenShift];
MSGraphOpenShiftItem *draftOpenShift = [[MSGraphOpenShiftItem alloc] init];
[draftOpenShift setOpenSlotCount: 99];
[openShifts setDraftOpenShift:draftOpenShift];
[openShifts setSchedulingGroupId:@"TAG_f914d037-00a3-4ba4-b712-ef178cbea263"];

NSError *error;
NSData *openShiftsData = [openShifts getSerializedDataWithError:&error];
[urlRequest setHTTPBody:openShiftsData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
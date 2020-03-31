---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/teams/{id}/schedule/openShifts/{openShiftId}"]]];
[urlRequest setHTTPMethod:@"PUT"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphOpenShift *openShift = [[MSGraphOpenShift alloc] init];
[openShift setSchedulingGroupId:@"TAG_228940ed-ff84-4e25-b129-1b395cf78be0"];
MSGraphOpenShiftItem *sharedOpenShift = [[MSGraphOpenShiftItem alloc] init];
[sharedOpenShift setNotes:@"Inventory Management"];
[sharedOpenShift setOpenSlotCount: 5];
[sharedOpenShift setDisplayName:@"Field shift"];
[sharedOpenShift setStartDateTime: "2018-10-04T00:58:45.34Z"];
[sharedOpenShift setEndDateTime: "2018-10-04T09:50:45.332Z"];
[sharedOpenShift setTheme: [MSGraphScheduleEntityTheme white]];
NSMutableArray *activitiesList = [[NSMutableArray alloc] init];
MSGraphShiftActivity *activities = [[MSGraphShiftActivity alloc] init];
[activities setIsPaid: true];
[activities setStartDateTime: "2018-10-04T00:58:45.34Z"];
[activities setEndDateTime: "2018-10-04T01:58:45.34Z"];
[activities setCode:@""];
[activities setDisplayName:@"Lunch"];
[activitiesList addObject: activities];
[sharedOpenShift setActivities:activitiesList];
[openShift setSharedOpenShift:sharedOpenShift];
[openShift setDraftOpenShift: null];

NSError *error;
NSData *openShiftData = [openShift getSerializedDataWithError:&error];
[urlRequest setHTTPBody:openShiftData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/mailboxSettings"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphMailboxSettings *mailboxSettings = [[MSGraphMailboxSettings alloc] init];
MSGraphWorkingHours *workingHours = [[MSGraphWorkingHours alloc] init];
[workingHours setEndTime:@"18:30:00.0000000"];
NSMutableArray *daysOfWeekList = [[NSMutableArray alloc] init];
[daysOfWeekList addObject: @"Monday"];
[daysOfWeekList addObject: @"Tuesday"];
[daysOfWeekList addObject: @"Wednesday"];
[daysOfWeekList addObject: @"Thursday"];
[daysOfWeekList addObject: @"Friday"];
[daysOfWeekList addObject: @"Saturday"];
[workingHours setDaysOfWeek:daysOfWeekList];
MSGraphTimeZoneBase *timeZone = [[MSGraphTimeZoneBase alloc] init];
[timeZone setBias: -300];
[timeZone setName:@"Customized Time Zone"];
MSGraphStandardTimeZoneOffset *standardOffset = [[MSGraphStandardTimeZoneOffset alloc] init];
[standardOffset setTime:@"02:00:00.0000000"];
[standardOffset setDayOccurrence: 2];
[standardOffset setDayOfWeek: [MSGraphDayOfWeek sunday]];
[standardOffset setMonth: 10];
[standardOffset setYear: 0];
[timeZone setStandardOffset:standardOffset];
MSGraphDaylightTimeZoneOffset *daylightOffset = [[MSGraphDaylightTimeZoneOffset alloc] init];
[daylightOffset setDaylightBias: 100];
[daylightOffset setTime:@"02:00:00.0000000"];
[daylightOffset setDayOccurrence: 4];
[daylightOffset setDayOfWeek: [MSGraphDayOfWeek sunday]];
[daylightOffset setMonth: 5];
[daylightOffset setYear: 0];
[timeZone setDaylightOffset:daylightOffset];
[workingHours setTimeZone:timeZone];
[mailboxSettings setWorkingHours:workingHours];

NSError *error;
NSData *mailboxSettingsData = [mailboxSettings getSerializedDataWithError:&error];
[urlRequest setHTTPBody:mailboxSettingsData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
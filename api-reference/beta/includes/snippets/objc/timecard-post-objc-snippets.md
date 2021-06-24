---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/teams/871dbd5c-3a6a-4392-bfe1-042452793a50/schedule/timecards"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphTimeCard *timeCard = [[MSGraphTimeCard alloc] init];
[timeCard setOnBehalfOfUserId:@"a3601044-a1b5-438e-b742-f78d01d68a67"];
MSGraphTimeCardEvent *clockInEvent = [[MSGraphTimeCardEvent alloc] init];
[clockInEvent setDateTime: "2019-03-18T00:00:00Z"];
[clockInEvent setAtApprovedLocation: true];
MSGraphItemBody *notes = [[MSGraphItemBody alloc] init];
[notes setContent:@"Started late due to traffic in CA 237"];
[notes setContentType: [MSGraphBodyType text]];
[clockInEvent setNotes:notes];
[timeCard setClockInEvent:clockInEvent];
MSGraphItemBody *notes = [[MSGraphItemBody alloc] init];
[notes setContent:@"8 To 5 Inventory management"];
[notes setContentType: [MSGraphBodyType text]];
[timeCard setNotes:notes];
NSMutableArray *breaksList = [[NSMutableArray alloc] init];
MSGraphTimeCardBreak *breaks = [[MSGraphTimeCardBreak alloc] init];
[breaks setBreakId:@"string"];
MSGraphItemBody *notes = [[MSGraphItemBody alloc] init];
[notes setContent:@"Lunch break"];
[notes setContentType: [MSGraphBodyType text]];
[breaks setNotes:notes];
MSGraphTimeCardEvent *start = [[MSGraphTimeCardEvent alloc] init];
[start setDateTime: "2019-03-18T02:00:00Z"];
[start setAtApprovedLocation: true];
MSGraphItemBody *notes = [[MSGraphItemBody alloc] init];
[notes setContent:@"Reduced break to make up for lost time"];
[notes setContentType: [MSGraphBodyType text]];
[start setNotes:notes];
[breaks setStart:start];
[breaksList addObject: breaks];
[timeCard setBreaks:breaksList];

NSError *error;
NSData *timeCardData = [timeCard getSerializedDataWithError:&error];
[urlRequest setHTTPBody:timeCardData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
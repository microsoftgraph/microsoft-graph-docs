---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/teams/fd15cad8-80f6-484f-9666-3caf695fbf32/schedule/timeCards/TCK_3cd7413f-0337-433b-9a49-da0923185b3f"]]];
[urlRequest setHTTPMethod:@"PUT"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphTimeCard *timeCard = [[MSGraphTimeCard alloc] init];
[timeCard setUserId:@"70e47528-2fae-42b5-9d8e-ee73ccd90603"];
[timeCard setState: [MSGraphTimeCardState clockedOut]];
[timeCard setConfirmedBy: [MSGraphConfirmedBy none]];
[timeCard setNotes: null];
MSGraphTimeCardEvent *clockInEvent = [[MSGraphTimeCardEvent alloc] init];
[clockInEvent setDateTime: "2021-05-21T21:58:41.327Z"];
[clockInEvent setAtApprovedLocation: null];
MSGraphItemBody *notes = [[MSGraphItemBody alloc] init];
[notes setContentType: [MSGraphBodyType text]];
[notes setContent:@"update sample notes"];
[clockInEvent setNotes:notes];
[timeCard setClockInEvent:clockInEvent];
MSGraphTimeCardEvent *clockOutEvent = [[MSGraphTimeCardEvent alloc] init];
[clockOutEvent setDateTime: "2021-05-21T22:01:46.205Z"];
[clockOutEvent setAtApprovedLocation: null];
MSGraphItemBody *notes = [[MSGraphItemBody alloc] init];
[notes setContentType: [MSGraphBodyType text]];
[notes setContent:@"update sample notes"];
[clockOutEvent setNotes:notes];
[timeCard setClockOutEvent:clockOutEvent];
NSMutableArray *breaksList = [[NSMutableArray alloc] init];
MSGraphTimeCardBreak *breaks = [[MSGraphTimeCardBreak alloc] init];
[breaks setBreakId:@"BRK_138f4751-68b1-44c1-aca2-2b26cba9e73f"];
[breaks setNotes: null];
MSGraphTimeCardEvent *start = [[MSGraphTimeCardEvent alloc] init];
[start setDateTime: "2021-05-21T21:59:59.328Z"];
[start setAtApprovedLocation: null];
MSGraphItemBody *notes = [[MSGraphItemBody alloc] init];
[notes setContentType: [MSGraphBodyType text]];
[notes setContent:@"update sample notes"];
[start setNotes:notes];
[breaks setStart:start];
MSGraphTimeCardEvent *end = [[MSGraphTimeCardEvent alloc] init];
[end setDateTime: "2021-05-21T22:01:10.205Z"];
[end setAtApprovedLocation: null];
MSGraphItemBody *notes = [[MSGraphItemBody alloc] init];
[notes setContentType: [MSGraphBodyType text]];
[notes setContent:@"update sample notes"];
[end setNotes:notes];
[breaks setEnd:end];
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
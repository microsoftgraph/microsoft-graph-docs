---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/calendarView/delta?startdatetime=2016-12-01T00:00:00Z&enddatetime=2016-12-30T00:00:00Z"]]];
[urlRequest setHTTPMethod:@"GET"];
[urlRequest setValue:@"odata.maxpagesize=2" forHTTPHeaderField:@"Prefer"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		NSDictionary *jsonFinal = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		NSMutableArray *eventList = [[NSMutableArray alloc] init];
		eventList = [jsonFinal valueForKey:@"value"];
		MSGraphEvent *event = [[MSGraphEvent alloc] initWithDictionary:[eventList objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```
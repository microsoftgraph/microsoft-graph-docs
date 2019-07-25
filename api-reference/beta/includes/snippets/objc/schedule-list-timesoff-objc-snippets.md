---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/teams/{teamId}/schedule/timesOff?$filter=sharedTimeOff/startDateTime%20ge%202019-03-11T00:00:00.000Z%20and%20sharedTimeOff/endDateTime%20le%202019-03-18T00:00:00.000Z%20and%20draftTimeOff/startDateTime%20ge%202019-03-11T00:00:00.000Z%20and%20draftTimeOff/endDateTime%20le%202019-03-18T00:00:00.000Z"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		NSDictionary *jsonFinal = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		NSMutableArray *timeOffList = [[NSMutableArray alloc] init];
		timeOffList = [jsonFinal valueForKey:@"value"];
		MSGraphTimeOff *timeOff = [[MSGraphTimeOff alloc] initWithDictionary:[timeOffList objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```
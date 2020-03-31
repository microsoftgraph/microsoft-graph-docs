---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/onlineMeetings"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphOnlineMeeting *onlineMeeting = [[MSGraphOnlineMeeting alloc] init];
[onlineMeeting setStartDateTime: "2019-07-12T21:30:34.2444915+00:00"];
[onlineMeeting setEndDateTime: "2019-07-12T22:00:34.2464912+00:00"];
[onlineMeeting setSubject:@"User Token Meeting"];

NSError *error;
NSData *onlineMeetingData = [onlineMeeting getSerializedDataWithError:&error];
[urlRequest setHTTPBody:onlineMeetingData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
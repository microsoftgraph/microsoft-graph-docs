---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/outlook/taskfolders('AAMkADIyAAAhrbPXAAA=')/tasks"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphOutlookTask *outlookTask = [[MSGraphOutlookTask alloc] init];
[outlookTask setSubject:@"Shop for dinner"];
MSGraphDateTimeTimeZone *startDateTime = [[MSGraphDateTimeTimeZone alloc] init];
[startDateTime setDateTime: "2016-04-23T18:00:00"];
[startDateTime setTimeZone:@"Pacific Standard Time"];
[outlookTask setStartDateTime:startDateTime];
MSGraphDateTimeTimeZone *dueDateTime = [[MSGraphDateTimeTimeZone alloc] init];
[dueDateTime setDateTime: "2016-04-25T13:00:00"];
[dueDateTime setTimeZone:@"Pacific Standard Time"];
[outlookTask setDueDateTime:dueDateTime];

NSError *error;
NSData *outlookTaskData = [outlookTask getSerializedDataWithError:&error];
[urlRequest setHTTPBody:outlookTaskData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
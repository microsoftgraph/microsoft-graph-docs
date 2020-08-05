---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/print/taskDefinitions/3203656e-6069-4e10-8147-d25290b00a3c/tasks/d036638b-1272-4bba-9227-732463823ed3"]]];
[urlRequest setHTTPMethod:@"PATCH"];

MSGraphPrintTask *printTask = [[MSGraphPrintTask alloc] init];
MSGraphPrintTaskStatus *status = [[MSGraphPrintTaskStatus alloc] init];
[status setState: [MSGraphPrintTaskProcessingState completed]];
[status setDescription:@"completed"];
[printTask setStatus:status];

NSError *error;
NSData *printTaskData = [printTask getSerializedDataWithError:&error];
[urlRequest setHTTPBody:printTaskData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
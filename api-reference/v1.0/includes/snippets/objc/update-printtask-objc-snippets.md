---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/print/taskDefinitions/{taskDefinitionId}/tasks/{taskId}"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

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
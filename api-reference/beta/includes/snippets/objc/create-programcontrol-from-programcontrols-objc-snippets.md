---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/programControls"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphProgramControl *programControl = [[MSGraphProgramControl alloc] init];
[programControl setControlId:@"7e59d237-2fb0-4e5d-b7bb-d4f9f9129213"];
[programControl setControlTypeId:@"6e4f3d20-c5c3-407f-9695-8460952bcc68"];
[programControl setProgramId:@"7e59d237-2fb0-4e5d-b7bb-d4f9f9129213"];

NSError *error;
NSData *programControlData = [programControl getSerializedDataWithError:&error];
[urlRequest setHTTPBody:programControlData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```
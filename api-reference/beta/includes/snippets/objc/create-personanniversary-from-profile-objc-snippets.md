---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/profile/anniversaries"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphPersonAnnualEvent *personAnnualEvent = [[MSGraphPersonAnnualEvent alloc] init];
[personAnnualEvent setType: [MSGraphPersonAnnualEventType birthday]];
[personAnnualEvent setDate:@"1980-01-08"];

NSError *error;
NSData *personAnnualEventData = [personAnnualEvent getSerializedDataWithError:&error];
[urlRequest setHTTPBody:personAnnualEventData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```